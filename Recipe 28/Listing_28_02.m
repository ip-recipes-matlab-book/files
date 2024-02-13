% Generate synthetic grayscale image to further apply pseudocolors
img = zeros(407, 407); % a 407x407 image
img(103,103) = 1; img(307,307) = 1; % two nonzero pixels
% Distance transform: for every p, Euclid. dist. to nearest nonzero pixel
img_d = bwdist(img); 
img_d_r = mat2gray(img_d); % rescale min->0, max->1
img_d_r_c = 1 - img_d_r; % complement (photographic negative)

% Atenuate 15% of left "elevation"
t = rot90(triu(ones(407,407)))*0.85;
t(~t) = 1;
img_d_r_c_a = img_d_r_c.*t; 
img_d_r_c_a_u = im2uint8(img_d_r_c_a); % double [0...1] to uint8 [0...255]

% Show grayscale's equal and unequal peaks 
figure
tiledlayout(1,4);
nexttile, imshow(img_d_r_c), title('Equal peaks')
nexttile, improfile(img_d_r_c,[1 407],[1 407]); title('Diag. profile')
ylim([0 1]), yticks([0 1]),
nexttile, imshow(img_d_r_c_a_u), title('Left peak 15% attenuation')
nexttile, improfile(img_d_r_c_a_u,[1 407],[1 407]); title('Diag. profile')
ylim([0 255]), yticks([0 217 255]),

imwrite(img_d_r_c_a_u,'synthPeaks2_gray_uneven.png')