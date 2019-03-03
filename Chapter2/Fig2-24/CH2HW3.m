% -------------------------------------
% Author:   Hadi Khaghani - 9644374107 (hadi@khaqani.com)
% -------------------------------------
clc
clear all

originalIMG = imread('Fig0220.tif');
[m, n] = size(originalIMG);

A = imresize(imresize(originalIMG, 72/1250), [m n], 'nearest');
B = imresize(imresize(originalIMG, 72/1250), [m n], 'bilinear');
C = imresize(imresize(originalIMG, 72/1250), [m n], 'bicubic');
imwrite(A, 'A.tif','Resolution', 72);
imwrite(B, 'B.tif','Resolution', 72);
imwrite(C, 'C.tif','Resolution', 72);

D = imresize(imresize(originalIMG, 150/1250), [m n], 'nearest');
E = imresize(imresize(originalIMG, 150/1250), [m n], 'bilinear');
F = imresize(imresize(originalIMG, 150/1250), [m n], 'bicubic');
imwrite(D, 'D.tif','Resolution', 150);
imwrite(E, 'E.tif','Resolution', 150);
imwrite(F, 'F.tif','Resolution', 150);

fprintf('Processing Done...\n');

