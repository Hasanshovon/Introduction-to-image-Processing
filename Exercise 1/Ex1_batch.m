clear 
close all;
Ex1__batch()
%define function
function Ex1__batch()
    images={'c_1.jpg', 'c_2.jpg', 'c_3.jpg', 'c_4.jpg', 'c_5.jpg', 'c_6.jpg'}
    for i=1:length(images)
        I=imread(images{i});
        process_I=Process(I);
        [~,name,~]=fileparts(images{i});
        result_name=[name,'.bmp'];
        imwrite(process_I,result_name,'bmp')
    end
end
function P=Process(I)
    %scale down to 75% of the original image
    scale= imresize(I,.75)
    %take the right half of the image and mirror it along the center
    [rows, cols, ~] = size(scale);
    right_half = scale(:, cols / 2 + 1:end,:);
    mirrored_right_half = fliplr(right_half);
    %rotate the flipped right hald 90 defrees counterclock
    rotated = imrotate(mirrored_right_half, 90);
    %return the result
    P=rotated;
end