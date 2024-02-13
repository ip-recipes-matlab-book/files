% Histogram of the luminance component of a color image
img_1 = imread('office_5.jpg');
img_2 = imread('office_6.jpg');

img_1_yiq  = rgb2ntsc(img_1); img_2_yiq = rgb2ntsc(img_2);
img_1_y = im2uint8(img_1_yiq(:,:,1)); img_2_y = im2uint8(img_2_yiq(:,:,1));

figure
subplot(2,3,1), imshow(img_1), title('Image 1')
subplot(2,3,2), imshow(img_1_y), title('Y')
subplot(2,3,3), imhist(img_1_y), axis tight
subplot(2,3,4), imshow(img_2), title('Image 2')
subplot(2,3,5), imshow(img_2_y), title('Y')
subplot(2,3,6), imhist(img_2_y), axis tight