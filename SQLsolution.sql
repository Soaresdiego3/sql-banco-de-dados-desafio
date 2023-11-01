SELECT * FROM Filmes
SELECT * FROM Atores
SELECT * FROM ElencoFilme
SELECT * FROM FilmesGenero
SELECT * FROM Generos

-- Objetivo 1. - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes


-- Objetivo 2. - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao
	FROM Filmes
	ORDER BY Ano ASC


-- Objetivo 3. - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano FROM Filmes 
	WHERE Nome = 'De volta para o futuro'


-- Objetivo 4. - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao 
	FROM Filmes
	WHERE Ano = 1997


-- Objetovo 5. - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao 
	FROM Filmes
	WHERE Ano > 2000


-- Objetovo 6. - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao
	FROM Filmes
	WHERE Duracao BETWEEN 100 AND 150
	ORDER BY Duracao ASC


-- Objetovo 7. - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) Quantidade
	FROM Filmes
	GROUP BY Ano
	ORDER BY Quantidade DESC


-- Objetivo 8. - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome, Genero
	FROM Atores 
	WHERE Genero = 'M'


-- Objetivo 9. Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome, Genero
	FROM Atores 
	WHERE Genero = 'F'
	ORDER BY PrimeiroNome


-- Objetovo 10. - Buscar o nome do filme e o gênero
SELECT Filmes.Nome, Generos.Genero
	FROM FilmesGenero 
	INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id 
	INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id


-- Objetovo 11. - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Filmes.Nome, Generos.Genero
	FROM FilmesGenero
	INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
	INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id 
	WHERE Generos.Genero = 'Mistério'



-- Objetivo 12. - Buscar o nome do filme e os atores, trazando o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
	FROM Filmes
	INNER JOIN Atores ON Filmes.Id = Atores.Id 
	INNER JOIN ElencoFilme ON Atores.Id = ElencoFilme.Id
	
