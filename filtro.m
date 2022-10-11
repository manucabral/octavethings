# require package
pkg load image
tic();

# loadimage
image = imread("lenna.png");

# convert to gray scale
gs_image = rgb2gray(image);

# apply noise to the image
noise_image = imnoise(gs_image, "gaussian");

# shows image
imshow(noise_image);

# descomment for save the image
# imwrite(noise_image, "lenna_noise.png");

elapsed_time = toc();
disp(elapsed_time)
