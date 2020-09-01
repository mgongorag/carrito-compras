DELIMITER $$
CREATE OR REPLACE PROCEDURE SPObtenerDepartamentos()
BEGIN
     SELECT 
          d.id_departamento, d.departamento, m.municipio, m.cod
     FROM 
          Departamentos d 
     INNER JOIN 
          municipios m
     ON m.id_departamento = d.id_departamento
     ORDER BY d.id_departamento ASC,
     			m.cod ASC;   
END $$






