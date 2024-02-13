% Global thresholding
img_1 = imread('coins.png');
level = graythresh(img_1);
img_2 = imbinarize(img_1,level);
montage({img_1,img_2})