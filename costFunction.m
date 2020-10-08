% ........................................................................

% % My template Matlab codes for binary Logistic Regression for linear
% classification
% Algorithm: fminunc (quasi-Newton)
% costFunction.m
% Navid Salami Pargoo
% 2020

% ........................................................................

% costFunction(theta, X, y) computes the cost of using theta as the
% parameter for logistic regression and the gradient of the cost w.r.t. the
% parameters.

function [J, grad] = costFunction(theta, X, y)

m = length(y);   % number of training examples

h = sigmoid(X*theta);   % Hypothesis function

J = (1/m)*(-y'*log(h)-(1-y)'*log(1-h));   % cost

error = h - y;   % Difference between hypothesis function and expected values in the trainig set
grad = (1/m) * X' * error;

end
