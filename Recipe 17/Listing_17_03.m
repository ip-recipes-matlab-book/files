% Vignette
img_1 = im2double(imread('kobi.png'));
[r, c] = size(img_1,1,2);
sigma = 350; % standard deviation of the Gaussian
img_g = mat2gray(fspecial('gaussian',[r c],sigma));
img_1_vig = im2uint8(img_1.*img_g);
figure
subplot(1,3,1), imshow(img_1), title('Original image')
subplot(1,3,2), imshow(img_g), title('Gaussian')
subplot(1,3,3), imshow(img_1_vig), title('Vignette')