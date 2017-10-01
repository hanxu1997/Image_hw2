%sdds
clc;
clear;

input_img = imread('16.png');
imshow(input_img);
title('inputImg');

output_img = equalize_hist(input_img);