%%
clc
clear
r = rand(5,4);
y = round(r);
l = [];
for i=1:20
    l = [l r(i)];
end    
l =round(r*25)
%%
clc
clear
prompt= 'Ingresar palabra';
q = 0;
str=inputdlg(prompt);
t = char(str); 
m = length(t);
for i=0:m 
 if(t(m-i:m-i)== t(i+1:i+1))
     q = q+1;
     if(q == m)
         disp('es polindromo')
         break
     end
     
 else
     disp('no es polindromo');
     break
 end    
end