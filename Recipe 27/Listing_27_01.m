% Color histogram equalization
img = imread('office_4.jpg');
lab = rgb2lab(img);
l = lab(:,:,1); % L* channel
l = l/100; % Values [0...100] of the L* -> [0...1]

l_g = histeq(l,256); % method (1) global histogram equalization
l_g = l_g*100; % Values [0...1] of the processed L* -> [0...100]
l_l = adapthisteq(l); % method (2) local histogram equalization
l_l = l_l*100; % Values [0...1] of the processed L* -> [0...100]

lab_g = cat(3, l_g, lab(:,:,2), lab(:,:,3));
lab_l = cat(3, l_l, lab(:,:,2), lab(:,:,3));
img_l_g = lab2rgb(lab_g);
img_l_l = lab2rgb(lab_l);
figure, montage({img, img_l_g, img_l_l})
title('in, L* global hist eq, L* local hist eq')