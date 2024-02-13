% Morphological Opening and Closing
bw = imread('250x250_bw_3cb.png');
h(1) = figure;
subplot(1,4,1), imshow(bw), title('Input')
h(2) = figure;
subplot(1,4,1), imshow(bw), title('Input')
p = 2;
for r = 3:5
    se = strel('disk',r); % create pre-defined structuring element
    bw_o = imopen(bw,se); % opening
    figure(h(1)), subplot(1,4,p), imshow(bw_o),...
        title(['Opening r=',num2str(r)])
    bw_c = imclose(bw,se); % closing
    figure(h(2)), subplot(1,4,p), imshow(bw_c),...
        title(['Closing r=',num2str(r)])
    p = p+1;
end