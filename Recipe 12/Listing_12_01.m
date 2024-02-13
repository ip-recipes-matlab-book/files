% Identity point transformation function
identity_function = uint8(0:255);
plot(identity_function); xlim([0 255]); ylim([0 255]); 

img_1 = imread('moon.tif');
img_2 = intlut(img_1, identity_function);
figure, montage({img_1, img_2})

if isequal(img_1, img_2)
    disp("The two images are identical.")
end