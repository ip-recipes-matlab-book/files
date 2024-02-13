% Laplacian filter
img_1 = imread('moon.tif'); % load image
img_1_d = im2double(img_1); % convert to double (in the range [0...1])
h_lap = fspecial('laplacian',0); % create Laplacian mask
img_1_d_lap = imfilter(img_1_d,h_lap); % filter the image
figure % initialize figure
subplot(1,2,1), imshow(img_1), title('Original Image');
subplot(1,2,2), imshow(img_1_d_lap,[]), title('Laplacian output');