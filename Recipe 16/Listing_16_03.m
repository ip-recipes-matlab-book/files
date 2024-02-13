% Sharpening using a Laplacian mask
img_1 = im2double(imread('moon.tif'));
h_lap = fspecial('laplacian',0); % create Laplacian mask
img_1_lap = imfilter(img_1,h_lap); % filter the image
img_1_sha1 = img_1 - img_1_lap; % original-Laplacian, a=1.0
img_1_sha2 = img_1 - 1.5.*img_1_lap; % original-Laplacian, a=1.5
img_1_sha1 = im2uint8(img_1_sha1); % convert to uint8 (truncate)
img_1_sha2 = im2uint8(img_1_sha2); % convert to uint8 (truncate)
figure % initialize figure
subplot(1,3,1), imshow(img_1), title('Original Image');
subplot(1,3,2), imshow(img_1_sha1), title('Sharpened Image, a=1.0');
subplot(1,3,3), imshow(img_1_sha2), title('Sharpened Image, a=1.5');