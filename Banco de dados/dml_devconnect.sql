--DML
USE db_devconnect;

INSERT INTO tb_usuario (nomecompleto ,nomeusuario ,email , senha ,foto_perfil_url)
VALUES
('Felipe Somera Salgado', '@Salgado_22', 'felip@sal.com', '1356', 'www.com.br');


SELECT * FROM tb_usuario;

INSERT INTO tb_publicacao (descricao, imagem_url, data_publicacao, id_usuario)
VALUES
('Eu gosto de jogar video game', 'www.com.br', '12/03/2024',12);


SELECT * FROM tb_publicacao;

INSERT INTO tb_curtida (id_usuario, id_publicacao)
VALUES
(12, 2);


SELECT * FROM tb_curtida;

INSERT INTO tb_comentario (texto, data_comentario, id_usuario, id_publicacao)
VALUES
('Eu estava lá em jaguariuna', '2024/03/14', 12,2);


SELECT * FROM tb_comentario;

INSERT INTO tb_seguidor (id_seguir, id_seguidor, id_usuario)
VALUES
(1, 2, 12);


SELECT * FROM tb_seguidor;