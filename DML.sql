INSERT INTO TipoUsuario(NomeTipo) VALUES ('Admin'), ('Paciente'), ('Medico')

CREATE TRIGGER SeparaMedico
ON Usuario
AFTER INSERT
AS
CASE WHEN Usuario.IdTipoUsuario = 2 THEN INSERT INTO Medico(id_usuario, CRM) VALUES (SELECT USUARIO.ID_USUARIO WHERE ) ELSE 
BEGIN



INSERT INTO Usuario(Nome, RG, CPF, Endereco, DataNascimento, Email, Senha, id_tipo) VALUES ('Ligia', '123456789', '12345678910', 'Praça Jequitiba', '04/05/2000', 'oloco@gmail.com' ,'macaco123ouro', '1'), 
('Alexandre', '987647584', '84756475748', 'Paraça De Lá', '02/03/1987', 'ugabuga@gmail.com' ,'ParanáJaragua', 2), 
('Fernando', '283746584', '28374672312', 'Lugar Algum', '03/09/1999', 'feijoada123' ,'jorginpega12@hotmail.com', 3 ), 
('Henrique',  '873454523', '12312312312', 'Pra lá de bogoda', '02/09/1987', 'caminhao321', 'loucodosaco@gmail.com', 1), 
('João','877872634', '12374678371', 'Rua joaquin mendes, 27', '03/02/2000', 'busca123', 'geffinho@gmail.com', 2) 

INSERT INTO Paciente(id_usuario) VALUES ('2'), ('5')

INSERT INTO Medico(id_usuario, CRM) VALUES ('3', '34545RG')

INSERT INTO Especialidade(NomeEspecialidade) VALUES ('Acupuntura'), ('Anestesiologia'), ('Angiologia'), ('Cardiologia'), ('Cirurgia Cardiovascular'), ('Cirurgia da Mão'),
('Cirurgia do Aparelho Digestivo'), ('Cirurgia Geral'), ('Cirurgia Pediátrica'), ('Cirurgia Plástica'), ('Cirurgia Torácica'), ('Cirurgia Vascular'), ('Dermatologia'), ('Radioterapia'), ('Urologia'),
('Pediatria'), ('Psiquiatria')

INSERT INTO MedicoEspecialidade(id_medico, id_especialidade) VALUES (1, 1)

INSERT INTO Situacao(NomeSituacao) VALUES ('Realizada'), ('Agendada'), ('Cancelada')

INSERT INTO Clinica(NomeFantasia, Localizacao, CNPJ, RazaoSocial) VALUES ('Clinica Josias LTDA', 'Praça Albuquerque, 72', '29384736562123', 'Clinica Josias'), 
('Clinica Matias LTDA', 'Logradouro Jorge, 183', '29384756783456', 'Clinica Matias') 

INSERT INTO ValorConsulta(NomeConsulta, Valor) VALUES ('Ortopédica Infantil',  2000), ('Ortopédica Adulta', 3000)

INSERT INTO Consulta(horario_consulta, descricao, id_medico, id_situacao, id_paciente, id_valor_consulta, id_clinica) VALUES ('17:00:00', 'Consulta Bacana', 1, 1, 2, 1, 1)