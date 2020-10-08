% ........................................................................

% % My template Matlab codes for binary Logistic Regression for linear
% classification
% Algorithm: fminunc (quasi-Newton)
% plotData.m
% Navid Salami Pargoo
% 2020

% ........................................................................

% plotData(X, y) plots the data points X belonging to categories of y into
% a figure with + for the positive examples and o for the negative
% examples. X is assumed to be a mxn matrix. 

function plotData(X, y)

n = size(X,2); % # of features

if n == 1
    % Find Indices of Positive and Negative Examples
    pos = find(y == 1); 
    neg = find(y == 0);
    
    % Plot Examples
    figure;
    hold on;
    plot(X(pos, 1), ones(length(pos), 1), 'k+','LineWidth', 2, 'MarkerSize', 7);
    plot(X(neg, 1), zeros(length(neg), 1), 'ko','MarkerFaceColor', 'y', 'MarkerSize', 7);
    hold off;

    % Labels and Legend
    ylim([-1, 2])
    xlabel('Feature 1');
    ylabel('Output');
    legend('Positive', 'Negative');    % Specified in plot order
    
elseif n == 2
    % Find Indices of Positive and Negative Examples
    pos = find(y == 1); 
    neg = find(y == 0);

    % Plot Examples
    figure;
    hold on;
    plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, 'MarkerSize', 7);
    plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y','MarkerSize', 7);
    hold off;

    % Labels and Legend
    xlabel('Feature 1');
    ylabel('Feature 2');
    legend('Positive', 'Negative');    % Specified in plot order

elseif n == 3
    % Find Indices of Positive and Negative Examples
    pos = find(y == 1); 
    neg = find(y == 0);

    % Plot Examples
    figure;
    hold on;
    scatter3(X(pos, 1), X(pos, 2), X(pos, 3), 'k+','LineWidth', 2);
    scatter3(X(neg, 1), X(neg, 2), X(neg, 3), 'ko', 'MarkerFaceColor', 'y');
    hold off;

    % Labels and Legend
    xlabel('Feature 1');
    ylabel('Feature 2');
    zlabel('Feature 3');
    legend('Positive', 'Negative');    % Specified in plot order
    
else
    disp('The dimension of model is greater than 3 => Not possible to be plotted on screen');


end
