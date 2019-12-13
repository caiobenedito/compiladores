Program trocoCompra;
{Programa para retorno da quantidade exata de troco, com o uso do menor número de notas e moedas) ***Em Reais***.}
CONST
cemMil = 100000;
cincoMil = 5000;
doisMil = 2000;
mil = 1000;
quinhentos = 500;
duzentos = 200;
cem = 100;
cinquenta = 50;
vinteECinco = 25;
dez = 10;
cinco = 5;
hum = 1;
var a,b,c,d,e,humReal,f,g,cinquentaCentavos,h,vinteECincoCentavos,j,dezCentavos,m,cincoCentavos,o,humCentavo,totalCompra,
pagamento,troco,cemReais,cinquentaReais,vinteReais,dezReais,cincoReais,doisReais,somaValores:INTEGER;
Begin
        writeln ('Qual o valor da compra? (Para 2,50, digite 250.)');
        readln (totalCompra);
        writeln ('Qual o valor dado pelo cliente? (Para 2,50, digite 250.)');
        readln (pagamento);
        troco  :=  (pagamento - totalCompra);
        {calcula as notas de 100 reais}
        cemReais :=  troco div cemMil;
        a  :=  troco mod cemMil;
        {calcula as notas de 50 reais}
        cinquentaReais :=  a div cincoMil;
        b  :=  a mod cincoMil;
        {calcula as notas de 20 reais}
        vinteReais :=  b div doisMil;
        c  :=  b mod doisMil;
        {calcula as notas de 10 reais}
        dezReais :=  c div mil;
        d  :=  c mod mil;
        {calcula as notas de 5 reais}
        cincoReais :=  d div quinhentos;
        e  :=  d mod quinhentos;
        {calcula as notas de 2 reais}
        doisReais :=  e div duzentos;
        f  :=  e mod duzentos;
        {calcula as moedas de 1 real}
        humReal :=  f div cem;
        g  :=  f mod cem;
        {calcula as moedas de 50 centavos}
        cinquentaCentavos :=  g div cinquenta;
        h  :=  g mod cinquenta;
        {calcula as moedas de 25 centavos}
        vinteECincoCentavos := h div vinteECinco;
        j := h mod vinteECinco;
        {calcula as moedas de 10 centavos}
        dezCentavos := j div dez;
        m := j mod dez;
        {calcula as moedas de 5 centavos}
        cincoCentavos := m div cinco;
        o := m mod cinco;
        {calcula as moedas de 1 centavo}
        humCentavo := o div hum;
        somaValores := (humReal + (doisReais*2) + (cincoReais*5) + (dezReais*10) + (vinteReais*20) + (cinquentaReais*50) + (cemReais*100));
                if (troco <= 1000) then 
                        begin
                                if (somaValores = 0) then
                                        writeln ('O troco a ser dado ao cliente eh: ',g,' Centavos.')
                                else if (somaValores = 1) then
                                        writeln ('O troco a ser dado ao cliente eh: ',somaValores,' Real e ',g,' Centavos.')
                                else
                                        writeln ('O troco a ser dado ao cliente eh: ',somaValores,' Reais e ',g,' Centavos.');
                        end;
                if (troco > 1000) then
                                        writeln ('O troco a ser dado ao cliente eh: ',somaValores,' Reais e ',g,' Centavos.');
        writeln ('Notas de 100 reais: ',cemReais);
        writeln ('Notas de 50 reais: ',cinquentaReais);
        writeln ('Notas de 20 reais: ',vinteReais);
        writeln ('Notas de 10 reais: ',dezReais);
        writeln ('Notas de 5 reais: ',cincoReais);
        writeln ('Notas de 2 reais: ',doisReais);
        writeln ('Moedas de 1 real: ',humReal);
        writeln ('Moedas de 50 centavos: ',cinquentaCentavos:0);
        writeln ('Moedas de 25 centavos: ',vinteECincoCentavos:0);
        writeln ('Moedas de 10 centavos: ',dezCentavos:0);
        writeln ('Moedas de 5 centavos: ',cincoCentavos:0);
        writeln ('Moedas de 1 centavo: ',humCentavo:0);
End.