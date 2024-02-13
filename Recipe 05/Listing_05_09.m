% Image cropping (interactive)
img_1 = imread('coloredChips.png');
sz_img_1 = size(img_1);
[img_2, rect] = imcrop(img_1); %interactive cropping
imwrite(img_2,'cropped_image.png');
imshowpair(img_1, img_2, 'montage')
sz_img_2 = size(img_2);