% Auto-contrast with specified range
r_min = 100/255; r_max = 140/255; 
s_min = 5/255; s_max = 250/255;
img_1 = imread('pout.tif');
img_2 = imadjust(img_1,[r_min r_max],[s_min s_max]);
montage({img_1, img_2})