data = table2cell(readtable('PPDataSheet.xlsx'));
X = data(:, 1:3);% X = input variables 
y = data(:, 5); % Y = output variable (PE)
m = length(y);
X = [ones(m, 3) X];
alpha = 0.01;
num_iters = 400;
 K = zeros(4, 1);
[K, J_history] = gradientDescent(X, y, K, alpha, num_iters);
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');
