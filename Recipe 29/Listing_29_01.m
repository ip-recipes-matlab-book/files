% Loading and displaying large images
file_name = 'tumor_091R.tif'; 
% Store details about the original file
file_info = imfinfo(file_name);
% Create a blocked image
tumor_image = blockedImage(file_name);
% Display details of the blocked image at the command line.
disp(tumor_image)
% View the blocked image 
bigimageshow(tumor_image)
% Inspect resolution levels
level_size_info = table((1:length(tumor_image.Size))', ...
    tumor_image.Size(:,1), tumor_image.Size(:,2), ...
    tumor_image.Size(:,1)./tumor_image.Size(:,2), ...
    'VariableNames',["Resolution Level" "Image Width" ...
    "Image Height" "Aspect Ratio"]);
disp(level_size_info)
% Create a blockedImageDatastore, specifying the resolution level 
% and the blocksize.
bls = selectBlockLocations(tumor_image,'ExcludeIncompleteBlocks',true);
blocked_imds = blockedImageDatastore(tumor_image, "BlockLocationSet", bls);
%Read all the blocks in the datastore.
b = readall(blocked_imds);
% Display the big image with grid lines indicating blocks
figure, bigimageshow(tumor_image,...
      'GridVisible','on', 'GridLevel', 1,...
      'GridLineWidth', 2, 'GridColor','k','GridAlpha',0.3);
% Display the blocked image
figure, montage(b)