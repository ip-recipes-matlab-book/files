% Sigmoid transformation function

x = 0:255; slope = 0.1; inflec = 127;
sigmoid_function = uint8(255./(1 + exp(-slope*(x - inflec))));
plot(sigmoid_function); xlim([0 255]); ylim([0 255]); grid on
title('Sigmoid function')

img_1 = imread('vpfig.png');
img_2 = intlut(img_1, sigmoid_function);
figure, montage({img_1, img_2})