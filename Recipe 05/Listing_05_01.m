% Image resizing
img_1 = imread('flamingos.jpg');
img_2 = imresize(img_1, 0.8, "Method", "bicubic", "Antialiasing",true);
imshowpair(img_1, img_2, 'montage')
sz_img_1 = size(img_1);
sz_img_2 = size(img_2);