% Function regionprops, features of scalar type
img = imread('lego_23_c500.png');

% Objects segmentation in 4 steps:
img_g = im2gray(img); % 1) convert from color to grayscale
% 2) Gaussian sigma=2 to smooth background and internal object's details
img_g_g = imgaussfilt(img_g,2);
% 3) Global auto-threshold and 4) invert output
img_g_g_bw = ~imbinarize(img_g_g,'global');

% Compute features of scalar type (also Centroid to show labels in image)
f_t = regionprops("table",img_g_g_bw,"Centroid",...
 "Area","Circularity","ConvexArea","Eccentricity","EquivDiameter",...
 "EulerNumber","Extent","FilledArea","MajorAxisLength",...
 "MinorAxisLength","Orientation","Perimeter","Solidity");

t = tiledlayout(2,2);
nexttile, imshow(img), title('Original')
nexttile, imshow(img_g), title('Grayscale')
nexttile, imshow(img_g_g), title('Smoothed')
nexttile, imshow(img_g_g_bw), title('Segmented')
% Show the label (number) of the object on the image
hold on
for n=1:size(f_t,1) % n is the nth object
    text(f_t.Centroid(n,1),f_t.Centroid(n,2),num2str(n),'Color','red')
end
hold off

imwrite(img_g_g_bw,'lego_23_c500_bw.png') % save segmented bw image