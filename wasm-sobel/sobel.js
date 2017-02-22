var vid;
var can;
var wid;
var hei;
var out;
var grey;
var lastjs = 0;
var lastwasm = 0;
var jst;
var wasmt;

(function() {
    var dst = null;
    window.addEventListener('DOMContentLoaded', function() {
        var isStreaming = false;
        vid = document.getElementById('vid');
        can = document.getElementById('mycanvas');
        grey = document.getElementById('grey');
        out = document.getElementById('updatetime');
        con = can.getContext('2d');
        wid = 600;
        hei = 480;
        jsrender = false;
        var constraints = {
            audio: false,
            video: {
                width: wid,
                height: hei
            }
        };
        navigator.mediaDevices.getUserMedia(constraints)
            .then(function(mediaStream) {
                var vid = document.querySelector('video');
                vid.srcObject = mediaStream;
                vid.onloadedmetadata = function(e) {
                    vid.play();
                };
            })
            .catch(function(err) {
                console.log(err.message);
            });
        // Wait until the video stream can play
        vid.addEventListener('canplay', function(e) {
            if (!isStreaming) {
                // videoWidth isn't always set correctly in all browsers
                if (vid.videoWidth > 0) hei = vid.videoHeight / (vid.videoWidth / wid);
                can.setAttribute('width', wid);
                can.setAttribute('height', hei);
                // Reverse the canvas image
                con.translate(wid, 0);
                con.scale(-1, 1);
                isStreaming = true;
            }
        }, false);

        // Wait for the video to start to play
        vid.addEventListener('play', function() {
            //Setup image memory
            var id = con.getImageData(0, 0, can.width, can.height);
            var d = id.data;
            dst = _malloc(d.length);
            //console.log("What " + d.length);


            jst = new TimeSeries();
            wasmt = new TimeSeries();

            var smoothie = new SmoothieChart({
                grid: {
                    strokeStyle: 'rgb(125, 0, 0)',
                    fillStyle: 'rgb(60, 0, 0)',
                    lineWidth: 1,
                    millisPerLine: 250,
                    verticalSections: 6
                }
            });
            smoothie.addTimeSeries(jst, {
                strokeStyle: 'rgb(0, 255, 0)',
                fillStyle: 'rgba(0, 255, 0, 0.4)',
                lineWidth: 3
            });
            smoothie.addTimeSeries(wasmt, {
                strokeStyle: 'rgb(255, 0, 255)',
                fillStyle: 'rgba(255, 0, 255, 0.3)',
                lineWidth: 3
            });

            smoothie.streamTo(document.getElementById("chart"), 1000);




            sFilter();
            // When the grey button is clicked, toggle the greyness indicator
            grey.addEventListener('click', function() {
                jsrender = !jsrender;
                grey.firstChild.data = grey.firstChild.data == "Toggle JavaScript" ? "Toggle WASM" : "Toggle JavaScript";
            }, false);

        });

    });

    function updateChart(jstime, wasmtime) {

        if (jstime > 0) {
            jst.append(new Date().getTime(), jstime);
            lastjs = jstime;
        } else {
            jst.append(new Date().getTime(), lastjs);
        }
        if (wasmtime > 0) {
            wasmt.append(new Date().getTime(), wasmtime);
            lastwasm = wasmtime;
        } else {
            wasmt.append(new Date().getTime(), lastwasm);
        }


    }



    //Request Animation Frame function
    var sFilter = function() {
        if (vid.paused || vid.ended) return;
        var t0 = performance.now();
        var t1;
        con.fillRect(0, 0, wid, hei);
        con.drawImage(vid, 0, 0, wid, hei);
        var imageData = con.getImageData(0, 0, can.width, can.height);
        var data = imageData.data;
        //do it in JS
        if (jsrender) {
            var ids = nSobel(imageData);
            t1 = performance.now();
            imageData.data.set(ids);
            con.putImageData(imageData, 0, 0);
            //do it in WASM    
        } else {
            HEAPU8.set(data, dst);
            var result = Module.ccall('change', // name of C function
                null, // return type
                ['number', 'number', 'number'], // argument types
                [dst, wid, hei]); // arguments				
						t1 = performance.now();
            var result = HEAPU8.subarray(dst, dst + data.length);
            imageData.data.set(result);
            con.putImageData(imageData, 0, 0);
        }

        out.value = (t1 - t0).toFixed(2);
        if (jsrender) {
            updateChart((t1 - t0).toFixed(2), 0);
        } else {
            updateChart(0, (t1 - t0).toFixed(2));
        }
        window.requestAnimationFrame(sFilter);
    }
    var nSobel = function(imageData) {
        var width = imageData.width;
        var height = imageData.height;
        var grayData = new Int32Array(wid * hei);

        function getPixel(x, y) {
            if (x < 0 || y < 0) return 0;
            if (x >= (wid) || y >= (hei)) return 0;
            return (grayData[((wid * y) + x)]);
        }
        var data = imageData.data;
        //Grayscale
        for (var y = 0; y < height; y++) {
            for (var x = 0; x < width; x++) {
                var goffset = ((wid * y) + x) << 2; //multiply by 4
                var r = data[goffset];
                var g = data[goffset + 1];
                var b = data[goffset + 2];
                var avg = (r >> 2) + (g >> 1) + (b >> 3);
                grayData[((wid * y) + x)] = avg;
                var doffset = ((wid * y) + x) << 2;
                data[doffset] = avg;
                data[doffset + 1] = avg;
                data[doffset + 2] = avg;
                data[doffset + 3] = 255;

            }
        }
        //Sobel
        for (var y = 0; y < height; y++) {
            for (var x = 0; x < width; x++) {

                var newX;
                var newY;
                if ((x >= width - 1) || (y >= height - 1)) {
                    newX = 0;
                    newY = 0;
                } else {
                    //sobel Filter use surrounding pixels and matrix multiply by sobel       
                    newX = (
                        (-1 * getPixel(x - 1, y - 1)) +
                        (getPixel(x + 1, y - 1)) +
                        (-1 * (getPixel(x - 1, y) << 1)) +
                        (getPixel(x + 1, y) << 1) +
                        (-1 * getPixel(x - 1, y + 1)) +
                        (getPixel(x + 1, y + 1))
                    );
                    newY = (
                        (-1 * getPixel(x - 1, y - 1)) +
                        (-1 * (getPixel(x, y - 1) << 1)) +
                        (-1 * getPixel(x + 1, y - 1)) +
                        (getPixel(x - 1, y + 1)) +
                        (getPixel(x, y + 1) << 1) +
                        (getPixel(x + 1, y + 1))
                    );
                    var mag = Math.floor(Math.sqrt((newX * newX) + (newY * newY)) >>> 0);
                    if (mag > 255) mag = 255;
                    data[((wid * y) + x) * 4] = mag;
                    data[((wid * y) + x) * 4 + 1] = mag;
                    data[((wid * y) + x) * 4 + 2] = mag;
                    data[((wid * y) + x) * 4 + 3] = 255;
                }
            }
        }
        return data; //sobelData;
    }
})();