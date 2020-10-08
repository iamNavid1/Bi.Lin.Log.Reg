% ........................................................................

% % My template Matlab codes for binary Logistic Regression for linear
% classification
% Algorithm: fminunc (quasi-Newton)
% costFunctionReg.m
% Navid Salami Pargoo
% 2020

% ........................................................................

% costFunction(theta, X, y, lambda) computes the cost of using theta as the
% parameter for logistic regression with regularization and the gradient of 
% the cost w.r.t. the parameters.

function [J, grad] = costFunctionReg(theta, X, y, lambda)

m = length(y);   % number of training examples

h = sigmoid(X*theta);   % Hypothesis function

J = (1/m)*(-y'*log(h)-(1-y)'*log(1-h)) + (lambda/(2*m))*theta(2:end,:)'*theta(2:end,:);   %cost

error = h - y;    % Difference between hypothesis function and expected values in the trainig set
grad = (1/m * X' * error) + (lambda/m*theta);
grad(1) = (1/m * X(:,1)' * error);



% =============================================================

end
