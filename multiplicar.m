pkg load io
tic();

# load csv file
data = csvread("abalone.data.csv");

second_data = data*2;

multiplied_data = data .* second_data;

elapsed_time = toc();
disp(elapsed_time)
