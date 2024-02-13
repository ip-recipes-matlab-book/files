% Function regionprops, features of coordinate type
img = imread('lego_23_c500_bw.png');

% Compute features of coordinate type
f_t = regionprops("table",img,"Centroid",...
"BoundingBox","ConvexHull","Extrema");

tiledlayout(2,2)
ax1 = nexttile; imshow(img), title('Centroid')
ax2 = nexttile; imshow(img), title('BoundingBox')
ax3 = nexttile; imshow(img), title('ConvexHull')
ax4 = nexttile; imshow(img), title('Extrema')
% Show Centroid, BoundingBox, ConvexHull, Extrema
hold(ax1,'on'), hold(ax2,'on'), hold(ax3,'on'), hold(ax4,'on')
for n=1:size(f_t,1) % n is the nth object
    plot(ax1,f_t.Centroid(n,1),f_t.Centroid(n,2),...
        'r+','LineWidth',1)
    rectangle(ax2,'Position',f_t.BoundingBox(n,:),...
        'EdgeColor','r','LineWidth',1);
    line(ax3,f_t.ConvexHull{n}(:,1),f_t.ConvexHull{n}(:,2),...
        'Color','r','LineWidth',1);
    plot(ax4,f_t.Extrema{n}(:,1),f_t.Extrema{n}(:,2),...
        'r+','LineWidth',1)
end
hold(ax1,'off'), hold(ax2,'off'), hold(ax3,'off'), hold(ax4,'off')