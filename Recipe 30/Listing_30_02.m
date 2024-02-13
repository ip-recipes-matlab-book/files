% Examples of batch processing
%% Part 1: histogram equalization
output_batch = histeq(input_batch);

% View each image pair (before/after processing)
figure;
for k = 1:num_images
      imshow(input_batch(:,:,:,k));
      title(sprintf('Original Image # %d',k));
      pause(1);
      imshow(output_batch(:,:,:,k));
      title(sprintf('Processed Image # %d',k));
      pause(1);
end

%% Part 2: binarization
for p = 1:num_images
    output_batch_2(:,:,p) = imbinarize(im2gray(input_batch(:,:,:,p)));
end

% View original and processed images 
figure, montage(input_batch)
figure, montage(output_batch_2)