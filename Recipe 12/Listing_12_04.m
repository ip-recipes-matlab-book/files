% Logarithmic function

x = 0:255; c = 255 / log(256);
log_function = uint8(c * log(x + 1));
plot(log_function); xlim([0 255]); ylim([0 255]); 

img_1 = imread('moon.tif');
img_2 = intlut(img_1, log_function);
figure, montage({img_1, img_2})