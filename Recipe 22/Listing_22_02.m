% Segmentation using lazy snapping
img = imread('pinkphone.png'); % Read image

% Compute superpixels of the image
number_superpixels = 300;
[label_matrix, number_labels] = superpixels(img, number_superpixels);

% Show superpixels overlaid on image
boundary_mask = boundarymask(label_matrix);
figure, imshow(imoverlay(img,boundary_mask,'yellow'))

% Specify foreground region of interest (ROI) and create foreground mask 
figure, imshow(img)

foreground_roi = drawrectangle(gca,'Position',[400 420 500 1200], ...
    'Color','g');
foreground_mask = createMask(foreground_roi,img);

% Specify 1+ background ROIs and create corresponding masks 
background_roi_1 = drawrectangle(gca,'Position',[1100 600 350 500], ...
    'Color','r'); % right side of the image
background_roi_2 = drawrectangle(gca,'Position',[10 600 100 700], ...
    'Color','r'); % left side of the image
background_roi_3 = drawrectangle(gca,'Position',[300 1800 700 150], ...
    'Color','r'); % bottom of the image

background_mask = createMask(background_roi_1,img) + ...
    createMask(background_roi_2,img) + ...
    createMask(background_roi_3,img);

% Apply lazy snapping to image passing superpixels and masks as arguments
mask = lazysnapping(img, label_matrix, foreground_mask, background_mask);
figure, imshow(mask)

% Create and display masked image
masked_image = img;
masked_image(repmat(~mask,[1 1 3])) = 0;
figure, imshow(masked_image)

% Create and display overlay image
overlay_image = labeloverlay(img, mask, 'Colormap',[0 1 0]);
figure, imshow(overlay_image)