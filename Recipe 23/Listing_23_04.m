% Clear borders
img_1_bw = imread ('bean_coffee_08_bw.png');
CC = bwconncomp(img_1_bw);
figure, imshow(img_1_bw), title('Original')

img_1_bw_p = img_1_bw(100:400,100:400);
CCp = bwconncomp(img_1_bw_p);
figure, imshow(img_1_bw_p), title('Central patch')
img_1_bw_pc = imclearborder(img_1_bw_p);
figure, imshow(img_1_bw_pc), title('Central patch borders cleared')
CCpc = bwconncomp(img_1_bw_pc);

disp(['Number of con. comp. Original: ' num2str(CC.NumObjects)])
disp(['Number of con. comp. Central patch: ' num2str(CCp.NumObjects)])
disp(['Number of con. comp. Central patch borders cleared: '...
    num2str(CCpc.NumObjects)])