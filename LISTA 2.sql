-- LISTA 2 
-- EXERICIO 1
INSERT INTO cliente(rg,nome,endereco,bairro,cidade,estado,telefone,email,datanascimento,sexo) 
VALUES ('22212323480', ' Dino da Silva Sauro', 'Rua Joaquim Silveira,34', 'Jd. Romano', 'São Roque', 'SP', '1111111', 'dino@ig.com.br', '2024-11-01', 'M');

-- EXERICIO 2
INSERT INTO locacao(cod_cliente, cod_filme, data_retirada, data_devolucao) 
VALUES (11, 10, '2024-11-01 10:00:00', '2024-11-04 10:00:00'),  -- Amadeus
(11, 8, '2024-11-01 10:00:00', '2024-11-04 10:00:00');  -- Constantine

-- EXERICIO 3
INSERT INTO filme(filme, cod_categoria, diretor, valor_locacao, reservada) 
VALUES ('Missão Impossível 3', 1, 'J.J. Abrams', 7.00, 'n');

SELECT cod_filme FROM filme WHERE filme = 'Missão Impossível 3';
INSERT INTO locacao(cod_cliente, cod_filme, data_retirada, data_devolucao) 
VALUES 
(11, 10, '2024-11-01 10:00:00', '2024-11-04 10:00:00'),  -- Amadeus
(11, 8, '2024-11-01 10:00:00', '2024-11-04 10:00:00'),   -- Constantine
(11, 11, '2024-11-01 10:00:00', '2024-11-04 10:00:00');

-- EXERCICIO 4
UPDATE categoria 
SET nome_categoria = 'Animação' 
WHERE nome_categoria = 'Desenho';

-- EXERCICIO 5
UPDATE filme 
SET reservada = 's' 
WHERE diretor = 'Terry Gilliam';

-- EXERCICIO 6
UPDATE cliente 
SET endereco = 'Rua Guilherme Orlando, 333', 
    bairro = 'Jardim Santa Rosália', 
    telefone = '1532145543' 
WHERE nome = 'Rafael Nunes Sales';

-- EXERCICIO 7 
UPDATE categoria 
SET nome_categoria = UPPER(nome_categoria);

-- EXECICIO 8
UPDATE filme 
SET valor_locacao = valor_locacao * 0.5 
WHERE filme IN ('A Mexicana', 'A Verdade Nua e Crua', 'Austrália');

-- EXERCICIO 9
DELETE FROM categoria 
WHERE cod_categoria NOT IN (SELECT DISTINCT cod_categoria FROM filme);

-- EXERCICIO 10
INSERT INTO cliente(rg,nome,endereco,bairro,cidade,estado,telefone,email,datanascimento,sexo) 
VALUES ('111111111', 'Gabriel Alesiunas', 'Rua 01, 157', 'São Luiz', 'Cerquilho', 'SP', '997671792', '247579@facens.br', '2005-11-21', 'M');