% RGB to grayscale conversion using two methods
b = bar(1:3,'FaceColor','flat'); % an arbitrary bar plot with 3 bars
xticks([]), yticks([])
% [R G B] values specifying 1st,2nd,3rd bars colors as red,green,blue
b.CData(1,:) = [1 0 0]; b.CData(2,:) = [0 1 0]; b.CData(3,:) = [0 0 1];
% Store the plot as a raster image using the screen resolution
img = print('-RGBImage','-r0');

% Method 1: grayscale = (R+G+B)/3 
img_gray_1 = imlincomb(1/3,img(:,:,1),1/3,img(:,:,2),1/3,img(:,:,3));
% Method 2: grayscale = Y = 0.2989*R + 0.5870*G + 0.1140*B
img_gray_2 = rgb2gray(img);

figure, imshowpair (img_gray_1, img_gray_2, 'montage')