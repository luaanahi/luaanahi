-- criando meu primeiro banco de dados
CREATE DATABASE sementebio; 

-- criando minha primeira tabela/entidade
CREATE TABLE alunos (
    matricula INTEGER PRIMARY KEY, -- primeiro o nome do atributo, depois o "comando", o que quero que o SQL faça
    nome_aluno TEXT NOT NULL, -- integer é o int do python (número inteiro), text é o string do python (letras)
    genero TEXT NOT NULL,
    email TEXT NOT NULL,
    telefone INTEGER,
    responsavel TEXT NOT NULL,
    data_nasc INTEGER
    );
    
-- criando a tabela 'professores' para dar continuidade no exercício
CREATE TABLE professores (
	id_prof INTEGER PRIMARY KEY,
    nome_prof TEXT NOT NULL,
    disciplina TEXT NOT NULL,
    turno TEXT NOT NULL,
    unidade INTEGER,
    telefone INTEGER,
    email TEXT NOT NULL
    );
    
-- criando a tabela 'unidade'
CREATE TABLE unidade (
	id_unidade INTEGER PRIMARY KEY,
    endereco TEXT NOT NULL,
    bairro TEXT NOT NULL,
    telefone TEXT NOT NULL,
    diretora TEXT NOT NULL,
    cidade TEXT NOT NULL,
    cep INTEGER
    );
    
-- injeção de dados-teste tabela 'alunos'
INSERT INTO alunos VALUES (1, 'Lua', 'F', 'luagomes@gmail.com', 21987656432, 'Maria Oliveira', 26/01/2010); -- coloco os atributos na ordem que eu mesma criei anteriormente quando criei as tabelas
INSERT INTO alunos VALUES (2, 'Joana', 'F', 'joanasiqueira@gmail.com', 21987655678, 'Roseni Siqueira', 23/06/2010);
INSERT INTO alunos VALUES (3, 'Lúcio', 'M', 'luciodosol@gmail.com', 21923656432, 'Fábio de Melo', 18/10/2010);
INSERT INTO alunos VALUES (4, 'Mário', 'M', 'mariosilva@gmail.com', 21987846432, 'Ana Silva', 22/08/2010);
INSERT INTO alunos VALUES (5, 'Mariana', 'F', 'marianapimenta@gmail.com', 21987623432, 'Carolina Pimenta', 05/10/2010);
INSERT INTO alunos VALUES (6, 'Jurandir', 'M', 'jurandirjura@gmail.com', 21987667892, 'Mário Lago', 11/11/2010);
INSERT INTO alunos VALUES (7, 'Thiago', 'M', 'thireis@gmail.com', 21987453432, 'Ariane Reis', 26/01/2010);

-- injeção de dados-teste tabela 'professores'
INSERT INTO professores VALUES (22, 'Joelma', 'matemática', 'manhã', 56, 21987654321, 'joelmamatematica@gmail.com');
INSERT INTO professores VALUES (18, 'Pedro', 'música', 'tarde', 24, 2198766121, 'pedromusica@gmail.com');
INSERT INTO professores VALUES (13, 'Ana Lúcia', 'educação física', 'tarde', 56, 21947654321, 'anaedfisica@gmail.com');
INSERT INTO professores VALUES (10, 'Riva', 'português', 'tarde', 18, 2198436121, 'rivaportug@gmail.com');
INSERT INTO professores VALUES (56, 'Bárbara', 'geografia', 'manhã', 35, 2198778921, 'barbarageografia@gmail.com');
INSERT INTO professores VALUES (25, 'Marisa', 'historia', 'tarde', 24, 2196766121, 'marisahistoria@gmail.com');
INSERT INTO professores VALUES (23, 'Bruno', 'biologia', 'tarde', 24, 2198126121, 'brunobiologia@gmail.com');

-- injeção de dados-teste tabela 'unidades'
INSERT INTO unidade VALUES (22, 'R. das rosas, 98', 'Jd. das Flores', 21987654321, 'Jennifer', 'Foz do Iguaçu', '85854495');
INSERT INTO unidade VALUES (10, 'R. bruno barreto, 120', 'Ipanema', 21987667321, 'Gustavo', 'Rio de Janeiro', '22854495');
INSERT INTO unidade VALUES (18, 'R. copo de leite, 5', 'Leblon', 21954654321, 'Paulo', 'Rio de Janeiro', '23854495');
INSERT INTO unidade VALUES (56, 'R. petunia, 10', 'Vila A', 21981854321, 'Ricardo', 'Foz do Iguaçu', '85804495');
INSERT INTO unidade VALUES (25, 'R. Gustavo Gomes, 98', 'Santa Marta', 21987652821, 'Magnólia', 'Foz do Iguaçu', '85285495');
INSERT INTO unidade VALUES (23, 'R. dias gomes, 110', 'Lapa', 21987656321, 'Paula', 'Foz do Iguaçu', '85818995');
INSERT INTO unidade VALUES (13, 'R. florescer, 56', 'Jardins', 21987618921, 'Bruna', 'Rio de Janeiro', '23454495');

-- a tabela JÁ FOI CRIADA:
ALTER TABLE unidade
ADD CONSTRAINT professores
FOREIGN KEY (id_prof)
REFERENCES professores(id_prof);

ALTER TABLE alunos
ADD CONSTRAINT unidade
FOREIGN KEY (id_unidade)
REFERENCES unidade(id_unidade);
