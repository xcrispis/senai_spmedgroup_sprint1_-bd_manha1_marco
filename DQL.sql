--conta numero de usuarios
SELECT
COUNT(Nome)
FROM Usuario
WHERE id_tipo=2

--calcula idade
SELECT FLOOR(DATEDIFF(DAY, Usuario.DataNascimento, GETDATE()) / 365.25) FROM Usuario WHERE id_tipo=2

--converte data
SELECT Usuario.id_usuario, CONVERT(varchar, DataNascimento, 101) as DataNascimento from Usuario;


--Calcula a idade a partir de um procedure
CREATE PROCEDURE BuscaEspecialista
@IdUsuario INT
AS
SELECT FLOOR(DATEDIFF(DAY, Usuario.DataNascimento, GETDATE()) / 365.25) FROM Usuario WHERE id_usuario=@IdUsuario

EXECUTE BuscaEspecialista 3

--Calcula quantos médicos de uma especialidade existem (não funciona)
CREATE FUNCTION MedicoEspecialista (@Especialidade INT)
RETURNS INT
AS
RETURN
(SELECT COUNT(id_medico) FROM MedicoEspecialidade WHERE id_especialidade=@Especialidade);

	SELECT * FROM MedicoEspecialista (1)

	



