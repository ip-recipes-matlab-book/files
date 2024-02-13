% Auto-contrast
img_1 = imread('pout.tif');
img_2 = imadjust(img_1);
montage({img_1, img_2})