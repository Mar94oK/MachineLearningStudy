m = 19; % 19 attempts to catch the fish 
%theta 1 ---> use spinning
%theta 2 ---> use simple fishing rod
%theta 3 ---> use fly fishing approach
%all of them - as parts of the whole time fishing

%y - results

dataX = [ 0.3, 0.2, 0.5;
         0.1, 0.5, 0.4;
         0.2, 0.3, 0.5;
         0.8, 0.1, 0.1;
         0.7, 0.2, 0.1;
         0.5, 0.3, 0.2;
         0.1, 0.7, 0.3;
         0.5, 0.4, 0.1;
         0.4, 0.2, 0.4;
         0.6, 0.3, 0.1;
         0.1, 0.6, 0.3;
         0.4, 0.3, 0.3;
         0.5, 0.2, 0.3;
         0.3, 0.5, 0.2;
         0.1, 0.2, 0.7;
         0.2, 0.7, 0.1;
         0.7, 0.1, 0.2;
         0.4, 0.5, 0.1;
         0.1, 0.8, 0.1;
 ]
 
 dataY = [ 1;
           1;
           1;
           0;
           0;
           0;
           0;
           0;
           1;
           0;
           1;
           0;
           0;
           0;
           0;
           1;
           0;
           0;
           0;
 ]
 
 
 %extend raw data with ones for calculation!
 dataXextenedwithOnes = [ones(size(dataX, 1), 1) dataX];
 
 positive = find(dataY==1);
 negative = find(dataY==0);
 
 %this is incorrect plot using only first two columns of X!
 %we can adjust it here for exmple using sum of first n parameters with resopect to last parameter and so on.
 plotData(dataX, dataY);
 
 
 %after building graph, assume we have 

 extTheta = [ 0;
              -1;
              -2;
              3]
      
  
  disp(dataXextenedwithOnes);
  disp(dataY);

out = sprintf('%0.5f ', costFunction(extTheta, dataXextenedwithOnes, dataY));

disp(out); %this displays the cost! So for the selected parameters of theta we have this cost.
disp("Done!");
%disp(Value);   
%disp(grad);      


%Keep goig and try to minimize J(theta)
%  Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 1500);

%set initial theta ---> all zaroes
% Initialize fitting parameters
initial_theta = zeros(4, 1); %four columns! (n +1 ) with respect to n == number of different features

%  Run fminunc to obtain the optimal theta
%  This function will return theta and the cost 
[theta, cost] = ...
	fminunc(@(t)(costFunction(t, dataXextenedwithOnes, dataY)), initial_theta, options);
      
 %Display results
 % Print theta to screen
fprintf('Cost at theta found by fminunc: %f\n', cost);
fprintf('Expected cost (approx): 0.203\n');
fprintf('theta: \n');
fprintf(' %f \n', theta);

% Plot Boundary - not working 17.04.2020 for matrix with n features > 2

disp("Debug===")

disp(size(theta))
disp(size(dataXextenedwithOnes))
disp(size(dataY))

disp("===Debug")  


%after we have theta ---> we actually have an equation to decide whether it is "positive" ot "negative" result
%so can build with respect, for example third parameter!

plotDataWithRespectToThird(dataXextenedwithOnes, dataY, theta);


%plotDecisionBoundary(theta, dataXextenedwithOnes, dataY);


%Prediction:
disp("Prediction")
disp("===================")

val = predict(theta, dataXextenedwithOnes);

disp(val);

disp("===================")

disp("Prediction Test Fisrt")
disp("===================")

XTest = [1 0.1 0.1 0.8];
val = predict(theta, XTest);

disp(val);

disp("===================")
