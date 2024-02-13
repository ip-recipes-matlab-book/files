% Piecewise-linear point transformation function

my_lut = uint8(zeros([1 256]));
my_lut(1:65) = 2*(0:64);
my_lut(66:129) = 128;
my_lut(130:256) = (130:256)-1;

plot(my_lut), axis tight, axis square

img_1 = imread('coins.png');
img_2 = intlut(img_1,my_lut);

figure, montage({img_1, img_2})