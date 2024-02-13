% Segmentation using global thresholding 
img_1 = imread ('bean_coffee_08.png');
figure, imshow(img_1), title('Input')
img_1_g = rgb2gray(img_1);
level = graythresh(img_1_g);
img_1_bw = imbinarize(img_1_g, level);
figure, montage ({img_1_g, img_1_bw}), title('Grayscale, binary')
img_1_bw = ~img_1_bw;
figure, imshow(img_1_bw), title('Connected components')
imwrite(img_1_bw, 'bean_coffee_08_bw.png') %save 1 bit per pixel image