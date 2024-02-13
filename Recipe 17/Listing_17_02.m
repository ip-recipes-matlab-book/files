% Sepia
img_1 = imread('lighthouse.png');
[img_1_r,img_1_g,img_1_b] = imsplit(im2double(img_1));
img_1_r_sep = im2uint8(0.393*img_1_r + 0.769*img_1_g + 0.189*img_1_b);
img_1_g_sep = im2uint8(0.349*img_1_r + 0.686*img_1_g + 0.168*img_1_b);
img_1_b_sep = im2uint8(0.272*img_1_r + 0.534*img_1_g + 0.131*img_1_b);
img_1_sep = cat(3, img_1_r_sep, img_1_g_sep, img_1_b_sep);
figure
subplot(1,2,1), imshow(img_1), title('Original image')
subplot(1,2,2), imshow(img_1_sep), title('Sepia')