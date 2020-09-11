/*************************************************************************
**************PROCEDIMIENTOS ALMACENADOS DE LA BASE DE *******************
**************************************************************************/

--Obtener Los departamentos y municipios
/*
     Autor: Miguel Gongora
     Fecha: 01/09/2020
*/
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

-- Insertar un cliente a la DB
/*
     Autor: Miguel Gongora
     Fecha: 01/09/2020
*/
DELIMITER $$
CREATE OR REPLACE PROCEDURE SPAddClient(
    							names VARCHAR(100),
    							last_names VARCHAR(100),
    							birthday DATE,
    							email VARCHAR(100),
    							password VARCHAR(256),
    							telephone VARCHAR(20),
    							telephone2 VARCHAR(20)
    						)
BEGIN
	DECLARE	    rowsAffected	     TINYINT;
	DECLARE 	result				VARCHAR(256);
    DECLARE 	msg					varchar(256);
    
    DECLARE EXIT HANDLER FOR 1062
     BEGIN
          ROLLBACK;
          set result = '0';
          set msg = CONCAT('El email ( ', email ,' ) ya se encuentra registrado, intente registrarse con otro email.');
          SELECT result, msg AS message;
     END;
     

     START TRANSACTION;
          INSERT INTO cliente VALUES (
                                        null,
                                        names,
                                        last_names,
                                        birthday,
                                        NOW(),
                                        email,
                                        password,
                                        NOW(),
                                        telephone,
                                        telephone2,
                                        1
                                        );
                                   
     SET rowsAffected = (SELECT ROW_COUNT());
     IF ( rowsAffected > 0 ) THEN
          SET result = "1";
          SET msg = "Usuario guardado exitósamente";
          COMMIT;
     ELSE 
          SET result = "0";
          SET msg = "¡Oh! Parece que ha ocurrido un error. Vuelva a intentarlo nuevamente";
          ROLLBACK;
     END IF;
     
     SELECT result, msg AS message;
    
END$$
DELIMITER ;
                         




