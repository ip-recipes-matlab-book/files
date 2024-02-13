% Histograms with different numbers of bins
img_1 = imread('circuit.tif');
figure
subplot(3,1,1), imhist(img_1,256), title('Histogram with 256 bins')
subplot(3,1,2), imhist(img_1,64), title('Histogram with 64 bins')
subplot(3,1,3), imhist(img_1,16), title('Histogram with 16 bins')