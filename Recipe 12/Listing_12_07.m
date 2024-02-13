% Computational cost of LUT vs. naive approach

img = imread('tumor_091R.tif');

% Direct (naive) method
img_1 = double(im2gray(img));
tic
img_2 = uint8(5 * sqrt(img_1));
toc

% LUT-based method
my_lut = uint8(zeros([1 256]));
my_lut(1:256) = uint8(5 * sqrt(0:255));
img_3 = im2gray(img);

tic
img_4 = intlut(img_3, my_lut);
toc