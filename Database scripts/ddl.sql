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


CREATE TABLE Tienda (
                              id_tienda                INT            NOT NULL,
                              nombres                  INT            NOT NULL,
                              eslogan                  VARCHAR(100)   NOT NULL,
                              mision                   VARCHAR(100)   NOT NULL,
                              vision                   VARCHAR(100)   NOT NULL,
                              descripcion              VARCHAR(100)   NOT NULL,
                              CONSTRAINT PK_id_tienda PRIMARY KEY (id_tienda)
                    )ENGINE=INNODB;
 

 CREATE TABLE COordenada (
                              id_coordenada             INT           NOT NULL,
                              altitud                   VARCHAR(15)   NOT NULL,
                              latitud                   VARCHAR(15)   NOT NULL,
                              CONSTRAINT PK_id_coordenada PRIMARY KEY (id_coordenada)
 )


 CREATE TABLE Sucursales (
                              id_sucursal              INT            NOT NULL,
                              sucursal                 VARCHAR(100)   NOT NULL,
                              direccion                VARCHAR(100)   NOT NULL,
                              telefono                 VARCHAR(20)    NOT NULL,
                              int_estado                TINYINT        NOT NULL,
                              id_tienda                INT            NOT NULL,
                              id_coordenada            INT            NOT NULL,
                              
                              CONSTRAINT PK_id_sucursal PRIMARY KEY (id_sucursal),
                              CONSTRAINT FK_id_tienda FOREIGN KEY (id_tienda) REFERENCES TIENDA(id_tienda),
                              CONSTRAINT FK_id_coordenada FOREIGN KEY (id_coordenada) REFERENCES COORDENADA(id_coordenada)
                    )ENGINE=INNODB;

CREATE TABLE Estantes(
                              id_estante               INT            NOT NULL,
                              estante                  VARCHAR(10)    NOT NULL,
                              int_estado               TINYINT        NOT NULL,
                              id_sucursal              INT            NOT NULL,
                              CONSTRAINT PK_id_estante PRIMARY KEY (id_estante),
                              CONSTRAINT fk_id_sucursal FOREIGN KEY (id_sucursal) REFERENCES SUCURSALES(id_sucursal)

                    )ENGINE=INNODB;

CREATE TABLE Categorias(
                              id_categoria             INT            NOT NULL,
                              categoria                varchar(100)   NOT NULL,
                              descripcion              VARCHAR(500)   NOT NULL,
                              int_estado               TINYINT        NOT NULL,
                              CONSTRAINT PK_id_categoria PRIMARY KEY (id_categoria)    
                         )ENGINE=INNODB;

CREATE TABLE SubCategorias(
                              id_subcategoria          INT            NOT NULL,
                              categoria                VARCHAR(100)   NOT NULL,
                              descripcion              VARCHAR(500)   NOT NULL,
                              int_estado               TINYINT        NOT NULL,
                              id_categoria             INT            NOT NULL,
                              CONSTRAINT PK_id_subcategoria PRIMARY KEY (id_subcategoria),
                             CONSTRAINT FK_id_categoria FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)

                         )ENGINE=INNODB;

 CREATE TABLE Marca(
                              id_marca                 INT            NOT NULL,
                              marca                    VARCHAR(100)   NOT NULL,
                              int_estado               INT            NOT NULL,
                              CONSTRAINT PK_id_marca PRIMARY KEY(id_marca)
                    )ENGINE=INNODB;           

 CREATE TABLE Productos(
                              id_producto              INT            NOT NULL,
                              nombre                   VARCHAR(100)   NOT NULL,
                              descripcion              VARCHAR(1000)  NOT NULL,
                              stock_total              INT            NOT NULL,
                              precio                   DECIMAL(7,2)   NOT NULL,
                              img                      VARCHAR(150)   not null,
                              descripcionJSON          JSON,
                              specificacionesJSON      JSON,
                              int_estado               TINYINT        NOT NULL,
                              id_subcategoria          INT            NOT NULL,
                              id_marca                 INT 
                              CONSTRAINT PK_id_producto PRIMARY KEY (id_producto),
                              CONSTRAINT FK_id_subcategoria FOREIGN KEY (id_subcategoria) REFERENCES SubCategorias(id_subcategoria),                   
                              CONSTRAINT FK_id_marca FOREIGN KEY (id_marca) REFERENCES Marca(id_marca)                   
                         )ENGINE=INNODB;

CREATE TABLE Carrito(
                              id_carrito               INT            NOT NULL,
                              id_cliente               INT            NOT NULL,
                              CONSTRAINT PK_id_carrito PRIMARY KEY (id_carrito),
                              FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
                    )ENGINE=INNODB;


CREATE TABLE ProductosCarrito (
                              id_carrito               INT            NOT NULL,
                              id_producto              INT            NOT NULL,
                              cantidad                 INT            NOT NULL,
                              CONSTRAINT FK_id_producto FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),
                              CONSTRAINT FK_id_carrito FOREIGN KEY (id_carrito) REFERENCES Carrito(id_carrito)

                              )ENGINE=INNODB;

CREATE TABLE ComentariosProducto   (
                                        id_comentario  INT            NOT NULL,
                                        titulo         varchar(50)    NOT NULL,   
                                        comentario     VARCHAR(250)   NOT NULL,
                                        fecha          DATETIME       NOT NULL,
                                        calificacion   TINYINT        NOT NULL,
                                        id_producto    INT            NOT NULL,
                                        id_cliente     INT            NOT NULL,
                                        CONSTRAINT PK_id_comentario PRIMARY KEY(id_comentario),
                                        FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),
                                        FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
                                   )ENGINE=INNODB;

CREATE TABLE TipoUsuario(
                              id_tipo_usuario          INT            NOT NULL,
                              tipo                     varchar(30)    NOT NULL,
                              CONSTRAINT PK_id_tipo_usuario PRIMARY KEY (id_tipo_usuario)
                         )ENGINE=INNODB;

CREATE TABLE Usuarios    (
                              id_usuario               INT            NOT NULL,
                              nombres                  varchar(100)   NOT NULL,
                              apellidos                varchar(100)   NOT NULL,
                              dpi                      BIGINT         NOT NULL,
                              fecha_nacimiento         DATE           NOT NULL,
                              int_estado               TINYINT        NOT NULL,
                              id_tipo_usuario          INT            NOT NULL,
                              id_sucursal              INT            NOT NULL,
                              CONSTRAINT PK_id_usuario PRIMARY KEY (id_usuario),
                              CONSTRAINT FK_id_tipo_usuario FOREIGN KEY (id_tipo_usuario) REFERENCES TipoUsuario(id_tipo_usuario),
                              FOREIGN KEY (id_sucursal) REFERENCES Sucursales(id_sucursal)
                         )ENGINE=INNODB;

CREATE TABLE Facturas    (
                              id_factura               INT            NOT NULL,
                              fecha                    DATETIME       NOT NULL,
                              total                    DECIMAL(7,2)   NOT NULL,
                              total_letras             VARCHAR(256)   NOT NULL,
                              direccion                VARCHAR(100)   NOT NULL,
                              id_cliente               INT            NOT NULL,
                              id_usuario               INT            NOT NULL,
                              CONSTRAINT PK_id_factura PRIMARY KEY (id_factura),
                              FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
                              CONSTRAINT FK_id_usuario FOREIGN KEY(id_usuario) REFERENCES Usuarios(id_usuario)

                         )ENGINE=INNODB;



