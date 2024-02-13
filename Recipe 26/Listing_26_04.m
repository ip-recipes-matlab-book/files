% RGB to CMYK color space conversion
img = imread('fabric_pp_09.png');
img = rot90(img); % rotate image 90 deg counterclockwise
imshow(img), title('Original')

c = makecform('srgb2cmyk');   % c is a structure to specify...
img_cmyk = applycform(img,c); % ...the conversion

img_cmyk_2d = img_cmyk(:,:);  % MxNx4 to row-wise MxN*4
figure, imshow(img_cmyk_2d), title('C,M,Y,K components')