% Image conversion (PNG->JPG) at different quality settings.
img_4 = imread('peppers.png');
imwrite(img_4, 'pep75.jpg');
imwrite(img_4, 'pep05.jpg', 'quality', 5);
imwrite(img_4, 'pep95.jpg', 'quality', 95);