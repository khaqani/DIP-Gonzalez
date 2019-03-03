% -------------------------------------
% Author:   Hadi Khaghani - 9644374107 (hadi@khaqani.com)
% -------------------------------------
clc
clear all

originalIMG = imread('Fig0235.tif'); 
[x,y] = size(originalIMG);
m = 41; n = 41; 

fullIMG = zeros(x + (m-1), y + (n-1));
result = fullIMG;
r = (m+1) / 2; c = (n+1) / 2; 
fullIMG(r : x - 1 + r , c : y - 1 + c) = originalIMG;

neighbor = ones(m, n);
temp = zeros(m, n);

for i = r :  x - 1 + r
    for j = c : y - 1 + c
        nr = i - (m - 1) / 2; nc = j - (n - 1) / 2;
        mask = fullIMG(nr : i + (m - 1) / 2 , nc : j + (n - 1) / 2);
        temp = neighbor .* mask;
        result(i, j) = sum(temp(:));
    end
end

result = result(r : x - 1 + r , c : y - 1 + c);
result = uint8(result ./ (m * n));

% Show Images
figure, subplot(1,2,1), imshow(originalIMG), title('Original Image');
        subplot(1,2,2), imshow(result), title('Result'), imwrite(result, 'Result.tif');

fprintf('Processing Done...\n');
