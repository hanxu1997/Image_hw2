clc;
clear;
figure(2);
subplot(2,2,1);
input_img = imread('16.png');
imshow(input_img);
title('inputImg');

% 3*3均值滤波
filter1(1:3,1:3) = 1;
output_img1 = filter2d( input_img, filter1);
subplot(2,2,2);
imshow(output_img1);
title('3*3 average filter');

% 7*7均值滤波
filter2(1:7,1:7) = 1;
output_img2 = filter2d( input_img, filter2);
subplot(2,2,3);
imshow(output_img2);
title('7*7 average filter');

%11*11均值滤波
filter3(1:11,1:11) = 1;
output_img3 = filter2d( input_img, filter3);
subplot(2,2,4);
imshow(output_img3);
title('11*11 average filter');

% subplot(2,2,4);
% K1=filter2(fspecial('average',3),input_img)/255;
% imshow(K1);

