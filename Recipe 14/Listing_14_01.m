% Handling non-uniform illumination
% Method 1: adaptive thresholding

img_1 = imread('printedtext.png');
img_2 = adaptthresh(img_1,0.4,'ForegroundPolarity','dark');
img_3 = imbinarize(img_1,img_2);
figure, montage({img_1, img_2,img_3})