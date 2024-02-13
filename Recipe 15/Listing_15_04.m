% Gaussian filter
img_1 = imread('football.jpg'); % load image
% Filter the image with a Gaussian of sigma = 0.5
img_1_gauss = imgaussfilt(img_1,0.5);
figure; % initialize figure 
subplot(1,2,1), imshow(img_1), title('Original Image');
subplot(1,2,2), imshow(img_1_gauss), title('Smoothed Image');