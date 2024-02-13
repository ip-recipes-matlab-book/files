% Plot Gaussian bars
h_1 = fspecial('gaussian',3,0.5); % 3x3, sigma = 0.5
h_2 = fspecial('gaussian',3,2); % wrong: 3x3, sigma = 2
h_3 = fspecial('gaussian',9,2); % 9x9, sigma = 2
figure; % initialize figure
subplot(1,3,1), bar3(h_1), title('Gaussian mask h\_1');
subplot(1,3,2), bar3(h_2), title('Gaussian mask h\_2');
subplot(1,3,3), bar3(h_3), title('Gaussian mask h\_3');