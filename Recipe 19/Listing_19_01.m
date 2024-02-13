% Active contours

%% Image 1: coins
img_1 = imread('coins.png');
% Specify initial contour surrounding the objects of interest
mask_1 = zeros(size(img_1));
mask_1(25:end-25,25:end-25) = 1;
% Display the contour
figure, imshow(mask_1)
% Segment the image by using the activecontour function (<= 300 iterations)
img_1_bw = activecontour(img_1, mask_1, 300);
figure, imshow(img_1_bw)
figure, montage({img_1,img_1_bw})

%% Image 2: rice
img_2 = imread('rice.png');
% Specify initial contour surrounding the objects of interest
mask_2 = zeros(size(img_2));
mask_2(15:end-15,15:end-15) = 1;
% Display the contour
figure, imshow(mask_2)
% Segment the image by using the activecontour function (<= 900 iterations)
img_2_bw = activecontour(img_2, mask_2, 900);
figure, imshow(img_2_bw)
figure, montage({img_2,img_2_bw})

%% Image 3: coffee beans
img_3 = imread('bean_coffee_08.png');
% Specify initial contour surrounding the objects of interest
sz_img_3 = size(img_3);
mask_3 = zeros(sz_img_3(1),sz_img_3(2));
mask_3(45:end-45,45:end-45) = 1;
% Display the contour
figure, imshow(mask_3)
% Segment the image by using the activecontour function (<= 700 iterations)
img_3_bw = activecontour(img_3, mask_3, 700);
figure, imshow(img_3_bw)
figure, montage({img_3,img_3_bw})