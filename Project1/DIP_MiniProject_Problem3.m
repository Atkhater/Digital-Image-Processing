%Anshuman and Aly Problem 3

clc;
clear;
close all;
%Art Decor
I = imread("Art Decor.png");

figure(1)
subplot(3,4,1),imshow(I);
title("Art Decor Original");


%Gaussian
h1 = fspecial('gaussian', 3, 1);
M = imfilter(I,h1,"replicate");
subplot(3,4,2),imshow(M);
title("3x3 Gaussian");

h2 = fspecial('gaussian', 3, 5);
M = imfilter(I,h2,"replicate");
subplot(3,4,6),imshow(M);
title("3x3 Gaussian sigma 5");

h3 = fspecial('gaussian', 3, 10);
M = imfilter(I,h3,"replicate");
subplot(3,4,10),imshow(M);
title("3x3 Gaussian sigma 10");

%5X5
h4 = fspecial('gaussian', 5, 1);
M = imfilter(I,h4,"replicate");
subplot(3,4,3),imshow(M);
title("5x5 Gaussian");

h5 = fspecial('gaussian', 5, 5);
M = imfilter(I,h5,"replicate");
subplot(3,4,7),imshow(M);
title("5x5 Gaussian sigma 5");

h6 = fspecial('gaussian', 5, 10);
M = imfilter(I,h6,"replicate");
subplot(3,4,11),imshow(M);
title("5x5 Gaussian sigma 10");

%Central difference
h7 = fspecial('sobel');
M = imfilter(I,h7',"replicate");
M = imfilter(I,h7,"replicate");
subplot(3,4,4),imshow(M);
title("3x3 Central Difference");

%median
%3x3
fun = @(block_struct) median(block_struct.data(:),"all");

B = blockproc(I,[3 3],fun);
B = uint8(B);
subplot(3,4,8),imshow(B);
title("3x3 Median Filter")

%5x5
fun = @(block_struct) median(block_struct.data(:),"all");

B = blockproc(I,[5 5],fun);
B = uint8(B);
subplot(3,4,12),imshow(B);
title("5x5 Median Filter")

%Coins
I = imread("Coins.png");

figure(2)
subplot(3,4,1),imshow(I);
title("Coins Original");


%Gaussian
h1 = fspecial('gaussian', 3, 1);
M = imfilter(I,h1,"replicate");
subplot(3,4,2),imshow(M);
title("3x3 Gaussian");

h2 = fspecial('gaussian', 3, 5);
M = imfilter(I,h2,"replicate");
subplot(3,4,6),imshow(M);
title("3x3 Gaussian sigma 5");

h3 = fspecial('gaussian', 3, 10);
M = imfilter(I,h3,"replicate");
subplot(3,4,10),imshow(M);
title("3x3 Gaussian sigma 10");

%5X5
h4 = fspecial('gaussian', 5, 1);
M = imfilter(I,h4,"replicate");
subplot(3,4,3),imshow(M);
title("5x5 Gaussian");

h5 = fspecial('gaussian', 5, 5);
M = imfilter(I,h5,"replicate");
subplot(3,4,7),imshow(M);
title("5x5 Gaussian sigma 5");

h6 = fspecial('gaussian', 5, 10);
M = imfilter(I,h6,"replicate");
subplot(3,4,11),imshow(M);
title("5x5 Gaussian sigma 10");

%Central difference
h7 = fspecial('sobel');
M = imfilter(I,h7',"replicate");
M = imfilter(I,h7,"replicate");
subplot(3,4,4),imshow(M);
title("3x3 Central Difference");

%median
%3x3
fun = @(block_struct) median(block_struct.data(:),"all");

B = blockproc(I,[3 3],fun);
B = uint8(B);
subplot(3,4,8),imshow(B);
title("3x3 Median Filter")

%5x5
fun = @(block_struct) median(block_struct.data(:),"all");

B = blockproc(I,[5 5],fun);
B = uint8(B);
subplot(3,4,12),imshow(B);
title("5x5 Median Filter")

%Mona Lisa
I = imread("Mona Lisa.png");

figure(3)
subplot(3,4,1),imshow(I);
title("Mona Lisa Original");


%Gaussian
h1 = fspecial('gaussian', 3, 1);
M = imfilter(I,h1,"replicate");
subplot(3,4,2),imshow(M);
title("3x3 Gaussian");

h2 = fspecial('gaussian', 3, 5);
M = imfilter(I,h2,"replicate");
subplot(3,4,6),imshow(M);
title("3x3 Gaussian sigma 5");

h3 = fspecial('gaussian', 3, 10);
M = imfilter(I,h3,"replicate");
subplot(3,4,10),imshow(M);
title("3x3 Gaussian sigma 10");

%5X5
h4 = fspecial('gaussian', 5, 1);
M = imfilter(I,h4,"replicate");
subplot(3,4,3),imshow(M);
title("5x5 Gaussian");

h5 = fspecial('gaussian', 5, 5);
M = imfilter(I,h5,"replicate");
subplot(3,4,7),imshow(M);
title("5x5 Gaussian sigma 5");

h6 = fspecial('gaussian', 5, 10);
M = imfilter(I,h6,"replicate");
subplot(3,4,11),imshow(M);
title("5x5 Gaussian sigma 10");

%Central difference
h7 = fspecial('sobel');
M = imfilter(I,h7',"replicate");
M = imfilter(I,h7,"replicate");
subplot(3,4,4),imshow(M);
title("3x3 Central Difference");

%median
%3x3
fun = @(block_struct) median(block_struct.data(:),"all");

B = blockproc(I,[3 3],fun);
B = uint8(B);
subplot(3,4,8),imshow(B);
title("3x3 Median Filter")

%5x5
fun = @(block_struct) median(block_struct.data(:),"all");

B = blockproc(I,[5 5],fun);
B = uint8(B);
subplot(3,4,12),imshow(B);
title("5x5 Median Filter")

%Pretty Girl
I = imread("Pretty Girl.png");

figure(4)
subplot(3,4,1),imshow(I);
title("Pretty Girl Original");


%Gaussian
h1 = fspecial('gaussian', 3, 1);
M = imfilter(I,h1,"replicate");
subplot(3,4,2),imshow(M);
title("3x3 Gaussian");

h2 = fspecial('gaussian', 3, 5);
M = imfilter(I,h2,"replicate");
subplot(3,4,6),imshow(M);
title("3x3 Gaussian sigma 5");

h3 = fspecial('gaussian', 3, 10);
M = imfilter(I,h3,"replicate");
subplot(3,4,10),imshow(M);
title("3x3 Gaussian sigma 10");

%5X5
h4 = fspecial('gaussian', 5, 1);
M = imfilter(I,h4,"replicate");
subplot(3,4,3),imshow(M);
title("5x5 Gaussian");

h5 = fspecial('gaussian', 5, 5);
M = imfilter(I,h5,"replicate");
subplot(3,4,7),imshow(M);
title("5x5 Gaussian sigma 5");

h6 = fspecial('gaussian', 5, 10);
M = imfilter(I,h6,"replicate");
subplot(3,4,11),imshow(M);
title("5x5 Gaussian sigma 10");

%Central difference
h7 = fspecial('sobel');
M = imfilter(I,h7',"replicate");
M = imfilter(I,h7,"replicate");
subplot(3,4,4),imshow(M);
title("3x3 Central Difference");

%median
%3x3
fun = @(block_struct) median(block_struct.data(:),"all");

B = blockproc(I,[3 3],fun);
B = uint8(B);
subplot(3,4,8),imshow(B);
title("3x3 Median Filter")

%5x5
fun = @(block_struct) median(block_struct.data(:),"all");

B = blockproc(I,[5 5],fun);
B = uint8(B);
subplot(3,4,12),imshow(B);
title("5x5 Median Filter")

%Wavy 1
I = imread("Wavy 1.png");

figure(5)
subplot(3,4,1),imshow(I);
title("Wavy 1 Original");


%Gaussian
h1 = fspecial('gaussian', 3, 1);
M = imfilter(I,h1,"replicate");
subplot(3,4,2),imshow(M);
title("3x3 Gaussian");

h2 = fspecial('gaussian', 3, 5);
M = imfilter(I,h2,"replicate");
subplot(3,4,6),imshow(M);
title("3x3 Gaussian sigma 5");

h3 = fspecial('gaussian', 3, 10);
M = imfilter(I,h3,"replicate");
subplot(3,4,10),imshow(M);
title("3x3 Gaussian sigma 10");

%5X5
h4 = fspecial('gaussian', 5, 1);
M = imfilter(I,h4,"replicate");
subplot(3,4,3),imshow(M);
title("5x5 Gaussian");

h5 = fspecial('gaussian', 5, 5);
M = imfilter(I,h5,"replicate");
subplot(3,4,7),imshow(M);
title("5x5 Gaussian sigma 5");

h6 = fspecial('gaussian', 5, 10);
M = imfilter(I,h6,"replicate");
subplot(3,4,11),imshow(M);
title("5x5 Gaussian sigma 10");

%Central difference
h7 = fspecial('sobel');
M = imfilter(I,h7',"replicate");
M = imfilter(I,h7,"replicate");
subplot(3,4,4),imshow(M);
title("3x3 Central Difference");

%median
%3x3
fun = @(block_struct) median(block_struct.data(:),"all");

B = blockproc(I,[3 3],fun);
B = uint8(B);
subplot(3,4,8),imshow(B);
title("3x3 Median Filter")

%5x5
fun = @(block_struct) median(block_struct.data(:),"all");

B = blockproc(I,[5 5],fun);
B = uint8(B);
subplot(3,4,12),imshow(B);
title("5x5 Median Filter")

%Wavy 2
I = imread("Wavy 2.png");

figure(6)
subplot(3,4,1),imshow(I);
title("Wavy 2 Original");


%Gaussian
h1 = fspecial('gaussian', 3, 1);
M = imfilter(I,h1,"replicate");
subplot(3,4,2),imshow(M);
title("3x3 Gaussian");

h2 = fspecial('gaussian', 3, 5);
M = imfilter(I,h2,"replicate");
subplot(3,4,6),imshow(M);
title("3x3 Gaussian sigma 5");

h3 = fspecial('gaussian', 3, 10);
M = imfilter(I,h3,"replicate");
subplot(3,4,10),imshow(M);
title("3x3 Gaussian sigma 10");

%5X5
h4 = fspecial('gaussian', 5, 1);
M = imfilter(I,h4,"replicate");
subplot(3,4,3),imshow(M);
title("5x5 Gaussian");

h5 = fspecial('gaussian', 5, 5);
M = imfilter(I,h5,"replicate");
subplot(3,4,7),imshow(M);
title("5x5 Gaussian sigma 5");

h6 = fspecial('gaussian', 5, 10);
M = imfilter(I,h6,"replicate");
subplot(3,4,11),imshow(M);
title("5x5 Gaussian sigma 10");

%Central difference
h7 = fspecial('sobel');
M = imfilter(I,h7',"replicate");
M = imfilter(I,h7,"replicate");
subplot(3,4,4),imshow(M);
title("3x3 Central Difference");

%median
%3x3
fun = @(block_struct) median(block_struct.data(:),"all");

B = blockproc(I,[3 3],fun);
B = uint8(B);
subplot(3,4,8),imshow(B);
title("3x3 Median Filter")

%5x5
fun = @(block_struct) median(block_struct.data(:),"all");

B = blockproc(I,[5 5],fun);
B = uint8(B);
subplot(3,4,12),imshow(B);
title("5x5 Median Filter")

