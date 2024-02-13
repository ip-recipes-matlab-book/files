% Find and count connected components
img_1_bw = imread ('bean_coffee_08_bw.png');
figure, imshow(img_1_bw), title('Input')
CC = bwconncomp(img_1_bw);
disp(['Number of connected components: ' num2str(CC.NumObjects)])
img_1_bw(CC.PixelIdxList{7}) = 0;
figure, imshow(img_1_bw), title('Excluding connected component 7')