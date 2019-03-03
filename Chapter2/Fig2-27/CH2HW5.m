% -------------------------------------
% Author:   Hadi Khaghani - 9644374107 (hadi@khaqani.com)
% Title:    Image Subtraction/The Enhancement of Differences Between Images (#HW1-PartB)
% -------------------------------------
clc
clear all

% Read Image
grayImage = imread('Fig0227.tif');
img1 = uint8(255 * mat2gray(grayImage));

%Original Image LSB = 0
grayImage2 = img1 - rem(img1, 2); 
img2 = uint8(255 * mat2gray(grayImage2));

% Different two Image
diffImage = uint8(255*(double(img2) - double(img1)));

% Show and Write Image
figure, imshow(diffImage), title('RESULT');
imwrite(diffImage, 'RESULT.tif');
fprintf('Processing Done...\n');
