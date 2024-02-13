% Histograms of individual color channels of RGB images
img = imread('lighthouse.png');
%img = imread('fabric.png');

img_r = img(:,:,1); img_g = img(:,:,2); img_b = img(:,:,3);
hist_r = imhist(img_r); hist_g = imhist(img_g); hist_b = imhist(img_b);
count_max = max([hist_r; hist_g; img_bh]);

figure
t = tiledlayout(3,3);
t.TileSpacing = 'tight'; t.Padding = 'compact';

nexttile([3 1]), imshow(img)
nexttile, imshow(img_r)
nexttile, stem(0:255,hist_r,'Marker','none','Color','r','LineWidth',1)
set(gca,'ylim',[0 count_max],'xlim',[0 255],'xticklabels',[])
nexttile, imshow(img_g)
nexttile, stem(0:255,hist_g,'Marker','none','Color','g','LineWidth',1)
set(gca,'ylim',[0 count_max],'xlim',[0 255],'xticklabels',[])
nexttile, imshow(img_b)
nexttile, stem(0:255,hist_b,'Marker','none','Color','b','LineWidth',1)
set(gca,'ylim',[0 count_max],'xlim',[0 255])