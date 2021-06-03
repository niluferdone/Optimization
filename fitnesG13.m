function[z]= fitnesG13(x)
%Fitnes=fobject +P
R=100;
z=PrG13f(x)+sum(R*max(0,PrG13c(x)).^2);