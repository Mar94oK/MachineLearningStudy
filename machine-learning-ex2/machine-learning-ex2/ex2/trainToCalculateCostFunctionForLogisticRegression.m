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
 