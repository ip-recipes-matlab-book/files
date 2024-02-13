% Image segmentation using k-means clustering and the L*a*b* color model

img_1 = imread('coloredChips.png');
imshow(img_1), title("Original image")
img_1_lab = rgb2lab(img_1);
ab = img_1_lab(:,:,2:3); % a* and b* color components 
ab = im2single(ab); % imsegkmeans requires floating point in single precis.
for n_colors = 2:6
    pixel_labels = imsegkmeans(ab, n_colors); 
    pixel_labels_rgb = label2rgb(pixel_labels,'hsv');
    figure, imshow(pixel_labels,[]), title(sprintf("%d colors",n_colors))
    imwrite(pixel_labels_rgb,sprintf("result_%d_colors_lab.png", n_colors));
end