% Color specification in HSV
% Specify in HSV: Orange, Pink, Brown
%     O     P    Br
h = [1/12   0   1/12];  
s = [ 1    0.5    1 ];
v = [ 1     1    0.5];

img_hsv = cat(3, h, s, v); % 1x3 image with the specified colors
img_rgb = hsv2rgb(img_hsv); % convert from HSV to RGB
imshow(img_rgb,'InitialMagnification','fit');