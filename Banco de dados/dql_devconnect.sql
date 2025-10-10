--DQL
USE db_devconnect;

SELECT * FROM tb_usuario
SELECT * FROM tb_publicacao
SELECT * FROM tb_comentario
SELECT * FROM tb_curtida
SELECT * FROM tb_seguidor

SELECT 
u1.nomecompleto AS seguidor, 
u2.nomecompleto AS seguido
FROM tb_seguidor s
JOIN tb_usuario u1 ON s.id_seguidor = u1.id
JOIN tb_usuario u2 ON s.id_seguir = u2.id;

--Exiba quantos seguidores possui um respectivo usuário
SELECT
u.nomecompleto AS Usuario,
COUNT (s.id_seguidor) AS quantidade_seguidor
FROM tb_seguidor s
JOIN tb_usuario u ON s.id_seguir = u.id
GROUP BY s.id_seguir,
u.nomecompleto; 

--Exiba todas as publicações contendo a descrição, o caminho da imagem, o nome de usuário
SELECT
p.descricao,
p.imagem_url,
u.nomeusuario
FROM tb_publicacao p
INNER JOIN tb_usuario u ON p.id_usuario = u.id;

--Exiba todos os comentários com o nome e o texto de uma respectiva publicação
SELECT
u.nomeusuario,
c.texto,
p.id AS id_publicacao
FROM tb_comentario c
INNER JOIN tb_usuario u ON c.id_usuario = u.id
INNER JOIN tb_publicacao p ON c.id_publicacao = p.id;

--Exiba a quantidade de curtidas de uma respectiva publicação.
SELECT
p.id,
COUNT(c.id) AS quantidade_curtidas
FROM
tb_curtida c
INNER JOIN tb_publicacao p ON c.id = p.id
GROUP BY p.id;


--Exiba todos usuários que não chegaram a fazer publicações.
SELECT
u.nomeusuario
FROM 
tb_usuario u
LEFT JOIN tb_publicacao p ON u.id = p.id_usuario
WHERE p.id_usuario IS NULL;

--Exiba todos usuários que não chegaram a fazer reações.
SELECT
u.nomeusuario
FROM 
tb_usuario u
LEFT JOIN tb_curtida c ON u.id = c.id_usuario
WHERE c.id_usuario IS NULL;

DELETE FROM tb_curtida
WHERE id_usuario = 2 AND id_publicacao = 1;
