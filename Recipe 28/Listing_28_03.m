% Pseudocoloring with 256 colors and "intensity slicing" with 10 partitions 
img = imread('synthPeaks2_gray_uneven.png');

s = 10; % number of slices for the "intensity slicing"
img_s = grayslice(img, s); % multithreshold and remap

figure
tiledlayout(1,3);
nexttile, imshow(img), title('Grayscale')
nexttile, imshow(img, jet); title('Pseudoc. 256 colors')
nexttile, imshow(img_s, jet(s)); title('Pseudoc. s colors')
colorbar

imwrite(img_s,jet(s),'pseudocolored_slices.png')