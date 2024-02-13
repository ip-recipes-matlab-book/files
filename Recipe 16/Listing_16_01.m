% Unsharp Masking
img_1 = imread('moon.tif'); % load image
img_1_um1 = imsharpen(img_1); % default parameters Radius=1, Amount=0.8
img_1_um2 = imsharpen(img_1,'Radius',2,'Amount',1.2); % Radius=2, Amount=1
figure % initialize figure
subplot(1,3,1), imshow(img_1), title('Original Image');
subplot(1,3,2), imshow(img_1_um1), title('Sharpened Image 1');
subplot(1,3,3), imshow(img_1_um2), title('Sharpened Image 2');