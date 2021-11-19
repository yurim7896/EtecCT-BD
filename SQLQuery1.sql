CREATE DATABASE escola;

USE escola

CREATE TABLE tbaluno (
codAluno INT PRIMARY KEY IDENTITY(100,1),
nomeAluno varchar(40),
dataNascAluno DATE,
rgAluno BIGINT,
naturalAluno varchar(50)
)

CREATE TABLE tbmatricula (
codMatricula INT PRIMARY KEY IDENTITY(1,1),
dataMatricula DATE,
codAluno INT FOREIGN KEY REFERENCES tbaluno(codAluno),
codTurma INT FOREIGN KEY REFERENCES tbturma(codTurma)
)

CREATE TABLE tbturma (
codTurma INT PRIMARY KEY IDENTITY(1,1),
nomeTurma varchar(40),
horarioTurma DATETIME,
codCurso INT FOREIGN KEY REFERENCES tbcurso(codCurso)
)

CREATE TABLE tbcurso (
codCurso INT PRIMARY KEY IDENTITY(1,1),
nomeCurso VARCHAR(40),
cargaHoraCurso VARCHAR(40),
valorCurso SMALLMONEY
)