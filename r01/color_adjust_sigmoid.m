% Color R, G, B sigmoid 
img = imread('wagon.jpg');

x = 0:255; inflec = 127;
slope = 0.025;  % smoother slope
% slope = 0.05; % sharper slope
sigmoid = uint8(255./((1+exp(-slope*(x-inflec)))));
figure, plot(sigmoid); xlim([0 255]) ; ylim([0 255]) ; grid on

img_s = intlut(img, sigmoid);
figure, montage({img, img_s})