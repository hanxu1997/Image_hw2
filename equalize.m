clc;
clear;
figure(1);
subplot(2,2,1);
input_img = imread('16.png');
imshow(input_img);
title('inputImg');
output_img = equalize_hist(input_img);


% 直方图和均衡化by matlab
figure(5);
subplot(2,2,1);
input_img = imread('16.png');
imshow(input_img);
title('inputImg');

subplot(2,2,2);
imhist(input_img, 256);
title('inputImg histogram by matlab');


f1 = histeq(input_img,256);
subplot(2,2,3);
imshow(f1);
title('outputImg by matlab');
subplot(2,2,4);
imhist(f1, 256);
title('outputImg histogram by matlab');