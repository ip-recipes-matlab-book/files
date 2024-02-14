% Image shearing using 2D affine transformation
img_1 = imread('car2.jpg');
% Define 2D affine transform
coefficients = [1 0.5 0; 0 1 0; 0 0 1];
affine_transform_3 = affinetform2d(coefficients);
% Apply transform
img_2 = imwarp(img_1,affine_transform_3); 
% View results
imshowpair(img_1, img_2, 'montage')
sz_img_1 = size(img_1);
sz_img_2 = size(img_2);