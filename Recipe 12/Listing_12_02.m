% Negative point transformation function
negative_function = uint8(255:-1:0); 
plot(negative_function); xlim([0 255]); ylim([0 255]); 

img_1 = imread('moon.tif');
img_2 = intlut(img_1, negative_function);
figure, montage({img_1, img_2})

if isequal(img_2, imcomplement(img_1))
    disp("The two images are the negative of each other.")
end