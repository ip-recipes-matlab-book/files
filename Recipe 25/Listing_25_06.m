% Function regionprops, features of grayscale pixel type
img = imread('lego_23_c500.png');
img_bw = imread('lego_23_c500_bw.png');
img_g = im2gray(img);
img_bw_b = boundarymask (img_bw);
img_g_r = imoverlay(img_g,img_bw_b);

% Compute features of grayscale pixel type
f_t = regionprops("table",img_bw,img_g,...
    "MaxIntensity","MeanIntensity","MinIntensity",...
    "PixelValues","WeightedCentroid");

tiledlayout(1,2)
nexttile; imshow(img_g_r), title('Grayscale pixels')
nexttile; imshow(img_bw), title('WeightedCentroid')
% Show WeightedCentroid
hold on
for n=1:size(f_t,1) % n is the nth object
    plot(f_t.WeightedCentroid(n,1),f_t.WeightedCentroid(n,2),...
        'r+','LineWidth',1)
    text(f_t.WeightedCentroid(n,1)+10,...
        f_t.WeightedCentroid(n,2)+10,num2str(n),'Color','red')
end
hold off