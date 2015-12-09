function [img] = load2intens(image_file)
%LOAD2DBLLoads an image from file and converts it to a grayscale doubles intesity image
    a = imread(image_file);
    b = rgb2gray(a);
    img = im2double(b);
end

