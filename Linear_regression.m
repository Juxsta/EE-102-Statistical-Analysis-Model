data = readtable('PPDataSheet.xlsx');
X = data(:, 1:4);% X = input variables 
y = data(:, 5); % Y = output variable (PE)
m = length(y);
X = [ones(m, 1) X];
K = normalEqn(X, y);
