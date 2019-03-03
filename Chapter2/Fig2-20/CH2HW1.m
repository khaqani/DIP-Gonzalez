% -------------------------------------
% Author:   Hadi Khaghani - 9644374107 (hadi@khaqani.com)
% Title:    Typical effects of reducing spatial resolution. (1250,300,150,72 dpi)
% -------------------------------------

clc
clear all

% Read Image
originalIMG = imread('Fig0220.tif');
[m, n] = size(originalIMG);

% Write Image by Different Resolution
for i = [1250, 300, 150, 72]
    currentIMG = imresize(imresize(originalIMG, i/1250), [m n]);
    imwrite(currentIMG, [num2str(i),'_dpi', '.tif'], 'Resolution', i);
end
fprintf('Processing Done...\n');

