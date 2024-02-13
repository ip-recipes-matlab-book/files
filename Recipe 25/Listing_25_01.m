% Function regionprops input/output
bw = imread('sball_4_matseglgc3b.png');

% Input: binary image, Output: table
f_t_1 = regionprops("table",bw,"Eccentricity","Area"); 
% Input: CC struct, Output: table
cc = bwconncomp(bw);
f_t_2 = regionprops("table",cc,"Eccentricity","Area");
% Input: labeled image, Output: table
bw_L = labelmatrix(cc);
f_t_3 = regionprops("table",bw_L,"Eccentricity","Area"); 

disp(['Equal outputs: ' num2str(isequal(f_t_1,f_t_2,f_t_3))])

% Input: binary image, Output: structure array
f_s = regionprops(bw,"Eccentricity","Area","Centroid");
figure, imshow(bw)
% Show the label (number) of the object on the image
hold on
for n=1:length(f_s) % stats_s(n) is the nth object
    text(f_s(n).Centroid(1),f_s(n).Centroid(2),num2str(n),'Color','red')
end
hold off