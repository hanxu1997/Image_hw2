clc;
clear;
% ×¢ÊÍµôfilter2d.mÖĞoutput_img = uint8(output_img);
A = [85 13 20 80; 169 8 243 20; 18 155 163 44; 12 34 50 80];
filter = [1 1 1; 0 0 0; -1 -1 -1];
B = filter2(filter, A);
C = filter2d(A,filter);
B
C


