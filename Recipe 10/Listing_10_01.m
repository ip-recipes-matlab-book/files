% Visualization of the colors in different color spaces
img_2 = imread('lighthouse.png');
figure, imshow(img_2)
colorcloud(img_2)
colorcloud(img_2,'hsv')