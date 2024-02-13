% Negative transformation function

% Binary image
img_1 = imread('text.png');
img_2 = imcomplement(img_1);
montage({img_1, img_2})

% Grayscale image
img_1 = imread('cameraman.tif');
img_2 = imcomplement(img_1);
montage({img_1, img_2})

% Color image
img_1 = imread('football.jpg');
img_2 = imcomplement(img_1);
montage({img_1, img_2})