% Segmentation using GrabCut
img = imread('pinkphone.png'); % Read image

% Compute superpixels of the image
number_superpixels = 500;
[label_matrix, number_labels] = superpixels(img, number_superpixels);

% Show superpixels overlaid on image
boundary_mask = boundarymask(label_matrix);
figure, imshow(imoverlay(img,boundary_mask,'yellow'))

% Specify a region of interest and create a mask image.
figure, imshow(img)

% Mode 1: interactive
% user will click and select vertices
% roi = drawpolygon("Color",'yellow'); 

% Mode 2: programmatic
% using coordinates of previously selected vertices
roi = drawpolygon('Position',[318,87; 1053,118; 1039,1828; 205,1804]);

roi_vertices = roi.Position;
roi_mask = poly2mask(roi_vertices(:,1),roi_vertices(:,2), ...
    size(label_matrix,1),size(label_matrix,2));

% Apply GrabCut to image passing superpixels and ROI mask as arguments
mask = grabcut(img,label_matrix,roi_mask);
figure, imshow(mask)

% Create and display masked image
masked_image = img;
masked_image(repmat(~mask,[1 1 3])) = 0;
figure, imshow(masked_image)

% Create and display overlay image
overlay_image = labeloverlay(img, mask, 'Colormap',[0 1 0]);
figure, imshow(overlay_image)

% Create and display overlay image
overlay_image = img;
overlay_image(~mask) = 0.2*img(~mask);
figure, imshow(overlay_image)