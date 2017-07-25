%calcula o somatorio dos X^i*y
function saida = SomatotioXY(x, y, m)
    si = size(y);
    tam = si(2);    
    temp = 0;
    for i=1:tam
        temp = temp + (x(i)^m) * y(i);
    end    
    saida = temp;
end