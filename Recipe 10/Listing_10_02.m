% Color quantization and dominant colors
img = imread('flamingos.jpg');
% img = imread('lighthouse.png');
figure, imshow(img)

n = 8;
[img_q,cmap_q] = rgb2ind(img,n,'nodither');
figure, imshow(img_q,cmap_q)

hx_q = imhist(img_q,cmap_q);
[hx_qs,idx] = sort(hx_q,'descend');
cmap_qs = cmap_q(idx,:);
figure, b = bar(hx_qs,'FaceColor','flat');
b.CData = cmap_qs;
if n == 1
    xticks(1), xticklabels(0)
else
    xticks([1 n]), xticklabels([0 n-1])
end