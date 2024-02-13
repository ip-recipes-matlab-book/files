% Combining several 2D affine transformations 
img_1 = imread('football.jpg');
% Define 2D affine transform
affine_transform_4 = randomAffine2d('Scale',[1.8 1.8], ...
    'XShear',[10 10], 'YShear', [15 15], ...
    'Rotation',[90 90]);
% Apply transform
img_2 = imwarp(img_1,affine_transform_4); 
% View results
imshowpair(img_1, img_2, 'montage')
sz_img_1 = size(img_1);
sz_img_2 = size(img_2);