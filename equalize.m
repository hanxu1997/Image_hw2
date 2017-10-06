%sdds
clc;
clear;
figure(1);
subplot(2,2,1);
input_img = imread('16.png');
imshow(input_img);
title('inputImg');
output_img = equalize_hist(input_img);