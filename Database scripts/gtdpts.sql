CREATE TABLE Departamentos(
                              id_departamento		INT NOT NULL,
                              departamento		     VARCHAR(50),
                              CONSTRAINT PK_idDepartamento PRIMARY KEY(id_departamento)
    					);

CREATE TABLE Municipios (
                              id_municipio		     INT            NOT NULL,
                              municipio			     VARCHAR(50)    NOT NULL,
                              cod		               VARCHAR(5)     NOT NULL,
                              id_departamento		int            NOT NULL,
                              CONSTRAINT Pk_id_municipio    PRIMARY KEY(id_municipio),
                              CONSTRAINT FK_id_departamento FOREIGN KEY(id_departamento) REFERENCES Departamentos(id_departamento)
    					)ENGINE=INNODB;


/*
** INSERCION DEPARTAMENTOS
*/
    
    INSERT INTO DEPARTAMENTOS VALUES (1, 'Guatemala');
    INSERT INTO DEPARTAMENTOS VALUES (2, 'El Progreso');
    INSERT INTO DEPARTAMENTOS VALUES (3, 'Sacatepéquez');
    INSERT INTO DEPARTAMENTOS VALUES (4, 'Chimaltenango');
    INSERT INTO DEPARTAMENTOS VALUES (5, 'Escuintla');
    INSERT INTO DEPARTAMENTOS VALUES (6, 'Santa Rosa');
    INSERT INTO DEPARTAMENTOS VALUES (7, 'Solola');
    INSERT INTO DEPARTAMENTOS VALUES (8, 'Totonicapan');
    INSERT INTO DEPARTAMENTOS VALUES (9, 'Quetzaltenango');
    INSERT INTO DEPARTAMENTOS VALUES (10, 'Suchitepequez');
    INSERT INTO DEPARTAMENTOS VALUES (11, 'Retalhuleu');
    INSERT INTO DEPARTAMENTOS VALUES (12, 'San Marcos');
    INSERT INTO DEPARTAMENTOS VALUES (13, 'Huehuetenango');
    INSERT INTO DEPARTAMENTOS VALUES (14, 'El Quiché');
    INSERT INTO DEPARTAMENTOS VALUES (15, 'Baja Verapaz');
    INSERT INTO DEPARTAMENTOS VALUES (16, 'Alta Verapaz');
    INSERT INTO DEPARTAMENTOS VALUES (17, 'El Petén');
    INSERT INTO DEPARTAMENTOS VALUES (18, 'Izabal');
    INSERT INTO DEPARTAMENTOS VALUES (19, 'Zacaá');
    INSERT INTO DEPARTAMENTOS VALUES (20, 'Chiquimula');
    INSERT INTO DEPARTAMENTOS VALUES (21, 'Jalapa');
    INSERT INTO DEPARTAMENTOS VALUES (22, 'Jutiapa');


/*
** INSERCION DE MUNICIPIOS
*/

     INSERT INTO MUNICIPIOS VALUES (1, "Guatemala", "0101", 1);
     INSERT INTO MUNICIPIOS VALUES (2, "Santa Catarina Pinula", "0102", 1);
     INSERT INTO MUNICIPIOS VALUES (3, "San José Pinula", "0103", 1);
     INSERT INTO MUNICIPIOS VALUES (4, "San José del Golfo", "0104", 1);
     INSERT INTO MUNICIPIOS VALUES (5, "Palencia", "0105", 1);
     INSERT INTO MUNICIPIOS VALUES (6, "Chinautla", "0106", 1);
     INSERT INTO MUNICIPIOS VALUES (7, "San Pedro Ayampuc", "0107", 1);
     INSERT INTO MUNICIPIOS VALUES (8, "Mixco", "0108", 1);
     INSERT INTO MUNICIPIOS VALUES (9, "San Pedro Sacatepéquez", "0109", 1);
     INSERT INTO MUNICIPIOS VALUES (10, "San Juan Sacatepéquez", "0110", 1);
     INSERT INTO MUNICIPIOS VALUES (11, "San Raymundo", "0111", 1);
     INSERT INTO MUNICIPIOS VALUES (12, "Chuarrancho", "0112", 1);
     INSERT INTO MUNICIPIOS VALUES (13, "Fraijanes", "0113", 1);
     INSERT INTO MUNICIPIOS VALUES (14, "Amatitlán", "0114", 1);
     INSERT INTO MUNICIPIOS VALUES (15, "Villa Nueva", "0115", 1);
     INSERT INTO MUNICIPIOS VALUES (16, "Villa Canales", "0116", 1);
     INSERT INTO MUNICIPIOS VALUES (17, "Petapa", "0117", 1);
     INSERT INTO MUNICIPIOS VALUES (18, "Guastatoya", "0201", 2);
     INSERT INTO MUNICIPIOS VALUES (19, "Morazán", "0202", 2);
     INSERT INTO MUNICIPIOS VALUES (20, "San Agustín Acasaguastlán", "0203", 2);
     INSERT INTO MUNICIPIOS VALUES (21, "San Cristóbal Acasaguastlán", "0204", 2);
     INSERT INTO MUNICIPIOS VALUES (22, "El Jícaro", "0205", 2);
     INSERT INTO MUNICIPIOS VALUES (23, "Sansare", "0206", 2);
     INSERT INTO MUNICIPIOS VALUES (24, "Sanarate", "0207", 2);
     INSERT INTO MUNICIPIOS VALUES (25, "San Antonio la Paz", "0208", 2);
     INSERT INTO MUNICIPIOS VALUES (26, "Antigua Guatemala", "0301", 3);
     INSERT INTO MUNICIPIOS VALUES (27, "Jocotenango", "0302", 3);
     INSERT INTO MUNICIPIOS VALUES (28, "Pastores", "0303", 3);
     INSERT INTO MUNICIPIOS VALUES (29, "Sumpango", "0304", 3);
     INSERT INTO MUNICIPIOS VALUES (30, "Santo Domingo Xenacoj", "0305", 3);
     INSERT INTO MUNICIPIOS VALUES (31, "Santiago Sacatepéquez", "0306", 3);
     INSERT INTO MUNICIPIOS VALUES (32, "San Bartolomé Milpas Altas", "0307", 3);
     INSERT INTO MUNICIPIOS VALUES (33, "San Lucas Sacatepéquez", "0308", 3);
     INSERT INTO MUNICIPIOS VALUES (34, "Santa Lucía Milpas Altas", "0309", 3);
     INSERT INTO MUNICIPIOS VALUES (35, "Magdalena Milpas Altas", "0310", 3);
     INSERT INTO MUNICIPIOS VALUES (36, "Santa María de Jesús", "0311", 3);
     INSERT INTO MUNICIPIOS VALUES (37, "Ciudad Vieja", "0312", 3);
     INSERT INTO MUNICIPIOS VALUES (38, "San Miguel Dueñas", "0313", 3);
     INSERT INTO MUNICIPIOS VALUES (39, "Alotenango", "0314", 3);
     INSERT INTO MUNICIPIOS VALUES (40, "San Antonio Aguas Calientes", "0315", 3);
     INSERT INTO MUNICIPIOS VALUES (41, "Santa Catarina Barahona", "0316", 3);
     INSERT INTO MUNICIPIOS VALUES (42, "Chimaltenango", "0401", 4);
     INSERT INTO MUNICIPIOS VALUES (43, "San José Poaquil", "0402", 4);
     INSERT INTO MUNICIPIOS VALUES (44, "San Martín Jilotepeque", "0403", 4);
     INSERT INTO MUNICIPIOS VALUES (45, "Comalapa", "0404", 4);
     INSERT INTO MUNICIPIOS VALUES (46, "Santa Apolonia", "0405", 4);
     INSERT INTO MUNICIPIOS VALUES (47, "Tecpán Guatemala", "0406", 4);
     INSERT INTO MUNICIPIOS VALUES (48, "Patzún", "0407", 4);
     INSERT INTO MUNICIPIOS VALUES (49, "Pochuta", "0408", 4);
     INSERT INTO MUNICIPIOS VALUES (50, "Patzicía", "0409", 4);
     INSERT INTO MUNICIPIOS VALUES (51, "Santa Cruz Balanyá", "0410", 4);
     INSERT INTO MUNICIPIOS VALUES (52, "Acatenango", "0411", 4);
     INSERT INTO MUNICIPIOS VALUES (53, "Yepocapa", "0412", 4);
     INSERT INTO MUNICIPIOS VALUES (54, "San Andrés Itzapa", "0413", 4);
     INSERT INTO MUNICIPIOS VALUES (55, "Parramos", "0414", 4);
     INSERT INTO MUNICIPIOS VALUES (56, "Zaragoza", "0415", 4);
     INSERT INTO MUNICIPIOS VALUES (57, "El Tejar", "0416", 4);
     INSERT INTO MUNICIPIOS VALUES (58, "Escuintla", "0501", 5);
     INSERT INTO MUNICIPIOS VALUES (59, "Santa Lucía Cotzumalguapa", "0502", 5);
     INSERT INTO MUNICIPIOS VALUES (60, "La Democracia", "0503", 5);
     INSERT INTO MUNICIPIOS VALUES (61, "Siquinalá", "0504", 5);
     INSERT INTO MUNICIPIOS VALUES (62, "Masagua", "0505", 5);
     INSERT INTO MUNICIPIOS VALUES (63, "Tiquisate", "0506", 5);
     INSERT INTO MUNICIPIOS VALUES (64, "La Gomera", "0507", 5);
     INSERT INTO MUNICIPIOS VALUES (65, "Guanagazapa", "0508", 5);
     INSERT INTO MUNICIPIOS VALUES (66, "San José", "0509", 5);
     INSERT INTO MUNICIPIOS VALUES (67, "Iztapa", "0510", 5);
     INSERT INTO MUNICIPIOS VALUES (68, "Palín", "0511", 5);
     INSERT INTO MUNICIPIOS VALUES (69, "San Vicente Pacaya", "0512", 5);
     INSERT INTO MUNICIPIOS VALUES (70, "Nueva Concepción", "0513", 5);
     INSERT INTO MUNICIPIOS VALUES (71, "Cuilapa", "0601", 6);
     INSERT INTO MUNICIPIOS VALUES (72, "Barberena", "0602", 6);
     INSERT INTO MUNICIPIOS VALUES (73, "Santa Rosa de Lima", "0603", 6);
     INSERT INTO MUNICIPIOS VALUES (74, "Casillas", "0604", 6);
     INSERT INTO MUNICIPIOS VALUES (75, "San Rafael las Flores", "0605", 6);
     INSERT INTO MUNICIPIOS VALUES (76, "Oratorio", "0606", 6);
     INSERT INTO MUNICIPIOS VALUES (77, "San Juan Tecuaco", "0607", 6);
     INSERT INTO MUNICIPIOS VALUES (78, "Chiquimulilla", "0608", 6);
     INSERT INTO MUNICIPIOS VALUES (79, "Taxisco", "0609", 6);
     INSERT INTO MUNICIPIOS VALUES (80, "Santa María Ixhuatán", "0610", 6);
     INSERT INTO MUNICIPIOS VALUES (81, "Guazacapán", "0611", 6);
     INSERT INTO MUNICIPIOS VALUES (82, "Santa Cruz Naranjo", "0612", 6);
     INSERT INTO MUNICIPIOS VALUES (83, "Pueblo Nuevo Viñas", "0613", 6);
     INSERT INTO MUNICIPIOS VALUES (84, "Nueva Santa Rosa", "0614", 6);
     INSERT INTO MUNICIPIOS VALUES (85, "Sololá", "0701", 7);
     INSERT INTO MUNICIPIOS VALUES (86, "San José Chacayá", "0702", 7);
     INSERT INTO MUNICIPIOS VALUES (87, "Santa María Visitación", "0703", 7);
     INSERT INTO MUNICIPIOS VALUES (88, "Santa Lucía Utatlán", "0704", 7);
     INSERT INTO MUNICIPIOS VALUES (89, "Nahualá", "0705", 7);
     INSERT INTO MUNICIPIOS VALUES (90, "Santa Catarina Ixtahuacán", "0706", 7);
     INSERT INTO MUNICIPIOS VALUES (91, "Santa Clara la Laguna", "0707", 7);
     INSERT INTO MUNICIPIOS VALUES (92, "Concepción", "0708", 7);
     INSERT INTO MUNICIPIOS VALUES (93, "San Andrés Semetabaj", "0709", 7);
     INSERT INTO MUNICIPIOS VALUES (94, "Panajachel", "0710", 7);
     INSERT INTO MUNICIPIOS VALUES (95, "Santa Catarina Palopó", "0711", 7);
     INSERT INTO MUNICIPIOS VALUES (96, "San Antonio Palopó", "0712", 7);
     INSERT INTO MUNICIPIOS VALUES (97, "San Lucas Tolimán", "0713", 7);
     INSERT INTO MUNICIPIOS VALUES (98, "Santa Cruz la Laguna", "0714", 7);
     INSERT INTO MUNICIPIOS VALUES (99, "San Pablo la Laguna", "0715", 7);
     INSERT INTO MUNICIPIOS VALUES (100, "San Marcos la Laguna", "0716", 7);
     INSERT INTO MUNICIPIOS VALUES (101, "San Juan la Laguna", "0717", 7);
     INSERT INTO MUNICIPIOS VALUES (102, "San Pedro la Laguna", "0718", 7);
     INSERT INTO MUNICIPIOS VALUES (103, "Santiago Atitlán", "0719", 7);
     INSERT INTO MUNICIPIOS VALUES (104, "Totonicapán", "0801", 8);
     INSERT INTO MUNICIPIOS VALUES (105, "San Cristóbal Totonicapán", "0802", 8);
     INSERT INTO MUNICIPIOS VALUES (106, "San Francisco el Alto", "0803", 8);
     INSERT INTO MUNICIPIOS VALUES (107, "San Andrés Xecul", "0804", 8);
     INSERT INTO MUNICIPIOS VALUES (108, "Momostenango", "0805", 8);
     INSERT INTO MUNICIPIOS VALUES (109, "Santa María Chiquimula", "0806", 8);
     INSERT INTO MUNICIPIOS VALUES (110, "Santa Lucía la Reforma", "0807", 8);
     INSERT INTO MUNICIPIOS VALUES (111, "San Bartolo", "0808", 8);
     INSERT INTO MUNICIPIOS VALUES (112, "Quetzaltenango", "0901", 9);
     INSERT INTO MUNICIPIOS VALUES (113, "Salcajá", "0902", 9);
     INSERT INTO MUNICIPIOS VALUES (114, "Olintepeque", "0903", 9);
     INSERT INTO MUNICIPIOS VALUES (115, "San Carlos Sija", "0904", 9);
     INSERT INTO MUNICIPIOS VALUES (116, "Sibilia", "0905", 9);
     INSERT INTO MUNICIPIOS VALUES (117, "Cabricán", "0906", 9);
     INSERT INTO MUNICIPIOS VALUES (118, "Cajolá", "0907", 9);
     INSERT INTO MUNICIPIOS VALUES (119, "San Miguel Siguilá", "0908", 9);
     INSERT INTO MUNICIPIOS VALUES (120, "Ostuncalco", "0909", 9);
     INSERT INTO MUNICIPIOS VALUES (121, "San Mateo", "0910", 9);
     INSERT INTO MUNICIPIOS VALUES (122, "Concepción Chiquirichapa", "0911", 9);
     INSERT INTO MUNICIPIOS VALUES (123, "San Martín Sacatepéquez", "0912", 9);
     INSERT INTO MUNICIPIOS VALUES (124, "Almolonga", "0913", 9);
     INSERT INTO MUNICIPIOS VALUES (125, "Cantel", "0914", 9);
     INSERT INTO MUNICIPIOS VALUES (126, "Huitán", "0915", 9);
     INSERT INTO MUNICIPIOS VALUES (127, "Zunil", "0916", 9);
     INSERT INTO MUNICIPIOS VALUES (128, "Colomba", "0917", 9);
     INSERT INTO MUNICIPIOS VALUES (129, "San Francisco la Unión", "0918", 9);
     INSERT INTO MUNICIPIOS VALUES (130, "El Palmar", "0919", 9);
     INSERT INTO MUNICIPIOS VALUES (131, "Coatepeque", "0920", 9);
     INSERT INTO MUNICIPIOS VALUES (132, "Génova", "0921", 9);
     INSERT INTO MUNICIPIOS VALUES (133, "Flores Costa Cuca", "0922", 9);
     INSERT INTO MUNICIPIOS VALUES (134, "La Esperanza", "0923", 9);
     INSERT INTO MUNICIPIOS VALUES (135, "Palestina de los Altos", "0924", 9);
     INSERT INTO MUNICIPIOS VALUES (136, "Mazatenango", "1001", 10);
     INSERT INTO MUNICIPIOS VALUES (137, "Cuyotenango", "1002", 10);
     INSERT INTO MUNICIPIOS VALUES (138, "San Francisco Zapotitlán", "1003", 10);
     INSERT INTO MUNICIPIOS VALUES (139, "San Bernardino", "1004", 10);
     INSERT INTO MUNICIPIOS VALUES (140, "San José el Idolo", "1005", 10);
     INSERT INTO MUNICIPIOS VALUES (141, "Santo Domingo Suchitepéquez", "1006", 10);
     INSERT INTO MUNICIPIOS VALUES (142, "San Lorenzo", "1007", 10);
     INSERT INTO MUNICIPIOS VALUES (143, "Samayac", "1008", 10);
     INSERT INTO MUNICIPIOS VALUES (144, "San Pablo Jocopilas", "1009", 10);
     INSERT INTO MUNICIPIOS VALUES (145, "San Antonio Suchitepéquez", "1010", 10);
     INSERT INTO MUNICIPIOS VALUES (146, "San Miguel Panán", "1011", 10);
     INSERT INTO MUNICIPIOS VALUES (147, "San Gabriel", "1012", 10);
     INSERT INTO MUNICIPIOS VALUES (148, "Chicacao", "1013", 10);
     INSERT INTO MUNICIPIOS VALUES (149, "Patulul", "1014", 10);
     INSERT INTO MUNICIPIOS VALUES (150, "Santa Bárbara", "1015", 10);
     INSERT INTO MUNICIPIOS VALUES (151, "San Juan Bautista", "1016", 10);
     INSERT INTO MUNICIPIOS VALUES (152, "Santo Tomás la Unión", "1017", 10);
     INSERT INTO MUNICIPIOS VALUES (153, "Zunilito", "1018", 10);
     INSERT INTO MUNICIPIOS VALUES (154, "Pueblo Nuevo", "1019", 10);
     INSERT INTO MUNICIPIOS VALUES (155, "Río Bravo", "1020", 10);
     INSERT INTO MUNICIPIOS VALUES (156, "San José La Máquina", "1021", 10);
     INSERT INTO MUNICIPIOS VALUES (157, "Retalhuleu", "1101", 11);
     INSERT INTO MUNICIPIOS VALUES (158, "San Sebastián", "1102", 11);
     INSERT INTO MUNICIPIOS VALUES (159, "Santa Cruz Muluá", "1103", 11);
     INSERT INTO MUNICIPIOS VALUES (160, "San Martín Zapotitlán", "1104", 11);
     INSERT INTO MUNICIPIOS VALUES (161, "San Felipe", "1105", 11);
     INSERT INTO MUNICIPIOS VALUES (162, "San Andrés Villa Seca", "1106", 11);
     INSERT INTO MUNICIPIOS VALUES (163, "Champerico", "1107", 11);
     INSERT INTO MUNICIPIOS VALUES (164, "Nuevo San Carlos", "1108", 11);
     INSERT INTO MUNICIPIOS VALUES (165, "El Asintal", "1109", 11);
     INSERT INTO MUNICIPIOS VALUES (166, "San Marcos", "1201", 12);
     INSERT INTO MUNICIPIOS VALUES (167, "San Pedro Sacatepéquez", "1202", 12);
     INSERT INTO MUNICIPIOS VALUES (168, "San Antonio Sacatepéquez", "1203", 12);
     INSERT INTO MUNICIPIOS VALUES (169, "Comitancillo", "1204", 12);
     INSERT INTO MUNICIPIOS VALUES (170, "San Miguel Ixtahuacán", "1205", 12);
     INSERT INTO MUNICIPIOS VALUES (171, "Concepción Tutuapa", "1206", 12);
     INSERT INTO MUNICIPIOS VALUES (172, "Tacaná", "1207", 12);
     INSERT INTO MUNICIPIOS VALUES (173, "Sibinal", "1208", 12);
     INSERT INTO MUNICIPIOS VALUES (174, "Tajumulco", "1209", 12);
     INSERT INTO MUNICIPIOS VALUES (175, "Tejutla", "1210", 12);
     INSERT INTO MUNICIPIOS VALUES (176, "San Rafael Pié de la Cuesta", "1211", 12);
     INSERT INTO MUNICIPIOS VALUES (177, "Nuevo Progreso", "1212", 12);
     INSERT INTO MUNICIPIOS VALUES (178, "El Tumbador", "1213", 12);
     INSERT INTO MUNICIPIOS VALUES (179, "El Rodeo", "1214", 12);
     INSERT INTO MUNICIPIOS VALUES (180, "Malacatán", "1215", 12);
     INSERT INTO MUNICIPIOS VALUES (181, "Catarina", "1216", 12);
     INSERT INTO MUNICIPIOS VALUES (182, "Ayutla", "1217", 12);
     INSERT INTO MUNICIPIOS VALUES (183, "Ocós", "1218", 12);
     INSERT INTO MUNICIPIOS VALUES (184, "San Pablo", "1219", 12);
     INSERT INTO MUNICIPIOS VALUES (185, "El Quetzal", "1220", 12);
     INSERT INTO MUNICIPIOS VALUES (186, "La Reforma", "1221", 12);
     INSERT INTO MUNICIPIOS VALUES (187, "Pajapita", "1222", 12);
     INSERT INTO MUNICIPIOS VALUES (188, "Ixchiguán", "1223", 12);
     INSERT INTO MUNICIPIOS VALUES (189, "San José Ojetenán", "1224", 12);
     INSERT INTO MUNICIPIOS VALUES (190, "San Cristóbal Cucho", "1225", 12);
     INSERT INTO MUNICIPIOS VALUES (191, "Sipacapa", "1226", 12);
     INSERT INTO MUNICIPIOS VALUES (192, "Esquipulas Palo Gordo", "1227", 12);
     INSERT INTO MUNICIPIOS VALUES (193, "Río Blanco", "1228", 12);
     INSERT INTO MUNICIPIOS VALUES (194, "San Lorenzo", "1229", 12);
     INSERT INTO MUNICIPIOS VALUES (195, "La Blanca", "1230", 12);
     INSERT INTO MUNICIPIOS VALUES (196, "Huehuetenango", "1301", 13);
     INSERT INTO MUNICIPIOS VALUES (197, "Chiantla", "1302", 13);
     INSERT INTO MUNICIPIOS VALUES (198, "Malacatancito", "1303", 13);
     INSERT INTO MUNICIPIOS VALUES (199, "Cuilco", "1304", 13);
     INSERT INTO MUNICIPIOS VALUES (200, "Nentón", "1305", 13);
     INSERT INTO MUNICIPIOS VALUES (201, "San Pedro Necta", "1306", 13);
     INSERT INTO MUNICIPIOS VALUES (202, "Jacaltenango", "1307", 13);
     INSERT INTO MUNICIPIOS VALUES (203, "Soloma", "1308", 13);
     INSERT INTO MUNICIPIOS VALUES (204, "Ixtahuacán", "1309", 13);
     INSERT INTO MUNICIPIOS VALUES (205, "Santa Bárbara", "1310", 13);
     INSERT INTO MUNICIPIOS VALUES (206, "La Libertad", "1311", 13);
     INSERT INTO MUNICIPIOS VALUES (207, "La Democracia", "1312", 13);
     INSERT INTO MUNICIPIOS VALUES (208, "San Miguel Acatán", "1313", 13);
     INSERT INTO MUNICIPIOS VALUES (209, "San Rafael la Independencia", "1314", 13);
     INSERT INTO MUNICIPIOS VALUES (210, "Todos Santos Cuchumatán", "1315", 13);
     INSERT INTO MUNICIPIOS VALUES (211, "San Juan Atitán", "1316", 13);
     INSERT INTO MUNICIPIOS VALUES (212, "Santa Eulalia", "1317", 13);
     INSERT INTO MUNICIPIOS VALUES (213, "San Mateo Ixtatán", "1318", 13);
     INSERT INTO MUNICIPIOS VALUES (214, "Colotenango", "1319", 13);
     INSERT INTO MUNICIPIOS VALUES (215, "San Sebastián Huehuetenango", "1320", 13);
     INSERT INTO MUNICIPIOS VALUES (216, "Tectitán", "1321", 13);
     INSERT INTO MUNICIPIOS VALUES (217, "Concepción Huista", "1322", 13);
     INSERT INTO MUNICIPIOS VALUES (218, "San Juan Ixcoy", "1323", 13);
     INSERT INTO MUNICIPIOS VALUES (219, "San Antonio Huista", "1324", 13);
     INSERT INTO MUNICIPIOS VALUES (220, "San Sebastián Coatán", "1325", 13);
     INSERT INTO MUNICIPIOS VALUES (221, "Barillas", "1326", 13);
     INSERT INTO MUNICIPIOS VALUES (222, "Aguacatán", "1327", 13);
     INSERT INTO MUNICIPIOS VALUES (223, "San Rafael Petzal", "1328", 13);
     INSERT INTO MUNICIPIOS VALUES (224, "San Gaspar Ixchil", "1329", 13);
     INSERT INTO MUNICIPIOS VALUES (225, "Santiago Chimaltenango", "1330", 13);
     INSERT INTO MUNICIPIOS VALUES (226, "Santa Ana Huista", "1331", 13);
     INSERT INTO MUNICIPIOS VALUES (227, "Unión Cantinil", "1332", 13);
     INSERT INTO MUNICIPIOS VALUES (228, "Santa Cruz del Quiché", "1401", 14);
     INSERT INTO MUNICIPIOS VALUES (229, "Chiché", "1402", 14);
     INSERT INTO MUNICIPIOS VALUES (230, "Chinique", "1403", 14);
     INSERT INTO MUNICIPIOS VALUES (231, "Zacualpa", "1404", 14);
     INSERT INTO MUNICIPIOS VALUES (232, "Chajul", "1405", 14);
     INSERT INTO MUNICIPIOS VALUES (233, "Chichicastenango", "1406", 14);
     INSERT INTO MUNICIPIOS VALUES (234, "Patzité", "1407", 14);
     INSERT INTO MUNICIPIOS VALUES (235, "San Antonio Ilotenango", "1408", 14);
     INSERT INTO MUNICIPIOS VALUES (236, "San Pedro Jocopilas", "1409", 14);
     INSERT INTO MUNICIPIOS VALUES (237, "Cunén", "1410", 14);
     INSERT INTO MUNICIPIOS VALUES (238, "San Juan Cotzal", "1411", 14);
     INSERT INTO MUNICIPIOS VALUES (239, "Joyabaj", "1412", 14);
     INSERT INTO MUNICIPIOS VALUES (240, "Nebaj", "1413", 14);
     INSERT INTO MUNICIPIOS VALUES (241, "San Andrés Sajcabajá", "1414", 14);
     INSERT INTO MUNICIPIOS VALUES (242, "Uspantán", "1415", 14);
     INSERT INTO MUNICIPIOS VALUES (243, "Sacapulas", "1416", 14);
     INSERT INTO MUNICIPIOS VALUES (244, "San Bartolomé Jocotenango", "1417", 14);
     INSERT INTO MUNICIPIOS VALUES (245, "Canillá", "1418", 14);
     INSERT INTO MUNICIPIOS VALUES (246, "Chicamán", "1419", 14);
     INSERT INTO MUNICIPIOS VALUES (247, "Ixcán", "1420", 14);
     INSERT INTO MUNICIPIOS VALUES (248, "Pachalum", "1421", 14);
     INSERT INTO MUNICIPIOS VALUES (249, "Salamá", "1501", 15);
     INSERT INTO MUNICIPIOS VALUES (250, "San Miguel Chicaj", "1502", 15);
     INSERT INTO MUNICIPIOS VALUES (251, "Rabinal", "1503", 15);
     INSERT INTO MUNICIPIOS VALUES (252, "Cubulco", "1504", 15);
     INSERT INTO MUNICIPIOS VALUES (253, "Granados", "1505", 15);
     INSERT INTO MUNICIPIOS VALUES (254, "El Chol", "1506", 15);
     INSERT INTO MUNICIPIOS VALUES (255, "San Jerónimo", "1507", 15);
     INSERT INTO MUNICIPIOS VALUES (256, "Purulhá", "1508", 15);
     INSERT INTO MUNICIPIOS VALUES (257, "Cobán", "1601", 16);
     INSERT INTO MUNICIPIOS VALUES (258, "Santa Cruz Verapaz", "1602", 16);
     INSERT INTO MUNICIPIOS VALUES (259, "San Cristóbal Verapaz", "1603", 16);
     INSERT INTO MUNICIPIOS VALUES (260, "Tactic", "1604", 16);
     INSERT INTO MUNICIPIOS VALUES (261, "Tamahú", "1605", 16);
     INSERT INTO MUNICIPIOS VALUES (262, "Tucurú", "1606", 16);
     INSERT INTO MUNICIPIOS VALUES (263, "Panzós", "1607", 16);
     INSERT INTO MUNICIPIOS VALUES (264, "Senahú", "1608", 16);
     INSERT INTO MUNICIPIOS VALUES (265, "San Pedro Carchá", "1609", 16);
     INSERT INTO MUNICIPIOS VALUES (266, "San Juan Chamelco", "1610", 16);
     INSERT INTO MUNICIPIOS VALUES (267, "Lanquín", "1611", 16);
     INSERT INTO MUNICIPIOS VALUES (268, "Cahabón", "1612", 16);
     INSERT INTO MUNICIPIOS VALUES (269, "Chisec", "1613", 16);
     INSERT INTO MUNICIPIOS VALUES (270, "Chahal", "1614", 16);
     INSERT INTO MUNICIPIOS VALUES (271, "Fray Bartolomé de las Casas", "1615", 16);
     INSERT INTO MUNICIPIOS VALUES (272, "Santa Catalina la Tinta", "1616", 16);
     INSERT INTO MUNICIPIOS VALUES (273, "Raxruhá", "1617", 16);
     INSERT INTO MUNICIPIOS VALUES (274, "Flores", "1701", 17);
     INSERT INTO MUNICIPIOS VALUES (275, "San José", "1702", 17);
     INSERT INTO MUNICIPIOS VALUES (276, "San Benito", "1703", 17);
     INSERT INTO MUNICIPIOS VALUES (277, "San Andrés", "1704", 17);
     INSERT INTO MUNICIPIOS VALUES (278, "La Libertad", "1705", 17);
     INSERT INTO MUNICIPIOS VALUES (279, "San Francisco", "1706", 17);
     INSERT INTO MUNICIPIOS VALUES (280, "Santa Ana", "1707", 17);
     INSERT INTO MUNICIPIOS VALUES (281, "Dolores", "1708", 17);
     INSERT INTO MUNICIPIOS VALUES (282, "San Luis", "1709", 17);
     INSERT INTO MUNICIPIOS VALUES (283, "Sayaxché", "1710", 17);
     INSERT INTO MUNICIPIOS VALUES (284, "Melchor de Mencos", "1711", 17);
     INSERT INTO MUNICIPIOS VALUES (285, "Poptún", "1712", 17);
     INSERT INTO MUNICIPIOS VALUES (286, "Las Cruces", "1713", 17);
     INSERT INTO MUNICIPIOS VALUES (287, "El Chal", "1714", 17);
     INSERT INTO MUNICIPIOS VALUES (288, "Puerto Barrios", "1801", 18);
     INSERT INTO MUNICIPIOS VALUES (289, "Livingston", "1802", 18);
     INSERT INTO MUNICIPIOS VALUES (290, "El Estor", "1803", 18);
     INSERT INTO MUNICIPIOS VALUES (291, "Morales", "1804", 18);
     INSERT INTO MUNICIPIOS VALUES (292, "Los Amates", "1805", 18);
     INSERT INTO MUNICIPIOS VALUES (293, "Zacapa", "1901", 19);
     INSERT INTO MUNICIPIOS VALUES (294, "Estanzuela", "1902", 19);
     INSERT INTO MUNICIPIOS VALUES (295, "Río Hondo", "1903", 19);
     INSERT INTO MUNICIPIOS VALUES (296, "Gualán", "1904", 19);
     INSERT INTO MUNICIPIOS VALUES (297, "Teculután", "1905", 19);
     INSERT INTO MUNICIPIOS VALUES (298, "Usumatlán", "1906", 19);
     INSERT INTO MUNICIPIOS VALUES (299, "Cabañas", "1907", 19);
     INSERT INTO MUNICIPIOS VALUES (300, "San Diego", "1908", 19);
     INSERT INTO MUNICIPIOS VALUES (301, "La Unión", "1909", 19);
     INSERT INTO MUNICIPIOS VALUES (302, "Huité", "1910", 19);
     INSERT INTO MUNICIPIOS VALUES (303, "San Jorge", "1911", 19);
     INSERT INTO MUNICIPIOS VALUES (304, "Chiquimula", "2001", 20);
     INSERT INTO MUNICIPIOS VALUES (305, "San José La Arada", "2002", 20);
     INSERT INTO MUNICIPIOS VALUES (306, "San Juan Ermita", "2003", 20);
     INSERT INTO MUNICIPIOS VALUES (307, "Jocotán", "2004", 20);
     INSERT INTO MUNICIPIOS VALUES (308, "Camotán", "2005", 20);
     INSERT INTO MUNICIPIOS VALUES (309, "Olopa", "2006", 20);
     INSERT INTO MUNICIPIOS VALUES (310, "Esquipulas", "2007", 20);
     INSERT INTO MUNICIPIOS VALUES (311, "Concepción Las Minas", "2008", 20);
     INSERT INTO MUNICIPIOS VALUES (312, "Quetzaltepeque", "2009", 20);
     INSERT INTO MUNICIPIOS VALUES (313, "San Jacinto", "2010", 20);
     INSERT INTO MUNICIPIOS VALUES (314, "Ipala", "2011", 20);
     INSERT INTO MUNICIPIOS VALUES (315, "Jalapa", "2101", 22);
     INSERT INTO MUNICIPIOS VALUES (316, "San Pedro Pinula", "2102", 22);
     INSERT INTO MUNICIPIOS VALUES (317, "San Luis Jilotepeque", "2103", 22);
     INSERT INTO MUNICIPIOS VALUES (318, "San Manuel Chaparrón", "2104", 22);
     INSERT INTO MUNICIPIOS VALUES (319, "San Carlos Alzatate", "2105", 22);
     INSERT INTO MUNICIPIOS VALUES (320, "Monjas", "2106", 22);
     INSERT INTO MUNICIPIOS VALUES (321, "Mataquescuintla", "2107", 22);
     INSERT INTO MUNICIPIOS VALUES (322, "Jutiapa", "2201", 22);
     INSERT INTO MUNICIPIOS VALUES (323, "El Progreso", "2202", 22);
     INSERT INTO MUNICIPIOS VALUES (324, "Santa Catarina Mita", "2203", 22);
     INSERT INTO MUNICIPIOS VALUES (325, "Agua Blanca", "2204", 22);
     INSERT INTO MUNICIPIOS VALUES (326, "Asunción Mita", "2205", 22);
     INSERT INTO MUNICIPIOS VALUES (327, "Yupiltepeque", "2206", 22);
     INSERT INTO MUNICIPIOS VALUES (328, "Atescatempa", "2207", 22);
     INSERT INTO MUNICIPIOS VALUES (329, "Jerez", "2208", 22);
     INSERT INTO MUNICIPIOS VALUES (330, "El Adelanto", "2209", 22);
     INSERT INTO MUNICIPIOS VALUES (331, "Zapotitlán", "2210", 22);
     INSERT INTO MUNICIPIOS VALUES (332, "Comapa", "2211", 22);
     INSERT INTO MUNICIPIOS VALUES (333, "Jalpatagua", "2212", 22);
     INSERT INTO MUNICIPIOS VALUES (334, "Conguaco", "2213", 22);
     INSERT INTO MUNICIPIOS VALUES (335, "Moyuta", "2214", 22);
     INSERT INTO MUNICIPIOS VALUES (336, "Pasaco", "2215", 22);
     INSERT INTO MUNICIPIOS VALUES (337, "San José Acatempa", "2216", 22);
     INSERT INTO MUNICIPIOS VALUES (338, "Quesada", "2217", 22);
