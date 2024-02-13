% Image resizing (preserving the correct aspect ratio)
img_1 = imread('flamingos.jpg');
img_2 = imresize(img_1, [NaN 480]); % We want 480 columns
imshowpair(img_1, img_2, 'montage')
sz_img_1 = size(img_1); % 972-by-1296 pixels
sz_img_2 = size(img_2); % 360-by-480 pixels