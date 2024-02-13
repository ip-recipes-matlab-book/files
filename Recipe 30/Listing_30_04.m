function results = myBinarize(varargin)

% Input parsing
im = varargin{1};

if nargin == 2
    % Obtain information about the input image source
    info = varargin{2};
end

% Our code
imgray = im2gray(im); % Convert to grayscale
bw = imbinarize(imgray); % Binarize
bwClean = imopen(bw,strel("disk",3,4)); % Remove spurious pixels

results.imgray = imgray;
results.bw     = bw;
results.bwClean = bwClean;