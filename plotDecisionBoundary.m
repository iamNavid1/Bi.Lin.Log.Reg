% ........................................................................

% % My template Matlab codes for binary Logistic Regression for linear
% classification
% Algorithm: fminunc (quasi-Newton)
% plotDecisionBoundary.m
% Navid Salami Pargoo
% 2020

% ........................................................................

% plotDecisionBoundary(theta, X, y) plots the data points in a new figure
% with the decision boundry defined by theta.

function plotDecisionBoundary(theta, X, y)

n = size(X,2)-1; % # of features

if n == 1
    % Find Indices of Positive and Negative Examples
    pos = find(y == 1); 
    neg = find(y == 0);
    
    % Plot Examples
    figure;
    hold on;
    plot(X(pos, 2), ones(length(pos), 1), 'k+','LineWidth', 2, 'MarkerSize', 7);
    plot(X(neg, 2), zeros(length(neg), 1), 'ko','MarkerFaceColor', 'y', 'MarkerSize', 7);

    % Only need 2 points to define a line, so choose two endpoints along
    % with some margin
    plot_x = [min(X(:,2))-0.05*abs(min(X(:,2))),  max(X(:,2))+0.05*abs(max(X(:,2)))];
    % Calculate the decision boundary line
    plot_y = theta(2).*plot_x + theta(1);
    % Plot, and adjust axes for better viewing
    plot(plot_x, plot_y);    
    ylim([-1, 2])

    % Labels and Legend
    xlabel('Feature 1');
    ylabel('Output');
    legend('Positive', 'Negative', 'Decision Boundary');    % Specified in plot order
    hold off;
    
elseif n == 2
    % Find Indices of Positive and Negative Examples
    pos = find(y == 1); 
    neg = find(y == 0);

    % Plot Examples
    figure;
    hold on;
    plot(X(pos, 2), X(pos, 3), 'k+','LineWidth', 2, 'MarkerSize', 7);
    plot(X(neg, 2), X(neg, 3), 'ko', 'MarkerFaceColor', 'y','MarkerSize', 7);
    
    % Only need 2 points to define a line, so choose two endpoints along
    % with some margin
    plot_x = [min(X(:,2))-0.05*abs(min(X(:,2))),  max(X(:,2))+0.05*abs(max(X(:,2)))];
    % Calculate the decision boundary line
    plot_y = (-1./theta(3)).*(theta(2).*plot_x + theta(1));
    % Plot
    plot(plot_x, plot_y);    
    
    % Labels and Legend
    xlabel('Feature 1');
    ylabel('Feature 2');
    legend('Positive', 'Negative', 'Decision Boundary');    % Specified in plot order
    hold off;

elseif n == 3
    % Find Indices of Positive and Negative Examples
    pos = find(y == 1); 
    neg = find(y == 0);

    % Plot Examples
    figure;
    hold on;
    scatter3(X(pos, 2), X(pos, 3), X(pos, 4), 'k+','LineWidth', 2);
    scatter3(X(neg, 2), X(neg, 3), X(neg, 4), 'ko', 'MarkerFaceColor', 'y');
   
    u = linspace(min(X(:,2)), max(X(:,2)), 100); 
    v = linspace(min(X(:,3)), max(X(:,3)), 100); 
    z = zeros(length(u), length(v)); 
   
    for i = 1:length(u)
       for j = 1:length(v)
           z(i,j) = (-1./theta(4)).*(theta(3).*v(i) + theta(2).*u(j) + theta(1));
       end
    end
    
    % Surf
    z = z';
    surf(u,v,z);
    hold off;
   
    % Labels and Legend
    xlabel('Feature 1');
    ylabel('Feature 2');
    zlabel('Feature 3');
    legend('Positive', 'Negative', 'Decision Boundry');    % Specified in plot order
    
else
    disp('The dimension of model is greater than 3 => Not possible to be plotted on screen');

end
end
