% -------------------------------------
% Author:   Hadi Khaghani - 9644374107 (hadi@khaqani.com)
% -------------------------------------
clc
clear all

originalIMG = imread('Fig0232.tif');
[m,n] = size(originalIMG);

complement = (2^8 - 1) - originalIMG;
threshold = 3 * mean(originalIMG(:));   % threshold = 3m
result  = originalIMG;
for i = 1 : m 
    for j = 1 : n
        if(result(i,j) < threshold)
            result(i,j) = threshold;
        end
    end
end

% Show Images
figure, subplot(1,3,1), imshow(originalIMG), title('Original Image');
        subplot(1,3,2), imshow(complement), title('Complementary Set');
        subplot(1,3,3), imshow(result), title('Union');
        
% Write Results Image
imwrite(complement, 'B.tif');
imwrite(result, 'C.tif');

fprintf('Processing Done...\n');

