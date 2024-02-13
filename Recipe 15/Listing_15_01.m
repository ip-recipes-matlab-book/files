% Mean filter
img_1 = imread('football.jpg'); % load image
h_ave = fspecial('average',3); % create mean mask of size 3 by 3
img_1_ave = imfilter(img_1,h_ave); % filter the image
figure % initialize figure
subplot(1,2,1), imshow(img_1), title('Original Image');
subplot(1,2,2), imshow(img_1_ave), title('Smoothed Image');