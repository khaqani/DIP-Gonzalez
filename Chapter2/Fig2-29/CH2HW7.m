% -------------------------------------
% Author:   Hadi Khaghani - 9644374107 (hadi@khaqani.com)
% -------------------------------------
clc
clear all

% Read Images
A = imread('Fig0229A.tif');
B = imread('Fig0229B.tif');
Result = double(A) .* (1 ./ double(B));

% Show Images
figure, subplot(1,3,1), imshow(A), title('A');
        subplot(1,3,2), imshow(B), title('B');
        subplot(1,3,3), imshow(Result), title('Result');
% Write Result Image
imwrite(Result, 'Result.tif');

fprintf('Processing Done...\n');
