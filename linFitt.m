function [slope] = linFitt(X,Y,N)
sum_X=sum(X);
sum_Y=sum(Y);
XY=X.*Y;
XX=X.*X;
YY=Y.*Y;
sum_XY=sum(XY);
sum_XX=sum(XX);
sum_YY=sum(YY);
norm=(N*sum_XX)-(sum_X*sum_X);
c = ((sum_XX*sum_Y) - (sum_X*sum_XY))/norm;
slope = ((N*sum_XY) - (sum_X*sum_Y))/norm;