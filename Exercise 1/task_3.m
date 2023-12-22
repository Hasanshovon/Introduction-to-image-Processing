% Create a binary image (for example, a 10x10 black square on a white background)
I=[0, 0, 0, 0,0, 0, 1, 1;0, 0, 1, 0,0, 1, 0, 0;0, 0, 1, 0,1, 1, 0, 0;0, 1, 1, 1,0, 0, 0, 0]
S1=I(:,1:4)
S2=I(:,5:end)

% Display the binary image in black and white
figure;
imshow(I, 'InitialMagnification', 'fit');
title('Binary Image');

% Load the 'S.mat' file
load('S.mat');

% Call the countNonZero function on the matrix 'S'
result_S1 = countNonZero(S1);
result_S2 = countNonZero(S2);
result_S = countNonZero(S);

% Print the result using fprintf
fprintf('Total non-zero values in matrix S1: %d\n', result_S1);
fprintf('Total non-zero values in matrix S2: %d\n', result_S2);
fprintf('Total non-zero values in matrix S: %d\n', result_S);
% Create a function that counts non-zero values in a matrix
function count = countNonZero(S)
    count = nnz(S);  % Count the number of non-zero elements in the matrix
end