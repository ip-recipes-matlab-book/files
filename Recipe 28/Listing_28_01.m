% Grayscale image pseudocolored with "pink", "turbo" and "hot" colormaps
img = imread('AD21-0016-001_F3_P3_knife_plane_drop_v~orig.tif');
img = rot90(img,-1); % rotate image 90 deg clockwise

figure
t = tiledlayout(1,4);
nexttile, imshow(img), title('Original grayscale')
nexttile, imshow(img,pink), title('pink colormap')
nexttile, imshow(img,turbo), title('turbo colormap')
nexttile, imshow(img,hot),title('hot colormap')

imwrite(img,hot,'pseudocolored.png')