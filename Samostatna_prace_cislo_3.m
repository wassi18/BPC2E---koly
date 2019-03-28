clear
clc

% P?íklad 1

% zeros - Vytvo?í matici nebo pole o N prvcích, kde každý prvek je roven 0. 
% ones - Vytvo?í matici nebo pole o N prvcích, kde každý prvek je roven 1. 
% rand – Vytvo?í matici prvk? náhodných hodnot v intervalu (0, 1). 
% sqrt – vypo?ítá odmocninu ze zadaného ?ísla. Pokud je ?íslo záporné, výpo?et vrátí komplexní ?íslo. 
% clc – Smaže všechen text z „command window“ a p?esune kurzor do levého horního rohu. 
% tic – Spustí ?asoav?. Tic(0) spustí ?asova? od 0. 
% toc – Vypíše uplynulí ?as od zavolání funkce Tic. 
% sin – Sin(x) vypo?ítá sinus ?ísla x v radiánech. 
% pi – vypíše hodnotu ?ísla pi. 

% P?íklad 2

A = linspace(0,31,10)

% prvnich a poslednich 5 prvku vypiseme prikazy x = A(1:5) a y = A(6:10)
% kde x je prnich 5 prvku a y je poslednich 5 prvku.

x = A(1:5)

y = A(6:10)

% P?íklad 3 
z = 0+255*rand(10);
B = round(z)

% P?íklad 4

vektorovy_soucet = B(:,1)+B(:,end)

% P?íklad 5 

matice = A*B           
matice_2 = B*A'         

% P?íklad 6 

t = linspace(0,pi,50);
X = sin(t);
Y1 = 1*X;
Y2 = 2*X;
Y3 = 3*X;

plot(t,Y1,'b-*')
hold on
plot(t,Y2,'m:+')
hold on
plot(t,Y3,'k--d')
legend('sin','2*sin','3*sin')
grid on

% P?íklad 7

figure(2)

subplot(3,1,1)
plot(t,Y1,'b-*')
title('sinus')
xlabel('T [rad]')
ylabel('A [-]')
grid on

 
subplot(3,1,2)
plot(t,Y2,'m:+')
title('2*sinus')
xlabel('T [rad]')
ylabel('A [-]')
grid on

subplot(3,1,3)
plot(t,Y3,'k--d')
title('3*sinus')
xlabel('T [rad]')
ylabel('A [-]')
grid on

