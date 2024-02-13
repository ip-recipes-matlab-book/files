% RGB to HSV color space conversion
% Specify in RGB: Black, Red, Yellow, Green, Cyan, Blue, Magenta, White
%    K  R  Y  G  C  B  M  W
r = [0  1  1  0  0  0  1  1];  
g = [0  0  1  1  1  0  0  1];
b = [0  0  0  0  1  1  1  1];

img_rgb = cat(3, r, g, b); % 1x8 image with the specified colors
imshow(img_rgb,'InitialMagnification','fit');

img_hsv = rgb2hsv(img_rgb); % convert image from RGB to HSV

% Build a table to inspect colors' values in RGB and HSV
values = [reshape(img_rgb,[],3) reshape(img_hsv,[],3)];
T = array2table(values);
T.Properties.VariableNames = {'R','G','B','H','S','V'};
T.Properties.RowNames = {'Black','Red','Yellow','Green',...
    'Cyan','Blue','Magenta','White'};
disp(T)