% ImageDatastore creation and processing
imds_path = '101_ObjectCategories';
imds = imageDatastore(imds_path,'IncludeSubfolders',true,...
       'LabelSource','foldernames');
idx = find(imds.Labels == 'water_lilly');
WLpaths = imds.Files(idx);
filename = WLpaths{30};
img_3 = imread(filename);
figure, imshow(img_3)