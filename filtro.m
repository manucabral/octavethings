tic();

image = imread("lenna.png");
grayval = 0.4*image(:,:,1) + 0.2*image(:,:,2) + 1.2*image(:,:,3);
mask = (grayval > 152);
result = image.* repmat(mask, [1 1 1]);
imwrite(result, "lenna2.png");

elapsed_time = toc();
disp(elapsed_time)
