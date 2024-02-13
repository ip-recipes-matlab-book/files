% Color HSV S manipulation
img = imread ('peacock.jpg');
[n_r, n_c] = size(img, 1, 2);
n_t = n_r*n_c; % Total number of pixels

hsv = rgb2hsv(img);
s = hsv(:,:,2); 

gain = 1.7;
offset = 0.4;

s_g = s*gain;   % Multiplicative gain
s_g_L = s_g > 1;
s_g_L_p = sum(s_g_L(:))/n_t % Proportion of pixels with S>1 after gain
s_o = s+offset; % Additive offset
s_o_L = s_o>1;
s_o_L_p = sum(s_o_L(:))/n_t % Proportion of pixels with S>1 after offset

hsv_s_g = cat(3, hsv(:,:,1), s_g, hsv(:,:,3));
hsv_s_o = cat(3, hsv(:,:,1), s_o, hsv(:,:,3));
img_s_g = hsv2rgb(hsv_s_g);
img_s_o = hsv2rgb(hsv_s_o);
figure, montage({img, img_s_g, img_s_o});
title('in, S*gain, S+offset')