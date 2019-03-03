% -------------------------------------
% Author:   Hadi Khaghani - 9644374107 (hadi@khaqani.com)
% Title:    display image in differents gray level
% -------------------------------------
clc
clear all

% Read Image
originalIMG = imread('Fig0221.tif');

for i = [256, 128, 64, 32, 16, 8, 4, 2]
    [originalIMG_index, map] = gray2ind(originalIMG, i); 
    currentIMG = ind2gray(originalIMG_index, map);
    % Write Image
    imwrite(currentIMG, [num2str(i),'_GrayLevel', '.tif'] );
end
fprintf('Processing Done...\n');
