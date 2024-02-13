% Webcam - image sequence acquisition
wcam = webcam(1);
preview(wcam)
disp('Press any key to trigger acquisiton')
pause
img_array = [];
for n = 1:4
    img_array = cat(4,img_array,snapshot(wcam));
end
montage(img_array), title('Four acquired images')
img_3 = img_array(:,:,:,3);
figure, imshow(img_3), title('The third acquired image')
clear wcam