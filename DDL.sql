CREATE DATABASE medgroup
USE medgroup



CREATE TABLE TipoUsuario (id_tipo INT IDENTITY PRIMARY KEY, NomeTipo varchar(100) not null)

CREATE TABLE Usuario (id_usuario INT IDENTITY PRIMARY KEY, Nome varchar(255) not null,  RG nchar(9) not null unique, CPF nvarchar(11) not null unique,
Endereco nvarchar(300) not null, DataNascimento DATE not null, Email nvarchar(300) not null unique, Senha nvarchar(300) not null,
CONSTRAINT CK_CPF CHECK (CPF LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
CONSTRAINT CK_RG CHECK (RG LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'), id_tipo INT FOREIGN KEY REFERENCES TipoUsuario(id_tipo) not null)

CREATE TABLE Paciente (id_paciente INT IDENTITY PRIMARY KEY, id_usuario INT FOREIGN KEY REFERENCES Usuario(id_usuario) not null)

CREATE TABLE Medico (id_medico INT IDENTITY PRIMARY KEY, CRM varchar(7) not null, CONSTRAINT CK_CRM CHECK (CRM LIKE '[0-9][0-9][0-9][0-9][0-9][A-Z][A-Z]'),
id_usuario INT FOREIGN KEY REFERENCES Usuario(id_usuario) not null)

CREATE TABLE Especialidade (id_especialidade INT IDENTITY PRIMARY KEY, NomeEspecialidade nvarchar(100) not null)

CREATE TABLE MedicoEspecialidade (id_med_espec INT IDENTITY PRIMARY KEY, id_medico INT FOREIGN KEY REFERENCES Medico(id_medico) not null,
id_especialidade INT FOREIGN KEY REFERENCES Especialidade(id_especialidade) not null)

CREATE TABLE Situacao (id_situacao INT IDENTITY PRIMARY KEY, NomeSituacao varchar(15) not null)

CREATE TABLE Clinica (id_clinica INT IDENTITY PRIMARY KEY, NomeFantasia nvarchar(300), Localizacao nvarchar(300) not null, CNPJ varchar(14), RazaoSocial nvarchar(300) not null, 
CONSTRAINT CK_CNPJ CHECK (CNPJ LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))

CREATE TABLE ValorConsulta (id_valor_consulta INT IDENTITY PRIMARY KEY, NomeConsulta varchar(200), Valor decimal NOT NULL)

CREATE TABLE MedicoConsultorio (id_med_consul INT IDENTITY PRIMARY KEY, id_medico INT FOREIGN KEY REFERENCES Medico(id_medico), id_clinica INT FOREIGN KEY REFERENCES Clinica(id_clinica))

CREATE TABLE Consulta (id_consulta INT IDENTITY PRIMARY KEY, horario_consulta DATETIME NOT NULL, descricao varchar(1500) NOT NULL,id_medico INT FOREIGN KEY REFERENCES Medico(id_medico) NOT NULL,
id_situacao INT FOREIGN KEY REFERENCES Situacao(id_situacao) NOT NULL, id_paciente INT FOREIGN KEY REFERENCES Paciente(id_paciente) NOT NULL, 
id_valor_consulta INT FOREIGN KEY REFERENCES ValorConsulta(id_valor_consulta) NOT NULL, id_clinica INT FOREIGN KEY REFERENCES Clinica(id_clinica) NOT NULL)