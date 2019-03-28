clear
clc

% P?�klad 1

% zeros - Vytvo?� matici nebo pole o N prvc�ch, kde ka�d� prvek je roven 0. 
% ones - Vytvo?� matici nebo pole o N prvc�ch, kde ka�d� prvek je roven 1. 
% rand � Vytvo?� matici prvk? n�hodn�ch hodnot v intervalu (0, 1). 
% sqrt � vypo?�t� odmocninu ze zadan�ho ?�sla. Pokud je ?�slo z�porn�, v�po?et vr�t� komplexn� ?�slo. 
% clc � Sma�e v�echen text z �command window� a p?esune kurzor do lev�ho horn�ho rohu. 
% tic � Spust� ?asoav?. Tic(0) spust� ?asova? od 0. 
% toc � Vyp�e uplynul� ?as od zavol�n� funkce Tic. 
% sin � Sin(x) vypo?�t� sinus ?�sla x v radi�nech. 
% pi � vyp�e hodnotu ?�sla pi. 

% P?�klad 2

A = linspace(0,31,10)

% prvnich a poslednich 5 prvku vypiseme prikazy x = A(1:5) a y = A(6:10)
% kde x je prnich 5 prvku a y je poslednich 5 prvku.

x = A(1:5)

y = A(6:10)

% P?�klad 3 
z = 0+255*rand(10);
B = round(z)

% P?�klad 4

vektorovy_soucet = B(:,1)+B(:,end)

% P?�klad 5 

matice = A*B           
matice_2 = B*A'         

% P?�klad 6 

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

% P?�klad 7

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

