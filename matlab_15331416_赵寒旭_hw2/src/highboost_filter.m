clc;
clear;

figure(4);
subplot(2,2,1);
input_img = imread('16.png');
imshow(input_img);
title('inputImg');

% 3*3¾ùÖµÂË²¨
filter1(1:3,1:3) = 1;
filter_img = filter2d( input_img, filter1);
subplot(2,2,2);
imshow(filter_img);
title('3*3 average filter');

g_mask = input_img - filter_img;
subplot(2,2,3);
imshow(g_mask);
title('g mask');
k = 2;
g = input_img + k * g_mask;
subplot(2,2,4);
imshow(g);
title('highboost outputImg');


