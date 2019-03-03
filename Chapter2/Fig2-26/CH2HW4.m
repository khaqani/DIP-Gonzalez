% -------------------------------------
% Author:   Hadi Khaghani - 9644374107 (hadi@khaqani.com)
% Title:    Image Addition/Averaging for Optimize Gaussian Noise (#HW1-PartA)
% -------------------------------------
clc
clear all

N = 100;
originalIMG = imread('Fig0226.tif');
sumIMG = zeros;

for k = 1:N
    currentIMG = imnoise(originalIMG, 'gaussian', rand/10, rand/10);
    imwrite(currentIMG, [num2str(k), '.tif'] );
    sumIMG = sumIMG + double(currentIMG);
end

Average = uint8(sumIMG / N);
figure, imshow(Average), title('Average');
imwrite(Average, 'Average.tif');
fprintf('Processing Done...\n');
