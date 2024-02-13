% Image rotation
img_1 = imread('car1.jpg');
img_2 = imrotate(img_1, 35, "bicubic");
imshowpair(img_1, img_2, 'montage')
sz_img_1 = size(img_1);
sz_img_2 = size(img_2);