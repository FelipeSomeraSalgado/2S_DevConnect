--DML
USE db_devconnect;

INSERT INTO tb_usuario (nomecompleto ,nomeusuario ,email , senha ,foto_perfil_url)
VALUES
('Felipe Somera Salgado', '@Salgado_22', 'felipessalgado@gmail.com', '1356', 'www.com.br');


SELECT * FROM tb_usuario;

INSERT INTO tb_publicacao (descricao, imagem_url, data_publicacao, id_usuario)
VALUES
('Eu gosto de jogar video game', 'www.com.br', '12-03-2024','1');


SELECT * FROM tb_publicacao;

INSERT INTO tb_curtida (id_usuario, id_publicacao)
VALUES
(1, 2);


SELECT * FROM tb_curtida;

INSERT INTO tb_comentario (texto, data_comentario, id_usuario, id_publicacao)
VALUES
('Eu estava lá em jaguariuna', '14/03/2024', '1','2');


SELECT * FROM tb_comentario;

INSERT INTO tb_seguidor (id_seguir, id_seguidor, id_usuario)
VALUES
(3, 4, 1);


SELECT * FROM tb_seguidor;