% Mophological filtering (open-close filter)
bw = imread('250x250_bw_3cb2_n.png');
se = strel('disk', 5);
bw_o = imopen(bw,se); % opening of input image
bw_o_c = imclose(bw_o,se); % closing of opened image
subplot(1,3,1), imshow(bw), title('Input')
subplot(1,3,2), imshow(bw_o), title('open(Input)')
subplot(1,3,3), imshow(bw_o_c), title('close(open(Input))')