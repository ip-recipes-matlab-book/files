% Morphological Dilation and Erosion
bw = imread('18x12_bw_1.png');
figure, subplot(4,1,1)
imshow(bw), title('Input')
h_bw = impixelregion; set(h_bw,'Name','Input')
nhood = [ 0 1 0   % structuring element specification
          1 1 1
          0 0 0];
se = strel('arbitrary',nhood); % create the structuring element
se_hs = floor((size(nhood)+1)/2);
subplot(4,1,2), imshow(se.Neighborhood), title('SE')
hold on, plot(se_hs(1),se_hs(2),'ko','MarkerFaceColor','k'), hold off
% Dilation
bw_d = imdilate(bw,se);
subplot(4,1,3), imshow(bw_d), title('Dilation')
h_bw_d = impixelregion; set(h_bw_d,'Name','Dilation')
% Erosion
bw_e = imerode(bw,se);
subplot(4,1,4), imshow(bw_e), title('Erosion')
h_bw_e = impixelregion; set(h_bw_e,'Name','Erosion')