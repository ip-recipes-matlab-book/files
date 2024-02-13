% Downloading and organizing an image collection for batch processing
%% Download PillQC dataset
data_dir = fullfile('./',"PillQCdataset");

if ~exist(data_dir,"dir")   
    mkdir(data_dir);
end

image_dir = fullfile(data_dir,"/pillQC-main");

if ~exist(image_dir,"dir")
    disp("Downloading Pill QC data set.");
    disp("This can take several minutes to download and unzip...");
    unzip("https://github.com/matlab-deep-learning/pillQC/archive/" + ...
    "refs/heads/main.zip", data_dir);
    delete(fullfile(image_dir,"*.m"),fullfile(image_dir,"*.mlx"), ...
    fullfile(image_dir,"*.mat"),fullfile(image_dir,"*.md"));
    disp("Done.");
end

%% Create array of filenames
file_folder = fullfile(image_dir,'images','chip');
dir_output = dir(fullfile(file_folder,'*.jpg'));

file_names = {dir_output.name}'
num_images = numel(file_names)

%% Preallocate an (m x n x 3 x p) array and read images into the array
cd(file_folder)
img = imread(file_names{1});
input_batch = zeros([size(img) num_images],class(img));
input_batch(:,:,:,1) = img;

for p = 2:num_images
    input_batch(:,:,:,p) = imread(file_names{p});
end