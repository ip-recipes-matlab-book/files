% Image segmentation using k-means clustering
% First attempt
img_1 = imread('rug.png');
% Attempt to segment the image into two regions -- foreground (box) 
% and background -- using k-means clustering.
labels = imsegkmeans(img_1,2);
labeled_image = labeloverlay(img_1,labels);
montage({img_1, labeled_image})