clear
clc

%Kullanilacak optimizasyon komutlarý

%1-simulannealbnd
%[x,fmin] = simulannealbnd(fun,x0,lb,ub)
%fun kýsýtsýz problemler için amaç fonksiyonu kýsýtlý problemler için uygunluk fonksiyonu 
%x0:Baþlangýç deðeri(%Aralýkta deðer olmalý)(Deðiþken sayýsý boyutunda olmalý)(5 deðiþken var ise ones(5,1))
%lb: alt sýnýr(%Deðiþken sayýsý boyutunda)(Deðiþken sayýsý n olmak üzere)
%ub:üst sýnýr 

%2-ga(Genetik Algoritma)
%x = ga(fitnessfcn,nvars,[],[],[],[],LB,UB)
%fitnessfcn: uygunluk fonksiyonu
% nvars:deðiþken sayýsý
% LB:alt sýnýr
% UB:üst sýnýr
% 
% %3-particleswarm
% [x,fval] = particleswarm(fun,nvars,lb,ub)
% %fun:amaç fonksiyonu veya uygunluk fonksiyonu
% %nvars:Deðiþken sayýsý
% lb:altsýnýr
% ub:üstsýnýr



%Kisitli problemler için örnek

%G13 problemi (Sayma ödevindeki problem)
%Search Space: li ? xi ? ui, i = 1, …, 5,                                
% u= (2.3,2.3,3.2,3.2,3.2), l = -u.
%The global minima: x = (-1.717143, 1.595709, 1.827247, -0.7636413, -0.763645) , f (x) = 0.0539498
clc
clear
sonuclar=[];
for i=1:5
tic
%[x,y]=simulannealbnd(@fitnesG13,ones(5,1));
[x,y]=ga(@fitnesG13,5);
%[x,y]=particleswarm(@fitnesG13,5);
sure=toc;
a=[x';y;sure];% ga için
%a=[x;y;sure];%simulated için
sonuclar=[sonuclar a];
end
xlswrite('g13.xls',sonuclar)
xlswrite('g13_ga.xls',sonuclar)
% clear
% clc
%Kisitsiz problemler için örnek
%Unconstrained optimization test problems
%13. Levy Problem
%Search domain: -10 ? xi ? 10, i = 1, 2, . . . , n.
%n=30;
% The global minima: x* =  (1, …, 1), f(x) = 0.
clear
clc
sonuclar=[];
for i=1:10
tic
%[x,y]=simulannealbnd(@levy,rand(10,1),-10*ones(10,1),10*ones(10,1));
[x,y]=ga(@levy,10,[],[],[],[],-10*ones(10,1),10*ones(10,1));
%[x,y]=particleswarm(@levy,30,);
sure=toc;
a=[x';y;sure];% ga için
%a=[x;y;sure];%simulated için
sonuclar=[sonuclar a];
end
%xlswrite('sa_sonuc.xls',sonuclar)
xlswrite('ga_sonuc.xls',sonuclar)
