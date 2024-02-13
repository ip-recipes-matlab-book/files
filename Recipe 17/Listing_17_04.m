% Posterization 
img_1 = imread('lighthouse.png');

n = 8; % number of colors
[X_q,cmap_q] = rgb2ind(img_1,n,'nodither');
img_1_q = ind2rgb(X_q,cmap_q);

s = 7; % size of the median filter
img_1_q_m(:,:,1) = medfilt2(img_1_q(:,:,1),[s s]);
img_1_q_m(:,:,2) = medfilt2(img_1_q(:,:,2),[s s]);
img_1_q_m(:,:,3) = medfilt2(img_1_q(:,:,3),[s s]);

bw = boundarymask(img_1_q_m(:,:,1)); 
img_1_q_m_artpos = imoverlay(img_1_q_m,bw,'black'); 

figure
subplot(1,4,1), imshow(img_1), title('Original image')
subplot(1,4,2), imshow(img_1_q), title('Color quantized image')
subplot(1,4,3), imshow(img_1_q_m), title('Median')
subplot(1,4,4), imshow(img_1_q_m_artpos), title('Artistic posterization')