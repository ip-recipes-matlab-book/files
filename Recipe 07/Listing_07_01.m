% Histograms - grayscale images
img_1 = imread('circuit.tif');
figure
subplot(2,1,1), imshow(img_1), title('Image')
subplot(2,1,2), imhist(img_1,256), title('Histogram')