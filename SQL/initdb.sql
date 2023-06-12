/* Database creation querys */
CREATE TABLE tb_duvidas (id VARCHAR(13) PRIMARY KEY,
                         ra VARCHAR(6),nome VARCHAR(40),
                         contato VARCHAR(40),
                         duvida TEXT,
                         lista VARCHAR(2),
                         ex VARCHAR(2),
                         status integer,
                         date timestamp DEFAULT current_timestamp,
                         comentario TEXT,
                         monitor VARCHAR(20),
                         titulo TEXT,
                         email VARCHAR(255)
                         );

CREATE TABLE tb_listas (id SERIAL PRIMARY KEY, ex integer, ativa boolean);

CREATE TABLE tb_users (ra text PRIMARY KEY, nome text, email text);

/* Dummy user and task for testing */
INSERT INTO tb_listas VALUES (0,5,true);
INSERT INTO tb_users VALUES ('999999',  'Tester', 'tester@tester.com');