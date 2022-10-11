pkg load io
tic();

# load csv file
data = csvread("abalone.data.csv");

# generate second matrix data from data
second_data = data*2;

# multiply together
multiplied_data = data .* second_data;

disp(multiplied_data);

elapsed_time = toc();
disp(elapsed_time)
