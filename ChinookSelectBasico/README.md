# Restauración de la BD Chinook y SELECT básicos

## Seleccionar todas las columnas de una tabla.
~~~
SELECT * FROM customer;
~~~
~~~
1,Luís,Gonçalves,Embraer - Empresa Brasileira de Aeronáutica S.A.,"Av. Brigadeiro Faria Lima, 2170",São José dos Campos,SP,Brazil,12227-000,+55 (12) 3923-5555,+55 (12) 3923-5566,luisg@embraer.com.br,3
2,Leonie,Köhler,,Theodor-Heuss-Straße 34,Stuttgart,,Germany,70174,+49 0711 2842222,,leonekohler@surfeu.de,5
3,François,Tremblay,,1498 rue Bélanger,Montréal,QC,Canada,H2G 1A7,+1 (514) 721-4711,,ftremblay@gmail.com,3
4,Bjørn,Hansen,,Ullevålsveien 14,Oslo,,Norway,0171,+47 22 44 22 22,,bjorn.hansen@yahoo.no,4
5,František,Wichterlová,JetBrains s.r.o.,Klanova 9/506,Prague,,Czech Republic,14700,+420 2 4172 5555,+420 2 4172 5555,frantisekw@jetbrains.com,4
~~~

## Seleccionar solo algunas columnas de una tabla.
~~~
SELECT first_name, company FROM customer;
~~~
~~~
Luís,Embraer - Empresa Brasileira de Aeronáutica S.A.
Leonie,
François,
Bjørn,
František,JetBrains s.r.o.
~~~

## Seleccionar registros de diferentes tablas sin filtros.
~~~
SELECT * FROM customer, album;
~~~
~~~
1,Luís,Gonçalves,Embraer - Empresa Brasileira de Aeronáutica S.A.,"Av. Brigadeiro Faria Lima, 2170",São José dos Campos,SP,Brazil,12227-000,+55 (12) 3923-5555,+55 (12) 3923-5566,luisg@embraer.com.br,3,1,For Those About To Rock We Salute You,1
2,Leonie,Köhler,,Theodor-Heuss-Straße 34,Stuttgart,,Germany,70174,+49 0711 2842222,,leonekohler@surfeu.de,5,1,For Those About To Rock We Salute You,1
~~~

## Usar LIMIT para mostrar solo algunos resultados.
~~~
SELECT * FROM customer LIMIT 5;
~~~
~~~
1,Luís,Gonçalves,Embraer - Empresa Brasileira de Aeronáutica S.A.,"Av. Brigadeiro Faria Lima, 2170",São José dos Campos,SP,Brazil,12227-000,+55 (12) 3923-5555,+55 (12) 3923-5566,luisg@embraer.com.br,3
2,Leonie,Köhler,,Theodor-Heuss-Straße 34,Stuttgart,,Germany,70174,+49 0711 2842222,,leonekohler@surfeu.de,5
3,François,Tremblay,,1498 rue Bélanger,Montréal,QC,Canada,H2G 1A7,+1 (514) 721-4711,,ftremblay@gmail.com,3
4,Bjørn,Hansen,,Ullevålsveien 14,Oslo,,Norway,0171,+47 22 44 22 22,,bjorn.hansen@yahoo.no,4
5,František,Wichterlová,JetBrains s.r.o.,Klanova 9/506,Prague,,Czech Republic,14700,+420 2 4172 5555,+420 2 4172 5555,frantisekw@jetbrains.com,4
~~~

## Seleccionar todas las filas de una tabla utilizando *.
~~~
SELECT * FROM album;
~~~
~~~
1,For Those About To Rock We Salute You,1
2,Balls to the Wall,2
3,Restless and Wild,2
4,Let There Be Rock,1
5,Big Ones,3
~~~