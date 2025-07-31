
clc;
clear;
close all;

I = imread("Wavy 2.png");

figure(1)
subplot(1,3,1),imshow(I);
title("Original");

f2 = 1/2;
f4 = 1/4;
J = imresize(I,f2);
K = imresize(I,f4);

subplot(1,3,2),imshow(J);
title("Subsampled by 2")
subplot(1,3,3),imshow(K);
title("Subsampled by 4")

%Blockproc function to average 2x2 blocks
fun = @(block_struct) mean(block_struct.data(:),"all");

B = blockproc(I,[2 2],fun);
B = uint8(B)
figure(2)
subplot(1,3,1),imshow(B)
title("Averaged")

L = imresize(B,f2);
L = uint8(L)
subplot(1,3,2),imshow(L)
title("First Subsample")

K = imresize(L,f2);
K = uint8(K)
subplot(1,3,3),imshow(K)
title("Second Subsample")
%montage({I,J,K,B,L,K},"Size",[2 3]);
