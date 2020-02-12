SELECT
COUNT(Nome)
FROM Usuario
WHERE id_tipo=2

SELECT FLOOR(DATEDIFF(DAY, Usuario.DataNascimento, GETDATE()) / 365.25) FROM Usuario WHERE id_tipo=2

SELECT CONVERT(varchar, getdate(), 1)

CREATE PROCEDURE BuscaEspecialista
@IdUsuario INT
AS
SELECT FLOOR(DATEDIFF(DAY, Usuario.DataNascimento, GETDATE()) / 365.25) FROM Usuario WHERE id_usuario=@IdUsuario

EXECUTE BuscaEspecialista 3

CREATE FUNCTION MedicoEspecialista (@Especialidade INT)
RETURNS TABLE
AS
RETURN
(SELECT 
COUNT(id_medico)
FROM MedicoEspecialidade
WHERE id_especialidade=@Especialidade)
END





