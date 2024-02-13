% Otsu thresholding

img_1 = imread('rice.png');
[counts, gray_level] = imhist(img_1,16);
stem(gray_level,counts)
[T, EM] = otsuthresh(counts);
img_2 = imbinarize(img_1,T);
figure, imshow(img_2)