% Webcam - improved setup
wcam = webcam(1);
preview(wcam)
disp('Press any key to trigger acquisiton')
pause
img_1 = snapshot(wcam);
imshow(img_1)
clear wcam