sourceDir = "./PillQCdataset/pillQC-main/images/normal";
outputDir = fullfile(sourceDir,'results');

result = batchmyBinarize(sourceDir, outputDir);
exampleInput = imread(fullfile(sourceDir,'normal0024.jpg')); 
exampleOutput = imread(fullfile(sourceDir,'normal0024_bwClean.tiff')); 
montage({exampleInput exampleOutput})