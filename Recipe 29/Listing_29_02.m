%Processing large images in a blockwise fashion
%% Part 1 (Negative)
negative_img = apply(tumor_image, @(bs)imcomplement(bs.Data));
figure, bigimageshow(negative_img)

%% Part 2 (Edge detection)
edge_img = apply(tumor_image, @(bs)~edge(im2gray(bs.Data)));
figure, bigimageshow(edge_img) % undesirable blockiness effect

% Solving the blockiness problem
im_low_res = gather(tumor_image); % collect blocks from the coarsest level
[~, thresh] = edge(im2gray(im_low_res)); % learn threshold
edge_im_low_res = edge(im2gray(im_low_res),thresh); % test on coarse level
figure, imshow(edge_im_low_res)
% Validate on the largest image
edge_img_2 = apply(tumor_image,@(bs)~edge(im2gray(bs.Data),thresh));
% Visualize the result at the finest level
figure, bigimageshow(edge_img_2);