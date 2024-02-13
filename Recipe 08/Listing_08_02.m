% Histogram equalization using CLAHE
img_1 = imread('eight.tif');
img_1_eq = histeq(img_1,256); 
img_1_clahe_eq = adapthisteq(img_1); 
subplot(3,2,1), imshow(img_1), title('Original Image')
subplot(3,2,2), imhist(img_1), ylim('auto'), title('Original Histogram')
subplot(3,2,3), imshow(img_1_eq), title('Equalized Image') 
subplot(3,2,4), imhist(img_1_eq), ylim('auto'), ...
    title('Equalized Histogram')
subplot(3,2,5), imshow(img_1_clahe_eq), ...
    title('Equalized Image using CLAHE') 
subplot(3,2,6), imhist(img_1_clahe_eq), ylim('auto'), ...
    title('Histogram after CLAHE')