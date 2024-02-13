% Nonuniform averaging filter
img_1 = imread('football.jpg'); % load image
h_non = (1/16).*[1 2 1; 2 4 2; 1 2 1]; % 3 by 3 nonuniform averaging mask
img_1_non = imfilter(img_1,h_non); % filter the image
figure % initialize figure 
subplot(1,2,1), imshow(img_1), title('Original Image');
subplot(1,2,2), imshow(img_1_non), title('Smoothed Image');