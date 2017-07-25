function [a, ErroPadrao, Determinacao, Correlacao] = RegressaoPolinomial(x, y, m)
    %Inicializando Matrizes
    somX = zeros(m + 1, 3);
    somXY = zeros(1, m + 1);
    
    %Verificando o tamanho dos vetores x e y
    n = size(x);
    tamX = n(2);
    n = size(y);
    tamY = n(2);
    if (tamX~=tamY)
        error('Vetores de tamanho diferentes');
    end
    
    %Calculando Somatorio de x^i e do x^i*y
    for i=1:m+1
        base = i-1;
        for j=1:3
            atual = base+j-1;       
            somX(i, j) = SomatorioX(x, atual);
        end        
        somXY(i) = SomatotioXY(x, y, base);
    end
    
    %Resolvendo sistema
    a = linsolve(somX, somXY');
    
    %Calculo do Sr e St
    Sr = 0;
    St = 0;
    for i=1:tamX
        Sr = Sr+((y(i)-a(1)-(a(2)*x(i))-(a(3)*x(i)^2))^2 );
    end
    yMedio=mean(y);
    for i=1:tamX
        St = St+((y(i)-yMedio)^2);
    end
    
    %Calculo Do erroPadrao e dos coeficientes de determinacao e corelacao
    ErroPadrao = sqrt(Sr/(tamX -(m+1)));  
    Determinacao = (St-Sr)/St;
    Correlacao   = sqrt(Determinacao);
end