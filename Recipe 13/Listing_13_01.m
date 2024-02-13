% Gamma correction

% Grayscale image
img_1 = imread('pout.tif');
imshow(img_1), title("Original image")
for gamma = 0.5:0.5:1.5
    img_2 = imadjust(img_1, [], [], gamma);
    figure, imshow(img_2), title(sprintf("Gamma = %.1f",gamma))
    imwrite(img_2,sprintf("result_gamma_gray_%.1f.png", gamma));
end

% Color image
img_1 = imread('football.jpg');
imshow(img_1), title("Original image")
for gamma = 0.5:0.5:1.5
    img_2 = imadjust(img_1, [], [], gamma);
    figure, imshow(img_2), title(sprintf("Gamma = %.1f",gamma))
    imwrite(img_2,sprintf("result_gamma_color_%.1f.png", gamma));
end