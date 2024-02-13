% Adaptive thresholding

img_1 = imread('rice.png');
sensitivity = 0.4;
img_2 = adaptthresh(img_1, sensitivity);
img_3 = imbinarize(img_1,img_2);
imshowpair(img_1, img_3, 'montage')