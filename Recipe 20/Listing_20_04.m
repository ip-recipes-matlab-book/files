% Image segmentation using k-means clustering with
% texture and spatial information
img_1 = imread('rug.png');
% Resize the image
img_1 = imresize(img_1,0.5);
% Convert the image to grayscale.
img_1_gray = im2gray(im2single(img_1));

%---------------------------
% Supplement the image with information about the texture in the 
% neighborhood of each pixel. To obtain the texture information, filter a 
% grayscale version of the image with a set of 24 Gabor filters, covering 
% 6 wavelengths and 4 orientations.
wavelength = 2.^(0:5) * 3;
orientation = 0:45:135;
g = gabor(wavelength,orientation);
% Filter the grayscale image using the Gabor filters. 
gabor_mag = imgaborfilt(img_1_gray,g);
% Smooth each filtered image to remove local variations. 
for i = 1:length(g)
    sigma = 0.65*g(i).Wavelength;
    gabor_mag(:,:,i) = imgaussfilt(gabor_mag(:,:,i),3.5*sigma); 
end

%---------------------------
% Supplement the information about each pixel with spatial location 
% information. This additional information allows the k-means clustering 
% algorithm to prefer groupings that are close together spatially.
% Get the x and y coordinates of all pixels in the input image.
n_rows = size(img_1,1);
n_cols = size(img_1,2);
[x,y] = meshgrid(1:n_cols,1:n_rows);

%---------------------------
% Concatenate intensity, texture, and spatial information about each pixel.
featureSet = cat(3,img_1_gray,gabor_mag,x,y);
% Segment the image into two regions using k-means clustering with 
% the supplemented feature set.
labels = imsegkmeans(featureSet,2,'NormalizeInput',true);
labeled_image = labeloverlay(img_1,labels);
imshow(labeled_image)
title('Labeled Image with Additional Pixel Information')

montage({img_1, labeled_image})