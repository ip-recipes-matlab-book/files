% Function regionprops, features of image type
img_bw = imread('lego_23_c500_bw.png');
figure, imshow(img_bw)

% Compute features of image type
f_i = regionprops("table",img_bw,"ConvexImage","FilledImage","Image");

% Show ConvexImage, FilledImage, Image
figure, t = tiledlayout(3,size(f_i,1));
t.TileSpacing = 'tight'; t.Padding = 'tight';
for n=1:size(f_i,1) % n is the nth object
    nexttile, imshow(f_i.ConvexImage{n}),title(['ConvexImage ' num2str(n)])
end
for n=1:size(f_i,1) % n is the nth object
    nexttile, imshow(f_i.FilledImage{n}),title(['FilledImage ' num2str(n)])
end
for n=1:size(f_i,1) % n is the nth object
    nexttile, imshow(f_i.Image{n}),title(['Image ' num2str(n)])
end