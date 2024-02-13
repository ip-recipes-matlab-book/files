% Image translation
img_1 = imread('car2.jpg');
img_2 = imtranslate(img_1,[400, 750],'FillValues',255,'OutputView','full');
figure, imshow(img_1), title('Original Image'), ...
    set(gca,'Visible','on');
figure, imshow(img_2), title('Full Translated Image'), ...
    set(gca,'Visible','on');
sz_img_1 = size(img_1);
sz_img_2 = size(img_2);