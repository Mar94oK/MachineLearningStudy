function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on; %print everything on same graph, 'cause hold on

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%


% Find Indices of Positive and Negative Examples
%pos = find(y==1); neg = find(y == 0);
% Plot Examples
%plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, ...
%'MarkerSize', 7);
%plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', ...
%'MarkerSize', 7);

positive = find(y==1); %shows all rows where y ==1
negative = find(y==0); %shows all columns where y == 0 

disp(positive);

plot(X(positive, 1),X(positive,2), "ok",'MarkerFaceColor', 'y','LineWidth', 1, 'MarkerSize', 7); % "ob" ---> circles, blue 
plot(X(negative,1), X(negative,2), "^b", 'MarkerFaceColor', 'g','LineWidth', 1, 'MarkerSize', 7); % "*y" ---> stars, yellow; "^g" ---> green upper-faced triangles





% =========================================================================



hold off;

end
