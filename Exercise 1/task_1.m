%% 1. Image basics and useful commands

I=imread("peppers.png") % load the image
subplot(1,1,1)
imshow(I)               %show the image

% a) convert to gray scale
I1= rgb2gray(I); 
figure;
subplot(1,2,1);
imshow(I);
title('original image')
subplot(1,2,2);
imshow(I1);
title('gray level image')

% b) display the red component
I_Red= I(:,:,1);
figure;
subplot(1,2,1);
imshow(I);
title('original image')
subplot(1,2,2);
imshow(I_Red);
title('red image')

% c) add 50 to the green component
I2 = I;
I2(:,:,2) = I2(:,:,2) + 50; 
figure;
subplot(2, 2, 1);
imshow(I);
title('original Image');

subplot(2, 2, 2);
imshow(I2);
title('green modified image');

% d) tore the Red, Green, and Blue components
R=I(:,:,1)
G=I(:,:,2)
B=I(:,:,3)
I3= cat(3,R,G,B);
figure;
subplot(2, 1, 1);
imshow(I);
title('original Image');

subplot(2, 1, 2);
imshow(I3);
title('green modified image');

% e) display 4 image in 2 by 2 order
figure;
subplot(2,2,1)
imshow(I)
title('original image')
subplot(2,2,2)
imshow(I1)
title('gray image')
subplot(2,2,3)
imshow(I2)
title('green modified image')
subplot(2,2,4)
imshow(I3)
title('recombination image')
