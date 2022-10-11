pkg load io
tic();

# load csv file
data = csvread("abalone.data.csv");

# gets rows and columns size
[rows, columns] = size(data);

sum = 0
for i = 1:rows
  sum += data(i,2)
endfor
printf("sum: %f\n", sum);

if (rows == 0)
  error("can't divide by 0")
endif

media = sum / rows;
printf("media: %f\n", media);

# lets get stantard deviation
numerator = 0;
for i = 1:rows
  numerator += (data(i,2) - media)^2;
endfor

var = numerator / rows;
std_d = sqrt(var);
printf("standard_deviation: %f\n", std_d);

elapsed_time = toc();
disp(elapsed_time)
