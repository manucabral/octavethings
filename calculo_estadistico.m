pkg load io
tic();

# load csv file
data = csvread("abalone.data.csv");

[rows, columns] = size(data);

sum = 0
for i = 1:rows
  sum += data(i,2)
endfor

if (rows == 0)
  error("can't divide by 0")
endif

media = sum / rows

elapsed_time = toc();
disp(elapsed_time)
