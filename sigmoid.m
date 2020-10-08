% ........................................................................

% % My template Matlab codes for binary Logistic Regression for linear
% classification
% Algorithm: fminunc (quasi-Newton)
% sigmoid.m
% Navid Salami Pargoo
% 2020

% ........................................................................

% sigmoid(X, y) computes the sigmoid function of z (z can be a
% matrix,vector or scalar).

function g = sigmoid(z)

g = ones(size(z)) ./ (ones(size(z)) + exp(-z));

end
