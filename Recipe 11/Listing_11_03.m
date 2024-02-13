% Auto-contrast for color image
img_1 = imread('football.jpg');
img_2 = imadjust(img_1,[.2 .3 0; .6 .7 1],[]);
montage({img_1, img_2})