/*
Compile with emcc with:
emcc -o change.js change.c  -lm -O3 -s WASM=1 -s EXPORTED_FUNCTIONS="['_change']" -s BINARYEN_IMPRECISE=1
*/
#include<stdio.h>
#include<math.h>
#include<stdbool.h>
#include<stdlib.h>
#include<string.h>


#define WIDTH 600
#define HEIGHT 480
#define MAX(a,b) ((a) > (b) ? a : b)
#define MIN(a,b) ((a) < (b) ? a : b)


int grayData[WIDTH * HEIGHT];

int getPixel(int x, int y) {
    if (x < 0 || y < 0) return 0;
    if (x >= (WIDTH) || y >= (HEIGHT)) return 0;
    return (grayData[((WIDTH * y) + x)]);
}
void sobel(unsigned char * data, int width, int height) {


    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            int goffset = ((WIDTH * y) + x) << 2; //multiply by 4
            int r = data[goffset];
            int g = data[goffset + 1];
            int b = data[goffset + 2];

            int avg = (r >> 2) + (g >> 1) + (b >> 3);
            grayData[((WIDTH * y) + x)] = avg;

            int doffset = ((WIDTH * y) + x) << 2;
            data[doffset] = avg;
            data[doffset + 1] = avg;
            data[doffset + 2] = avg;
            data[doffset + 3] = 255;

        }
    }

    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            int newX;
            int newY;
            if ((x <= 0 || x >= width - 1) || (y <= 0 || y >= height - 1)) {
                newX = 0;
                newY = 0;
            } else {
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
            }
            int mag = sqrt((newX * newX) + (newY * newY));
            if (mag > 255) mag = 255;
            int offset = ((WIDTH * y) + x) << 2; //multiply by 4
            data[offset] = 255 - mag;
            data[offset + 1] = 255 - mag;
            data[offset + 2] = 255 - mag;
            data[offset + 3] = 255;



        }
    }
}


void change(unsigned char * data, int cols, int rows) {
    sobel(data, cols, rows);

}










