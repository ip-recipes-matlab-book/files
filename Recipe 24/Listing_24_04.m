% Other morphological techniques
bw = imread('250x250_bw_3cb.png');
subplot(2,4,1), imshow(bw), title('Original');
bw_f = imfill(bw,'holes'); % holes filling
subplot(2,4,2), imshow(bw_f), title('Filled');
bw_f_s = bwmorph(bw_f,'skel',Inf); % skeletonization
subplot(2,4,6), imshow(bw_f_s), title('Skeleton of Filled');
bw_f_t = bwmorph(bw_f,'thicken',5); % thickening
subplot(2,4,7), imshow(bw_f_t), title('Thickening of Filled');
bw_f_p = bwperim(bw_f); % perimeter extracting
subplot(2,4,8), imshow(bw_f_p), title('Perimeter of Filled');