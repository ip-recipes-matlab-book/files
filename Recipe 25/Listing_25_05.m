% Function regionprops, Feret features
img = imread('lego_23_c500_bw.png');

% Compute Feret features
f_t = regionprops("table",img,...
    "MaxFeretProperties","MinFeretProperties");

figure, imshow(img), title('MaxFeretProperties'), ax1 = gca;
figure, imshow(img), title('MinFeretProperties'), ax2 = gca;
% Show MaxFeretProperties, MinFeretProperties
hold(ax1,'on'), hold(ax2,'on')
for n=1:size(f_t,1) % n is the nth object
    imdistline(ax1,f_t.MaxFeretCoordinates{n}(:,1),...
        f_t.MaxFeretCoordinates{n}(:,2));
    angle_pos_max = mean(f_t.MaxFeretCoordinates{n})+20;
    text(ax1,angle_pos_max(1),angle_pos_max(2),...
        [num2str(round(f_t.MaxFeretAngle(n))) '^{\circ}'],'Color','red')
    imdistline(ax2,f_t.MinFeretCoordinates{n}(:,1),...
        f_t.MinFeretCoordinates{n}(:,2));
    angle_pos_min = mean(f_t.MinFeretCoordinates{n})+20;
    text(ax2,angle_pos_min(1),angle_pos_min(2),...
        [num2str(round(f_t.MinFeretAngle(n))) '^{\circ}'],'Color','red')
end
hold(ax1,'off'), hold(ax2,'off')