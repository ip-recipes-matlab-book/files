% Color low-light enhancement
img = imread ('car_3.jpg');

amount = 0.1;
%amount = 0.9;
img_lle = imlocalbrighten(img, amount);
figure, montage({img, img_lle})