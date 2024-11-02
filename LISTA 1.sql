-- LISTA 1
-- EXERCICIO 1
SELECT cod_filme, COUNT(*) AS quantidade_alugados
FROM locacao
GROUP BY cod_filme;

-- EXERCICIO 2
SELECT f.filme, l.data_devolucao
FROM locacao l
JOIN filme f ON l.cod_filme = f.cod_filme
JOIN cliente c ON l.cod_cliente = c.cod_cliente
JOIN categoria cat ON f.cod_categoria = cat.cod_categoria
WHERE cat.nome_categoria = 'Ação' 
  AND f.diretor = 'Richard Donner' 
  AND c.nome = 'Abimael Silva';
  
-- EXERCICIO 3
SELECT 
    filme,
    valor_locacao,
    valor_locacao * 0.10 AS desconto,
    valor_locacao - (valor_locacao * 0.10) AS valor_final
FROM 
    filme;
    
-- EXERCICIO 4
SELECT DISTINCT f.filme
FROM locacao l
JOIN cliente c ON l.cod_cliente = c.cod_cliente
JOIN filme f ON l.cod_filme = f.cod_filme
WHERE c.cidade = 'Votorantim';

-- EXERCICIO 5
SELECT f.filme, l.data_retirada
FROM locacao l
JOIN filme f ON l.cod_filme = f.cod_filme
ORDER BY l.data_retirada DESC
LIMIT 1;

-- EXERCICIO 6
SELECT SUM(valor_locacao) AS lucro_total
FROM locacao l
JOIN filme f ON l.cod_filme = f.cod_filme
WHERE f.filme = 'A vida é bela';

-- EXERCICIO 7
SELECT f.diretor, COUNT(l.cod_filme) AS quantidade_locacoes
FROM filme f
LEFT JOIN locacao l ON f.cod_filme = l.cod_filme
GROUP BY f.diretor;

-- EXERCICIO 8
SELECT DISTINCT c.nome_categoria
FROM locacao l
JOIN cliente cl ON l.cod_cliente = cl.cod_cliente 
JOIN filme f ON l.cod_filme = f.cod_filme
JOIN categoria c ON f.cod_categoria = c.cod_categoria
WHERE cl.nome = 'Maria Chiquinha';

-- EXERCICIO 9
SELECT cl.nome, cl.telefone
FROM cliente cl
JOIN locacao l ON cl.cod_cliente = l.cod_cliente
JOIN filme f ON l.cod_filme = f.cod_filme
WHERE f.filme = 'Constantine';

-- EXERCICIO 10
SELECT c.cod_categoria, c.nome_categoria, COUNT(f.cod_filme) AS quantidade_filmes
FROM categoria c
LEFT JOIN filme f ON c.cod_categoria = f.cod_categoria
GROUP BY c.cod_categoria, c.nome_categoria
ORDER BY c.cod_categoria;
