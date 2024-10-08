--1
SELECT NOME, ANO FROM FILMES;

--2
SELECT * FROM FILMES ORDER BY ANO;

--3
SELECT * FROM FILMES WHERE NOME = 'De Volta para o Futuro';

--4
SELECT * FROM FILMES WHERE ANO = 1997;

--5
SELECT * FROM FILMES WHERE ANO > 2000;

--6
SELECT * FROM FILMES WHERE DURACAO > 100 AND DURACAO < 150 ORDER BY DURACAO;

--7
SELECT ANO, COUNT(*) AS QUANTIDADE FROM FILMES GROUP BY ANO ORDER BY (QUANTIDADE) DESC;

--8
SELECT * FROM ATORES WHERE GENERO = 'M';

--9
SELECT * FROM ATORES WHERE GENERO = 'F' ORDER BY PRIMEIRONOME;

--10
SELECT F.NOME, G.GENERO FROM FILMES F JOIN FILMESGENERO FG ON F.ID = FG.IDFILME JOIN GENEROS G ON FG.IDGENERO = G.ID;

--11
SELECT F.NOME, G.GENERO FROM FILMES F JOIN FILMESGENERO FG ON F.ID = FG.IDFILME JOIN GENEROS G ON FG.IDGENERO = G.ID WHERE G.GENERO = 'Mist�rio';

--12
SELECT F.NOME, A.PRIMEIRONOME, A.ULTIMONOME, E.PAPEL FROM FILMES F JOIN ELENCOFILME E ON F.ID = E.IDFILME JOIN ATORES A ON A.ID = E.IDATOR;
