%% limpieza variable
clc
clear
%% genera los vectories 
ANNOS = [1971 1972 1973 1974 1975 1976 1977 1978 1979 1980 1981 1982 1983 1984 1985 1986 1987 1988 1989 1990 1991 1992 1993 1994 1995 1996 1997 1998 1999 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012]';
TEMPERATURA = [16.18 16.07 16.24 16.25 16.11 16.08 16.09 16.27 16.20 16.30 16.31 16.29 16.27 16.35 16.25 16.22 16.27 16.40 16.36 16.32 16.43 16.42 16.33 16.34 16.37 16.43 16.41 16.55 16.61 16.43 16.45 16.55 16.59 16.62 16.59 16.60 16.57 16.50 16.48 16.59 16.60 16.50]';
x = 1971:0.01:2012;
%% algoritmo pchip
figure
y = interp1(ANNOS,TEMPERATURA,x,'pchip');
plot(ANNOS,TEMPERATURA,'r*',x,y), grid on,legend('datos iniciales', 'Metodo pchip');
%% algoritmo spline
figure
y1 = interp1(ANNOS,TEMPERATURA,x,'spline');
plot(ANNOS,TEMPERATURA,'r*',x,y1), grid on,legend('datos iniciales', 'Metodo spline');
%% algoritmo linear
figure
y2 = interp1(ANNOS,TEMPERATURA,x,'linear');
plot(ANNOS,TEMPERATURA,'r*',x,y2), grid on,legend('datos iniciales', 'Metodo linear');
%% algoritmo cubic
figure
y3 = interp1(ANNOS,TEMPERATURA,x,'next');
plot(ANNOS,TEMPERATURA,'r*',x,y3), grid on,legend('datos iniciales', 'Metodo cubic');
%% Comparacion metodos
tabla = table(ANNOS,TEMPERATURA)
figure
hold on
plot(ANNOS,TEMPERATURA,'r*',x,y, 'g'), grid on,legend('datos iniciales', 'Metodo pchip');
plot(ANNOS,TEMPERATURA,'r*',x,y1, 'k'), grid on,legend('datos iniciales', 'Metodo spline');
plot(ANNOS,TEMPERATURA,'r*',x,y2, 'b'), grid on,legend('datos iniciales', 'Metodo linear');
plot(ANNOS,TEMPERATURA,'r*',x,y3, 'r'), grid on,legend('datos iniciales', 'Metodo cubic');
hold off

R = polyfit(ANNOS,TEMPERATURA,5);
num = 1971;
RE = polyval(R, num)




