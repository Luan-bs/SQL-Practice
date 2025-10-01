create database sistemaemprestimo;
use sistemaemprestimo;

create table curso(
	id_curso int primary key auto_increment,
    nome varchar(100) not null,
    periodo ENUM('matutino','vespertino','noturno') not null
);

create table editora(
	id_editora int primary key auto_increment,
	nome varchar(100) not null
);

create table autor(
	id_autor int primary key auto_increment,
	nome varchar(100) not null,
    sobrenome varchar(100) not null
);

create table livro(
	id_livro int primary key auto_increment,
    titulo varchar(100) not null,
    ano_publi date not null,
    id_autor int,
    id_editora int,
	qtd int default 0,
    foreign key (id_autor) references autor(id_autor),
    foreign key (id_editora) references editora(id_editora)
);

create table aluno(
	id_aluno INT primary key auto_increment,
    matricula INT UNIQUE NOT NULL,  
    nome varchar(100) not null,
    sobrenome varchar(100) not null,
    email varchar(40),
    id_curso INT,
    foreign key (id_curso) references curso(id_curso)
);

create table emprestimo(
	id_emprestimo int primary key auto_increment,
    data_emprestimo date,
    data_devolucao date,
    id_aluno int,
    id_livro int,
    foreign key (id_aluno) references aluno(id_aluno),
    foreign key (id_livro) references livro(id_livro)
);
