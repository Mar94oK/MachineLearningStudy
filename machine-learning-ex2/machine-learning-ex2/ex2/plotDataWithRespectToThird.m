function plotDataWithRespectToThird(X, Y, theta)
 
disp("===plotDataWithRespectToThird")   

%build vector from the first parameters
  vectorRest = X(:,[1:3])*theta([1:3],:);
  
%build matrix where first column is parameters of theta third, and teh second - all the restoredefaultpath

  vectorThird = X(:,4) * theta(4, :);
  
%  disp(vectorThird);
%  disp(vectorRest);
  
  
  %Amlified
  res = [vectorRest, vectorThird];
  
  disp(res);
  
%  plotData(res, Y);
  
  %without const modification:
  vectorRestWithoutConst = X(:,[2:3])*theta([2:3],:);
  resWithoutConst = [vectorRestWithoutConst, vectorThird];
  
  disp(resWithoutConst);

%  plotData(resWithoutConst, Y);
  
  %raw third with respect to answer
  positive = find(Y==1); %shows all rows where y ==1
  negative = find(Y==0); %shows all rows where y == 0 
  figure; hold on; %print everything on same graph, 'cause hold on

  rawData = X(:,4);
  
  plot(rawData(positive, 1), Y(positive, 1), "ok",'MarkerFaceColor', 'y','LineWidth', 1, 'MarkerSize', 7); % "ob" ---> circles, blue 
  plot(rawData(negative, 1), Y(negative, 1), "^b", 'MarkerFaceColor', 'g','LineWidth', 1, 'MarkerSize', 7); % "*y" ---> stars, yellow; "^g" ---> green upper-faced triangles

  
disp("===plotDataWithRespectToThird")  
  
endfunction
