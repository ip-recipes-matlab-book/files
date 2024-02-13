% Image scaling using 2D affine transformation
img_1 = imread('flamingos.jpg');
sz_img_1 = size(img_1);
affine_transform_1 = affinetform2d([.8 0 0; 0 .8 0; 0 0 1]);
img_2 = imwarp(img_1,affine_transform_1); 
imshowpair(img_1, img_2, 'montage')
sz_img_2 = size(img_2);