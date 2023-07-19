% Read the image
img = imread('Angad.jfif');

% Convert to grayscale
img_gray = rgb2gray(img);

% Define operators
operators = {'sobel', 'prewitt', 'roberts', 'canny', 'log'};

% Create figure
figure;

% Show original image
subplot(2,3,1);
imshow(img_gray);
title('Original Image');

% Loop over operators
for i = 1:numel(operators)
    % Edge detection
    edge_img = edge(img_gray, operators{i});
    
    % Create subplot
    subplot(2, 3, i+1); % 2 rows, 3 columns, i-th subplot
    
    % Display result
    imshow(edge_img);
    title(['Edge ', operators{i}]);
end