CREATE TABLE Departamentos(
                              id_departamento		INT NOT NULL,
                              departamento		     VARCHAR(50),
                              CONSTRAINT PK_idDepartamento PRIMARY KEY(id_departamento)
    					);

CREATE TABLE Municipios (
                              id_municipio		     INT NOT NULL,
                              municipio			     VARCHAR(50) NOT NULL,
                              codigo_postal		     int,
                              id_departamento		int NOT NULL,
                              CONSTRAINT Pk_id_municipio    PRIMARY KEY(id_municipio),
                              CONSTRAINT FK_id_departamento FOREIGN KEY(id_departamento) REFERENCES Departamentos(id_departamento)
    					)ENGINE=INNODB;

CREATE TABLE  Cliente (
                              id_cliente               INT            NOT NULL,
                              nombres                  VARCHAR(100)   NOT NULL,
                              apellidos                VARCHAR (100)  NOT NULL,
                              fecha_nacimiento         DATE           NOT NULL,
                              fecha_ingreso            DATETIME       NOT NULL,
                              email                    VARCHAR(100)   NOT NULL UNIQUE,
                              password                 VARCHAR(256)   NOT NULL,
                              ultima_sesion            DATETIME       NOT NULL,
                              telefono                 VARCHAR(20)    NOT NULL,
                              telefono_alterno         VARCHAR(20)    NOT NULL,
                              int_estado               TINYINT        NOT NULL,
                              CONSTRAINT PK_id_cliente PRIMARY KEY (id_cliente)

                         )ENGINE=INNODB;

CREATE TABLE DireccionesEnvio(
                              id_direccion             INT            NOT NULL,
                              direccion                VARCHAR(500)   NOT NULL,
                              int_estado               TINYINT        NOT NULL,
                              id_municipio             INT            NOT NULL,
                              id_cliente               INT            NOT NULL,

                              CONSTRAINT PK_id_direccion PRIMARY KEY (id_direccion),
                              CONSTRAINT FK_id_municipio FOREIGN KEY (id_municipio) REFERENCES MUNICIPIOS(id_municipio),
                              CONSTRAINT FK_id_cliente FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)  
                              )ENGINE=INNODB;



