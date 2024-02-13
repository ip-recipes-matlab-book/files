% Histograms using stem
img_1 = imread('coins.png');

[pixel_counts, gray_levels] = imhist(img_1,256);
pixel_percentages = pixel_counts / numel(img_1);
[max_percent, idx_max_percent] = max(pixel_percentages);

fprintf(['The tallest peak (at gray level %d) corresponds to %.2f %%' ...
    ' of the pixels in the image \n'], idx_max_percent-1, 100*max_percent);
fprintf('Pixel percentages add up to %f', sum(pixel_percentages));

figure
t = tiledlayout(2,1);
t.TileSpacing = 'tight'; t.Padding = 'compact';
nexttile, imshow(img_1), title('Image')
nexttile, stem(0:255, pixel_percentages, 'Marker','none', ...
    'Color','#CC33BB', 'LineWidth',1) 
set(gca,'ylim',[0 max_percent],'xlim',[0 255]), title('Histogram')