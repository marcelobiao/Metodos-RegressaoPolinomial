clc;
%Entradas Desafio 
x = [3 4 5 7 8 9 11 12];
y = [1.6 3.6 4.4 3.4 2.2 2.8 3.8 4.6];
m = 3;

%Entrada Do exercicio de exemplo
%x = [0 1 2 3 4 5];
%y = [2.1 7.7 13.6 27.2 40.9 61.1];
%m=2;

[a, ErroPadrao, Determinacao, Correlacao] = RegressaoPolinomial(x, y, m);
fprintf('Resultado obtido com um polinomio de grau %d\n',m);
fprintf('Os coeficientes do polinomio são:\n');
fprintf('a0:\t %f\n', a(1));
fprintf('a1:\t %f\n', a(2));
fprintf('a2:\t %f\n\n', a(3));

fprintf('Erro Padrão:       \t%f\n', ErroPadrao);
fprintf('Coef Determinação: \t%f%%\n', Determinacao*100);
fprintf('Coef Correlação: \t%f%%\n', Correlacao*100);