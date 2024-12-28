clear %clears variables in your workspace
close all %closes all open plots
%The above commands are optional 

%This is a script that will read in a file and plot the data

%Using a '%' makes everything that comes after a comment
%comments are not a part of the script 

XYdat=readmatrix('XYdat.txt'); %This reads data from a text file into a matrix

X=XYdat(:,1);
Y=XYdat(:,2);

figure(1)
plot(X,Y)

figure(2)
plot(X,Y,'Color','blue') %blue is one of 8 built in matlab color names
%plot(X,Y,'Color','b') %short name
%plot(X,Y,'Color',[0,0,1]) %RGB format, can plot any color

figure(3)
plot(X,Y,'Color',[0,0,1],'LineWidth',2,'LineStyle','-.')
hold on %allows you to plot multiple datasets on the same plot
plot(X,X,'Color',[1,0,0],'LineWidth',2,'LineStyle',':')
hold off %this removes the hold 
legend('XY','XX') %allows you to define each plot line 

figure(4)
plot(X,Y,'Color',[0,0,1],'LineWidth',2,'LineStyle','-.')
axis([1,10,0,12]) %allows you to define axis range xmin, xmas, ymin, ymax
set(gcf,'color','w') %defines the background of the plot color
set(gca, 'FontSize', 16,'FontWeight','Normal') %defines the size of the writing on the plot
xlabel('Datapoint number') 
ylabel('Speed [m/s]')
title('X Y dataset')


%Find the size of an array or matrix 
[row, column]=size(X);

%Matrix Multiplication versus element by element

%transpose matrix with '
Xt=X';
MatrixMult=X*Xt;
MatrixMult2=Xt*X;
elementX=X.*X;
X10=X.*10;




%Finding the max value of Y

[MaxY,ind2]=max(Y)
