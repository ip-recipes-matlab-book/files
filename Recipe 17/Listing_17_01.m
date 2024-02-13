% Emboss
img_1 = imread('lighthouse.png'); % load image
h_emb = [-2 -1 0; -1 1 1; 0 1 2]; % create emboss mask
img_1_emb = imfilter(img_1,h_emb);% filter the image
figure % initialize figure
subplot(1,2,1), imshow(img_1), title('Original image')
subplot(1,2,2), imshow(img_1_emb), title('Emboss')