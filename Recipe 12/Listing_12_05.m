% Inverse log function

x = 0:255; c = 255 / log(256);
inverse_log_function = uint8(exp(x/c) - 1); 
plot(inverse_log_function); xlim([0 255]); ylim([0 255]); 

img_1 = imread('moon.tif');
img_2 = intlut(img_1, log_function);
img_3 = intlut(img_2, inverse_log_function);
figure, montage({img_1, img_2, img_3})

img_diff = imabsdiff(img_1, img_3);

figure, imshow(img_diff,[])
num_non_zero_pixels = nnz(img_diff);
total_num_pixels = numel(img_diff);
percent_non_zero_pixels = 100 * num_non_zero_pixels/total_num_pixels;
brightest_pixel_value = max(img_diff(:));

sprintf("There are %d non-zero pixels in the final image" + ...
    " (corresponding to %.1f percent of the total image)", ...
    num_non_zero_pixels, percent_non_zero_pixels)

sprintf("The brightest pixels in the final image have a gray value " + ...
    "of %d (in a [0..255] range)", brightest_pixel_value)