% -------------------------------------
% Author:   Hadi Khaghani - 9644374107 (hadi@khaqani.com)
% -------------------------------------
clc
clear all

% Read Images
A = imread('Fig0230A.tif');
B = imread('Fig0230B.tif');

C = A .* uint8(logical(B));
figure, imshow(C), title('Result'), imwrite(C, 'Result.tif');

fprintf('Processing Done...\n');
