/*Grupo: 
- Rafael Vida Fernandes RM553721
- Gabriel Artacho Plasa Moreira RM553527
- Atila Rebolo Moita Da Costa RM552650*/


/* criação da tabela para os dados do usuário*/
CREATE TABLE USUARIO(
    id_usuario INTEGER PRIMARY KEY,
    nm_usuario VARCHAR2(255) NOT NULL,
    sobrenome_usuario VARCHAR2(255) NOT NULL,
    empresa VARCHAR2(255) NOT NULL,
    segmento VARCHAR2(255) NOT NULL
);

/*criação da tabela de contato*/
CREATE TABLE CONTATO(
    id_contato INTEGER PRIMARY KEY,
    email VARCHAR2(255) NOT NULL,
    telefone VARCHAR2(20)
);

/*alteração da tabela de contatos para colocar a chave
estrangeira que referencia a tabela usuarios*/
ALTER TABLE CONTATO
ADD CONSTRAINT fk_usuario_id
FOREIGN KEY (id_usuario) 
REFERENCES USUARIO(id_usuario);

