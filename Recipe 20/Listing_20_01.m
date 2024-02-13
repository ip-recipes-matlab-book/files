% Image segmentation using k-means clustering

img_1 = imread('coloredChips.png');
imshow(img_1), title("Original image")
for n_colors = 2:6
    pixel_labels = imsegkmeans(img_1,n_colors); 
    pixel_labels_rgb = label2rgb(pixel_labels,'hsv');
    figure, imshow(pixel_labels,[]),title(sprintf("%d colors",n_colors))
    imwrite(pixel_labels_rgb,sprintf("result_%d_colors.png", n_colors));
end