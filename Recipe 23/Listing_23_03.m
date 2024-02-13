% Label connnected components
img_1_bw = imread ('bean_coffee_08_bw.png');
figure, imshow(img_1_bw), title('Input')
CC = bwconncomp(img_1_bw);
disp(['Number of connected components: ' num2str(CC.NumObjects)])
img_1_bw_L = labelmatrix(CC);
figure, h = imshow(img_1_bw_L, []); title('Labeled connected comp.')
img_1_bw_L_rgb = label2rgb(img_1_bw_L);
figure, imshow(img_1_bw_L_rgb), title('Labeled connected comp. pseudoc.')