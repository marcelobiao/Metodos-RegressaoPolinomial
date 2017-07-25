%calcula o somatorio dos X^i
function saida = SomatorioX(x, m)
    si = size(x);
    tam = si(2);    
    temp = 0;    
    for i=1:tam
        temp = temp + x(i)^m;
    end    
    saida = temp;
end