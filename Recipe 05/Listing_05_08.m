% Image cropping (programmatic)
img_1 = imread('coloredChips.png');
sz_img_1 = size(img_1);
rect = [10 200 100 180];
img_2 = imcrop(img_1, rect); 
imshowpair(img_1, img_2, 'montage')
sz_img_2 = size(img_2);