% Histogram equalization
img_1 = imread('pout.tif');
img_1_eq = histeq(img_1,256); 
figure
subplot(2,2,1), imshow(img_1), title('Original Image')
subplot(2,2,2), imhist(img_1), ylim('auto'), title('Original Histogram')
subplot(2,2,3), imshow(img_1_eq), title('Equalized Image') 
subplot(2,2,4), imhist(img_1_eq), ylim('auto'), title('Equalized Histogram')