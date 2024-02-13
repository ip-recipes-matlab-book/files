A = table2array(allresults);
imgNumber = 5;
bw = A{imgNumber,1};
bwClean = A{imgNumber,2};
gray = A{imgNumber,3};
originalFileName = A{imgNumber,4};
original = imread(originalFileName);

montage({original, gray, bw, bwClean})