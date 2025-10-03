--DDL
CREATE DATABASE db_devconnect;

USE db_devconnect

GO


CREATE TABLE tb_usuario(
 id     INT       IDENTITY(1,1)           PRIMARY KEY
 ,nomecompleto    NVARCHAR(255)              NOT NULL 
 ,nomeusuario     NVARCHAR(50)   UNIQUE      NOT NULL
 ,email           NVARCHAR(20)   UNIQUE      NOT NULL
 ,senha           NVARCHAR(10)               NOT NULL
 ,foto_perfil_url NVARCHAR(15)               NULL
);

GO

SELECT * FROM tb_usuario;

CREATE TABLE tb_publicacao(
  id     INT       IDENTITY(1,1)          PRIMARY KEY
  ,descricao       NVARCHAR(400)          NOT NULL
  ,imagem_url      NVARCHAR(15)           NULL
  ,data_publicacao DATE                   NOT NULL
  ,id_usuario       INT                    NOT NULL

  FOREIGN KEY(id_usuario) REFERENCES tb_usuario(id)
  );

  SELECT * FROM tb_publicacao;

CREATE TABLE tb_curtida(
   id     INT       IDENTITY(1,1)          PRIMARY KEY
    ,id_usuario        INT                NOT NULL
    ,id_publicacao     INT                NOT NULL

    FOREIGN KEY(id_usuario) REFERENCES tb_usuario(id),
    FOREIGN KEY(id_publicacao) REFERENCES tb_publicacao(id)
);

SELECT * FROM tb_curtida;

CREATE TABLE tb_comentario(
  id         INT           IDENTITY(1,1)           PRIMARY KEY
    ,texto                 NVARCHAR(500)           NOT NULL
    ,data_comentario       DATE                    NOT NULL
    ,id_usuario            INT                     NOT NULL
    ,id_publicacao         INT                     NOT NULL

     FOREIGN KEY(id_usuario) REFERENCES tb_usuario(id),
     FOREIGN KEY(id_publicacao) REFERENCES tb_publicacao(id)
);

SELECT * FROM tb_comentario;

CREATE TABLE tb_seguidor(
    id_seguir       INT             NOT NULL
    ,id_seguidor    INT             NOT NULL
    ,id_usuario     INT             NOT NULL
    PRIMARY KEY(id_seguir,id_seguidor),
    FOREIGN KEY(id_usuario) REFERENCES tb_usuario(id),
    FOREIGN KEY(id_usuario) REFERENCES tb_usuario(id)
);

SELECT * FROM tb_seguidor;

  