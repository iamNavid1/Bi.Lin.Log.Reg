% ........................................................................

% % My template Matlab codes for binary Logistic Regression for linear
% classification
% Algorithm: fminunc (quasi-Newton)
% predict.m
% Navid Salami Pargoo
% 2020

% ........................................................................

% predict(theta, X) predicts whether the label is 0 or 1 for the set of
% examples X using learned logistic regression parameters theta

function p = predict(theta, X)

m = size(X, 1); % Number of training examples

p = sigmoid(X * theta);

for i=1:m
    if p(i) >= 0.5
        p(i) = 1;
    else
        p(i) = 0;
    end
end

end
