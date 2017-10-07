clc;
clear;
input_img = imread('16.png');

figure(3);
%À­ÆÕÀ­Ë¹ÂË²¨Æ÷
filter4 = [0 -1 0; -1 4 -1;0 -1 0];
output_img4 = filter2d( input_img, filter4);
subplot(1,2,1);
imshow(output_img4);
title('laplacian filter by filter2d');

w=fspecial('laplacian',0);
n=imfilter(input_img,w,'replicate');
subplot(1,2,2);
imshow(n);
title('laplacian filter by matlab');