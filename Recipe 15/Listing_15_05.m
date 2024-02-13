% Median filter gray
img_1 = imread('pout.tif'); % load image
img_1_n = imnoise(img_1,'salt & pepper'); % add noise to image
% Filter the image with a median filter of size 3 x 3
img_1_n_med = medfilt2(img_1_n,[3 3]);
figure % initialize figure
subplot(1,3,1), imshow(img_1), title('Original Image')
subplot(1,3,2), imshow(img_1_n), title('Noisy Image')
subplot(1,3,3), imshow(img_1_n_med), title('Filtered Image')