% Histogram matching 
img_1 = imread('pout.tif'); % Original image
ref_img = imread('coins.png'); % Reference image
matched_img = imhistmatch(img_1, ref_img);

subplot(3,2,1), imshow(img_1), title('Original Image')
subplot(3,2,2), imhist(img_1), ylim('auto'), ...
    title('Histogram of Original Image')
subplot(3,2,3), imshow(ref_img), title('Reference Image') 
subplot(3,2,4), imhist(ref_img), ylim('auto'), ...
    title(' Histogram of Reference Image')
subplot(3,2,5), imshow(matched_img), ...
    title('Histogram matched image') 
subplot(3,2,6), imhist(matched_img), ylim('auto'), ...
    title('Modified Histogram')