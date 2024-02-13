% Webcam - basic setup 
myWcams = webcamlist
wcam1 = webcam(1)
% wcam2 = webcam(2)
img_1 = snapshot(wcam1);
% img_2 = snapshot(wcam2);
image(img_1)
% figure, image(img_2)
clear wcam1 
% clear wcam2