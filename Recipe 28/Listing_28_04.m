% Pseudocoloring with a users' created colormap
img = imread('synthPeaks2_gray_uneven.png');

r = linspace(0,1,256).^4;    % function for the R component of the colormap
g = linspace(0,1,256).^0.35; % function for the G component of the colormap 
b = linspace(0,1,256).^0.3;  % function for the B component of the colormap 
cm = [r' g' b']; % assembly into colormap's format

s = 10; % number of slices for the "intensity slicing"
img_s = grayslice(img, s); % multithreshold and remap
idx = round(linspace(1,256,s)); % s equidistant indices to downsample cm
cm_s = cm(idx,:); % downsample cm from 256 to s colors

% Show R,G,B of the colormaps and the respective pseudocolored images
figure
tiledlayout(1,4);
nexttile, rgbplot(cm)
xlim([1 256]), title('R,G,B of the 256 colors colormap')
nexttile, imshow(img, cm), title('Pseudoc. 256 colors')
nexttile, rgbplot(cm_s)
xlim([1 s]), title('R,G,B of the 10 colors colormap')
nexttile, imshow(img_s, cm_s), title('Pseudoc. 10 colors')
colorbar

imwrite(img_s,cm_s,'pseudocolored_slices_custom_cm.png')