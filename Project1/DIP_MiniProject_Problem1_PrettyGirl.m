%DIP Project. Anshuman and Aly
%Pretty Girl, Problem 1
clc;
clear;
close all;

I = imread("Pretty Girl.png");
sz = size(I);

figure(1);
subplot(2,2,1), imhist(I);
title("Pretty Girl Original")
%Imax = max(I, [],"all");
%Imin = min(I, [], "all");


J = imadjust(I,[10/255,250/255],[]);
subplot(2,2,2), imhist(J);
title("Contrast stretched 10-250")

%gamma = 0.5
gamma = 0.5;
K = imadjust(I, [10/255 250/255], [], gamma);
subplot(2,2,3), imhist(K);
title("gamma set to 0.5");
%gamma = 2
gamma = 2.0;
L = imadjust(I, [10/255 250/255], [], gamma);
subplot(2,2,4), imhist(L);
title("gamma set to 2");

figure(2)
subplot(1,3,1),imshow(I);
title("Original");
%NEGATIVE
M = 2^8;
neg = (M - 1) - I;
subplot(1,3,2),imshow(neg);
title("Negative");

%HISTOGRAM EQUALIZATION
N = histeq(I);
subplot(1,3,3),imshow(N);
title("Histogram Equalization")

%%%%%COINS
I = imread("Coins.png");
sz = size(I);

figure(3);
subplot(2,2,1), imhist(I);
title("Coins Original")
%Imax = max(I, [],"all");
%Imin = min(I, [], "all");


J = imadjust(I,[10/255,250/255],[]);
subplot(2,2,2), imhist(J);
title("Contrast stretched 10-250")

%gamma = 0.5
gamma = 0.5;
K = imadjust(I, [10/255 250/255], [], gamma);
subplot(2,2,3), imhist(K);
title("gamma set to 0.5");
%gamma = 2
gamma = 2.0;
L = imadjust(I, [10/255 250/255], [], gamma);
subplot(2,2,4), imhist(L);
title("gamma set to 2");

figure(4)
subplot(1,3,1),imshow(I);
title("Original");
%NEGATIVE
M = 2^8;
neg = (M - 1) - I;
subplot(1,3,2),imshow(neg);
title("Negative");

%HISTOGRAM EQUALIZATION
N = histeq(I);
subplot(1,3,3),imshow(N);
title("Histogram Equalization")

%%%%MONA LISA

I = imread("Mona Lisa.png");
sz = size(I);

figure(5);
subplot(2,2,1), imhist(I);
title("Mona Lisa Original")
%Imax = max(I, [],"all");
%Imin = min(I, [], "all");


J = imadjust(I,[10/255,250/255],[]);
subplot(2,2,2), imhist(J);
title("Contrast stretched 10-250")

%gamma = 0.5
gamma = 0.5;
K = imadjust(I, [10/255 250/255], [], gamma);
subplot(2,2,3), imhist(K);
title("gamma set to 0.5");
%gamma = 2
gamma = 2.0;
L = imadjust(I, [10/255 250/255], [], gamma);
subplot(2,2,4), imhist(L);
title("gamma set to 2");

figure(6)
subplot(1,3,1),imshow(I);
title("Original");
%NEGATIVE
M = 2^8;
neg = (M - 1) - I;
subplot(1,3,2),imshow(neg);
title("Negative");

%HISTOGRAM EQUALIZATION
N = histeq(I);
subplot(1,3,3),imshow(N);
title("Histogram Equalization")
