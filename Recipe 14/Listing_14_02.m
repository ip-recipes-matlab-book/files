% Handling non-uniform illumination
% Method 2: morphological image processing

img_1 = imread('rice.png');
se = strel('disk',15);
background = imopen(img_1,se); % estimate of background
img_3 = img_1 - background;
img_4 = imadjust(img_3);
img_5 = imbinarize(img_4);
figure, montage({img_1, background, img_3, img_5})