% Image rotation using 2D affine transformation
img_1 = imread('car1.jpg');
sz_img_1 = size(img_1);
rotation_angle = 35; % in degrees
sin_ra = sind(rotation_angle); 
cos_ra = cosd(rotation_angle);
affine_transform_2 = affinetform2d([cos_ra sin_ra 0; -sin_ra cos_ra 0; 0 0 1]);
img_2 = imwarp(img_1,affine_transform_2); 
imshowpair(img_1, img_2, 'montage')
sz_img_2 = size(img_2);