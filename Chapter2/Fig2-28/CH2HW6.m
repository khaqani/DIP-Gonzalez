% -------------------------------------
% Author:   Hadi Khaghani - 9644374107 (hadi@khaqani.com)
% -------------------------------------
clc
clear all

% Read Images
A = imread('Fig0228A.tif');
B = imread('Fig0228B.tif');

C = uint8(double(B) - double(A) + 127);
D = adapthisteq(C);

% Show and Write Image
figure, imshow(C), title('C'), imwrite(C, 'C.tif');
figure, imshow(D), title('D'), imwrite(D, 'D.tif');
fprintf('Processing Done...\n');

