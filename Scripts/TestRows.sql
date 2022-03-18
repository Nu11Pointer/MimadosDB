USE MimadosDB

INSERT INTO Department
    (Name)
VALUES
    ('Managua'),
    ('Masaya'),
    ('Granada'),
    ('Leon')

INSERT INTO Municipality
    (DepartmentId, Name)
VALUES
    (1, 'Ciudad Sandino'),
    (1, 'El Crucero'),
    (1, 'Managua'),
    (1, 'Mateare'),
    (1, 'San Francisco Libre'),
    (1, 'San Rafael del Sur'),
    (1, 'Ticuantepe'),
    (1, 'Tipitapa'),
    (1, 'Villa El Carmen'),
    (2, 'Catarina'),
    (2, 'La Concepción'),
    (2, 'Masatepe'),
    (2, 'Masaya'),
    (2, 'Nandasmo'),
    (2, 'Nindirí'),
    (2, 'Niquinohomo'),
    (2, 'San Juan de Oriente'),
    (2, 'Tisma'),
    (3, 'Diriá'),
    (3, 'Diriomo'),
    (3, 'Granada'),
    (3, 'Nandaime'),
    (4, 'Leon')

INSERT INTO BranchOffice
    (Name, Address, MunicipalityId)
VALUES
    ('Sucursal Larreynaga', 'Bo. Larreynaga, puente Larreynaga 2 C.O 1/2 C.S', 3),
    ('Sucursal Bello Horizonte', 'dirrección', 3),
    ('Sucursal Los Robles', 'dirrección', 3),
    ('Sucursal Masaya', 'dirrección', 13),
    ('Sucursal Granada', 'dirrección', 21)

INSERT INTO BranchOfficePhone
    (BranchOfficeId, PhoneNumber)
VALUES
    (1, '8265-9536'),
    (1, '4596-7591'),
    (1, '8861-1164'),
    (2, '7594-4499'),
    (2, '1265-4497'),
    (3, '4476-7534'),
    (3, '2240-7689'),
    (4, '8324-7172'),
    (5, '8971-6292')

INSERT INTO EmployeePosition
    (NAME)
VALUES
    ('Administrador'),
    ('Gerente'),
    ('Cajero'),
    ('Vendedor'),
    ('Vigilante'),
    ('Limpieza')

INSERT INTO Employee
    (EmployeePositionId, BranchOfficeId, IdentityCard, Name, SurName, Address, MunicipalityId)
VALUES
    (1, 1, '001-210399-7563A', 'Lucian Herodes', 'Larruy Figueruelo', 'Calle santo del Zayas No. 906', 1),
    (2, 1, '001-140289-7536B', 'Nahum', 'Cotillo', 'Real del Bonafont No. 846', 1),
    (3, 1, '001-010197-6375A', 'Alberto', 'Asens', 'Real del Okafor No. 27', 1),
    (4, 1, '001-030501-5736A', 'Livio', 'Boar', 'Real del Valldecabres No. 46', 1),
    (5, 1, '001-090500-0023A', 'Leo', 'Mendoza', 'Bulevar Santa Rosa No. 152', 1),
    (6, 1, '001-231274-0098Q', 'Meliton', 'Parmo', 'Calle Hernan No. 206', 1),
    (1, 2, '401-180399-3674K', 'Pantaleon', 'Chavarria', 'Privada Higinio No. 155', 1),
    (2, 2, '001-180399-0029L', 'Demian', 'Orvich', 'Avenida Malanda No. 598', 1),
    (3, 2, '001-181199-1290H', 'Nathaniel', 'Sesay', 'Calle Zambrano No. 837', 1),
    (4, 2, '506-180390-0321C', 'Victorino', 'Pavesio', 'Calle Froufe No. 638', 1),
    (5, 2, '506-180999-3142L', 'Natalia', 'Henriksen', 'Bodegas No. 70', 1),
    (6, 2, '401-180398-4562C', 'Blanca', 'Moreau', 'Bulevar Chaco No. 867', 1),
    (1, 3, '506-180596-3572K', 'Guadalupe', 'Tubilleja', 'Calle Santo del Zamora Chinchipe No. 588', 1),
    (2, 3, '401-200795-7764A', 'Amaia', 'Collazo', 'Calle San Luis No. 26', 1),
    (3, 3, '001-180399-3246C', 'Isabel', 'Cejalvo', 'Bulevar Aldaya No. 537', 1),
    (4, 3, '001-100794-4562L', 'Victorio', 'Alla', 'Boulevard Arizona No. 158', 1),
    (5, 3, '001-081274-2356L', 'Liborio', 'Hicks', 'Privada Lamuño No. 891', 1),
    (6, 3, '401-261000-1241K', 'Nuria', 'Haldon', 'Real del Hobbs No. 233', 1),
    (1, 4, '001-180397-0954K', 'Oliverio', 'Sag', 'Real del Brady No. 576', 13),
    (2, 4, '001-040198-1022L', 'George', 'Vanegas', 'Real del García de Andoin No. 608', 13),
    (3, 4, '001-180399-7563A', 'Lilian', 'Benavidez', 'Boulevard Valentin No. 765', 13),
    (4, 4, '401-180394-8412C', 'Josefa', 'Llecha', 'Cerrada Aragon No. 280', 13),
    (5, 4, '001-181193-0012K', 'Gemma', 'Mota', 'Avenida Alicea No. 229', 13),
    (6, 4, '001-210390-2001L', 'Alberto', 'Stafford', 'Boulevard Vandellos No. 935', 13),
    (1, 5, '001-210378-0291K', 'Maximo', 'Ceada', 'Cerrada Schulte No. 331', 21),
    (2, 5, '401-180379-0027K', 'Cirilo', 'Bentayeb', 'Boulevard Pedroviejo No. 135', 21),
    (3, 5, '001-180377-5693A', 'Quirino', 'Haldon', 'Bulevar Recoder No. 921', 21),
    (4, 5, '001-180387-3008A', 'Eduard', 'Redaño', 'Boulevard Alfambra No. 185', 21),
    (5, 5, '001-180986-1212C', 'Alejo', 'Vallecillo', 'Narvarte No. 471', 21),
    (6, 5, '001-100997-7563A', 'Efrain', 'Rihuete', 'Avenida Alfambra No. 820', 21)

INSERT INTO EmployeeEmail
    (EmployeeId, Email)
VALUES
    (1, 'fvlarruy21@yopmail.com'),
    (2, 'cdnahumhector3@yopmail.com'),
    (3, 'ifalberto5@yopmail.com'),
    (4, 'ijmellado9@yopmail.com'),
    (5, 'gmsanna12@yopmail.com'),
    (6, 'iameliton0@yopmail.com'),
    (7, 'dupantaleonv20@yopmail.com'),
    (8, 'bedemianw4@yopmail.com'),
    (9, 'ahnathanielg7@yopmail.com'),
    (10, 'gtreynoso19@yopmail.com'),
    (11, 'agladisz0@yopmail.com'),
    (12, 'iublancap20@yopmail.com'),
    (13, 'jntubilleja13@yopmail.com'),
    (14, 'agamaiasagrario6@yopmail.com'),
    (15, 'cmisabelsara12@yopmail.com'),
    (16, 'cjvictorioo9@yopmail.com'),
    (17, 'irliborio17@yopmail.com'),
    (18, 'conuriadafne14@yopmail.com'),
    (19, 'hbsag1@yopmail.com'),
    (20, 'eafadili0@yopmail.com'),
    (21, 'iprosales15@yopmail.com'),
    (22, 'hdarboix3@yopmail.com'),
    (23, 'brgemmabelen17@yopmail.com'),
    (24, 'cbdamota1@yopmail.com'),
    (25, 'gxstafford23@yopmail.com'),
    (26, 'hjciriloz9@yopmail.com'),
    (27, 'jsquirinonatanael18@yopmail.com'),
    (28, 'cveduard21@yopmail.com'),
    (29, 'gygaribo24@yopmail.com'),
    (30, 'jfefrain5@yopmail.com ')

INSERT INTO EmployeePhone
    (EmployeeId, PhoneNumber)
VALUES
    (1, '7370-0695'),
    (1, '7370-3321'),
    (2, '8966-4845'),
    (3, '5558-8325'),
    (4, '8533-7247'),
    (5, '8255-9220'),
    (6, '8855-1894'),
    (7, '8333-9604'),
    (8, '8099-4836'),
    (9, '8977-7036'),
    (10, '57114643'),
    (11, '8355-8699'),
    (12, '8224-7028'),
    (13, '8300-4568'),
    (14, '8011-0529'),
    (15, '8122-4785'),
    (16, '8099-9745'),
    (17, '8466-5071'),
    (18, '8399-8717'),
    (19, '8322-4089'),
    (20, '8688-6340'),
    (21, '8779-5694'),
    (22, '8244-7220'),
    (23, '8566-8422'),
    (24, '8488-9597'),
    (25, '8144-0916'),
    (26, '8788-3310'),
    (27, '8122-9333'),
    (28, '8511-3511'),
    (29, '8155-9641'),
    (30, '8388-2282')

INSERT INTO Customer
    (MunicipalityId, Name, SurName, IdentityCard, Address)
VALUES
    (21, CONCAT('Radouane', 'Baltodano'), 'Silva', '001-230893-5698K', 'Privada Alejandra No. 475'),
    (10, CONCAT('Fabián', 'Jahoner'), CONCAT('Amiri ', 'Gutiérrez'), '001-041087-5984L', 'Boulevard Van Den Berg No. 819'),
    (1, CONCAT('Nicolás', 'Ricardo'), CONCAT('Bosco ', 'Ricorpe'), '001-220767-6479P', 'Boulevard Suaza No. 509'),
    (9, CONCAT('Luciano', 'Gandolfo'), CONCAT('Montoiro ', 'Aspron'), '001-220484-6495T', 'Boulevard Ozaez No. 666'),
    (3, CONCAT('Christopher', 'José'), CONCAT('Vizueta ', 'Marinelli'), '001-191066-9874D', 'Real del Polvorosa No. 500'),
    (8, CONCAT('Arnoldo', 'Gaspar'), CONCAT('Arreola ', 'Juárez'), '001-070397-9564I', 'Bulevar Severiche No. 733'),
    (13, CONCAT('Sebastián', 'Marcus'), CONCAT('Viva ', 'Dombriz'), '001-150767-9874G', 'Bulevar Punset No. 558'),
    (11, CONCAT('Doroteo', 'Manuel'), CONCAT('Toril ', 'Silva'), '001-100797-6924R', 'Abando No. 630'),
    (21, CONCAT('Abril', 'Murillas'), CONCAT('Garmazo ', 'Téllez'), '001-090485-9572F', 'Boulevard Morion No. 684'),
    (20, CONCAT('Emma', 'Nuria'), CONCAT('Palavichini ', 'Gutiérrez'), '001-130766-2517H', 'Boulevard Chenlo No. 916'),
    (17, CONCAT('Luisa', 'Encarnación'), CONCAT('Arau ', 'Serdio'), '001-060691-5248S', 'Privada Cissoko No. 410'),
    (9, CONCAT('Luana', 'Pantea'), CONCAT('Ferreira ', 'López'), '001-010475-6957W', 'Real del Coviella No. 363'),
    (4, CONCAT('Oscar', 'Adler'), CONCAT('Ayaou', ''), '001-181174-4875C', 'Calle Vazquez No. 914'),
    (1, CONCAT('Domingo', 'Griñolo'), CONCAT('Maixal ', 'Juárez'), '001-210675-9541O', 'Vilaregut No. 974'),
    (18, CONCAT('Joaquim', 'Saul'), CONCAT('Kebab ', 'Koussanini'), '001-150478-9652L', 'Avenida Nuero No. 876'),
    (22, CONCAT('Emma', 'Cotoi'), CONCAT('González ', 'Paiz'), '001-251175-5548G', 'Bulevar Sende No. 801'),
    (11, CONCAT('Amaya', 'Susana'), CONCAT('Balongo ', 'Pujolas'), '001-181086-5547H', 'Bulevar Avetisyan No. 565'),
    (4, CONCAT('Thomas', 'Biendicho'), CONCAT('Moreno ', 'Lopez'), '001-270908-4415L', 'Privada Alejandro No. 262'),
    (18, CONCAT('Ericka', 'Adriana'), CONCAT('Fajardo ', 'Dávila'), '001-020102-4587U', 'Moon No. 313'),
    (2, CONCAT('Romelio', 'Félix'), CONCAT('Cadena ', 'Valent'), '001-060971-5584F', 'Boulevard Satorra No. 191'),
    (9, CONCAT('Hugo', 'Poles'), CONCAT('Islan ', 'Pérez'), '001-191092-5547U', 'Calle Presencia No. 516'),
    (15, CONCAT('Cinta', 'Mariana'), CONCAT('Kabba ', 'Ojosnegros'), '001-250986-4712I', 'Boulevard Helge No. 8'),
    (21, CONCAT('Inmaculada', 'Marineli'), CONCAT('Brasai ', 'Silva'), '001-120398-6654B', 'Privada Nahuel No. 405'),
    (17, CONCAT('Joan', 'César'), CONCAT('Arnedillo ', 'Novejarque'), '001-141175-5547R', 'Iñarrea No. 965'),
    (7, CONCAT('Silvio', 'Ernesto'), CONCAT('Ruiz ', 'Palacios'), '001-060101-5898W', 'Calle Santo del Saucedo No. 605'),
    (3, CONCAT('Leoncio', 'Leonet'), CONCAT('Crujera ', ''), '001-090974-6998D', 'Avenida Infanzon No. 795'),
    (19, CONCAT('Saul', 'Enrique'), CONCAT('Santa ', 'Pug'), '001-250993-4698S', 'Jebbari No. 602'),
    (6, CONCAT('Homero', 'Raúl'), CONCAT('Salazar' , 'Alvarez'), '001-170281-6695V', 'Boulevard Donas No. 642'),
    (1, CONCAT('Kevin', 'Antonio'), CONCAT('Corrales ', 'Moreno'), '001-170281-6998P', 'Calle Santo del Zoel No. 64'),
    (17, CONCAT('Mar', 'Nazarena'), CONCAT('Gaspa ', 'Adanero'), '001-231194-9987B', 'Bulevar Matea No. 866'),
    (19, CONCAT('Nina', 'Daniela'), CONCAT('Barreto ', 'Bikuña'), '001-061181-5574J', 'Aguiño No. 342'),
    (8, CONCAT('Angela', 'Laurenne'), CONCAT('Shvetz ', 'Rein'), '001-040274-6698O', 'Privada Salazar No. 685'),
    (11, CONCAT('Estela', 'Laila'), CONCAT('Olivares ', 'Cierencia'), '001-251089-9987N', 'Cerrada Estivariz No. 563'),
    (9, CONCAT('Scarleth', 'Patricia'), CONCAT('Cuadra ', 'Chevez'), '001-070102-6698K', 'Real del Zalaya No. 559'),
    (3, CONCAT('Nicandro', 'Echeita'), CONCAT('Villasenor ', 'Canales'), '001-010590-6698H', 'Magallanes y de la Antartica Chilena No. 611')

INSERT INTO CustomerEmail
    (CustomerId, Email)
VALUES
    (1, 'eradouane15@yopmail.com'),
    (2, 'fyahoner89@yopmail.com'),
    (3, 'nricardo21@yopmail.com'),
    (4, 'lgandolfo87@yopmail.com'),
    (5, 'cjose22@yopmail.com'),
    (6, 'agaspar65@yopmail.com'),
    (7, 'smarcus12@yopmail.com'),
    (8, 'dmanuel51@yopmail.com'),
    (9, 'amurillas97@yopmail.com'),
    (10, 'enuria38@yopmail.com'),
    (11, 'lencarnacion54@yopmail.com'),
    (12, 'lpantea63@yopmail.com'),
    (13, 'oadler58@yopmail.com'),
    (14, 'dgrinolo91@yopmail.com'),
    (15, 'jsaul61@yopmail.com'),
    (16, 'ecotoi67@yopmail.com'),
    (17, 'asusana38@yopmail.com'),
    (18, 'tbiendicho60@yopmail.com'),
    (19, 'eadriana02@yopmail.com'),
    (20, 'rfelix09@yopmail.com'),
    (21, 'hpoles37@yopmail.com'),
    (22, 'cmariana58@yopmail.com'),
    (23, 'imarineli68@yopmail.com'),
    (24, 'jcesar47@yopmail.com'),
    (25, 'sernesto06@yopmail.com'),
    (26, 'lleonet99@yopmail.com'),
    (27, 'senrique28@yopmail.com'),
    (28, 'hraul74@yopmail.com'),
    (29, 'kantonio29@yopmail.com'),
    (30, 'mnazarena63@yopmail.com'),
    (31, 'ndaniela03@yopmail.com'),
    (32, 'alaurence88@yopmail.com'),
    (33, 'elaila14@yopmail.com'),
    (34, 'spatricia07@yopmail.com'),
    (35, 'necheita26@yopmail.com')

INSERT INTO CustomerPhone
    (CustomerId, PhoneNumber)
VALUES
    (1, '8644-5407'),
    (2, '8300-8565'),
    (3, '8999-7066'),
    (4, '8987-4562'),
    (5, '8799-8565'),
    (6, '8574-9245'),
    (7, '8958-7456'),
    (8, '8548-4755'),
    (9, '8125-4789'),
    (10, '8592-4781'),
    (11, '8958-7431'),
    (12, '8937-4516'),
    (13, '8658-7412'),
    (14, '8936-5244'),
    (15, '8985-8555'),
    (16, '8887-4541'),
    (17, '8112-2154'),
    (18, '8441-5412'),
    (19, '8774-8596'),
    (20, '8447-4152'),
    (21, '8874-5122'),
    (22, '8335-4781'),
    (23, '8114-5741'),
    (24, '8336-5441'),
    (25, '8458-7423'),
    (26, '8544-1266'),
    (27, '8987-4563'),
    (28, '8669-8574'),
    (29, '8774-5122'),
    (30, '8698-5584'),
    (31, '8669-8571'),
    (32, '8887-4512'),
    (33, '8669-8741'),
    (34, '8884-7741'),
    (35, '8998-7451')

INSERT INTO ProductCategory
    (Name)
VALUES
    ('Alimento Perro'),
    ('Alimento Gato'),
    ('Alimento Ave'),
    ('Alimento Roedor'),
    ('Accesorios Perro'),
    ('Accesorios Gato'),
    ('Accesorios Ave'),
    ('Accesorios Roedor'),
    ('Juguetes Perro'),
    ('Juguetes Gato')

INSERT INTO ProductBrand
    (Name)
VALUES
    ('Lion Brand')

INSERT INTO Product
    (ProductBrandId, ProductCategoryId, Name, Description, SalePrice)
VALUES
    (1, 1, 'Combis', 'Presentación de 50 libras. Para todas las Razas. 18% de proteínas. Multivitaminas y minerales. Nutrientes balanceados para una mejor condición física.Cereales, Harina de Carne y Hueso de Res, Harina de Pollo, Afrecho y/o Salvado de Trigo (fuente de fibra natural).', 1000),
    (1, 1, 'AlfaCan Adulto', 'Presentación 44 libras. Todas las razas. 21% de Proteína. Biotina para el mantenimiento de piel, mucosa y pelo. Fibra digestible derivada de trigo. Balance óptimos de proteína, grasa y energía metabolizable. Fuente de vitaminas y minerales de alta bio-disponibilidad. Libre de soya para evitar trastornos digestivos. Balance óptimo de calcio y fósforo. Salud de articulaciones. Prebióticos. Cereales, Harina de Carne y Hueso de Res, Harina de Pollo, Afrecho y/o Salvado de Trigo (fuente de fibra natural), Grasa de Pollo, Grasa de Res, Colorantes, Propionato de Calcio.', 968),
    (1, 8, 'Ferplast Two Floors Hamster Cage', 'Fabricada de plástico robusto transparente con base. Alambre neta parte superior. Incluye accesorios.', 300),
    (1, 1, 'Combis', 'Presentación de 1 libra. Para todas las Razas. 18% de proteínas. Multivitaminas y minerales. Nutrientes balanceados para una mejor condición física.Cereales, Harina de Carne y Hueso de Res, Harina de Pollo, Afrecho y/o Salvado de Trigo (fuente de fibra natural).', 20),
    (1, 1, 'SPARTACUS', 'Presentación de 7.7 libras. Elaborado con materia prima de la más alta calidad, destacando el uso de fuentes de proteinas y grasas de origen animal. Combinación de cerales. Fibra digestible derivada de trigo. Niveles óptimos de proteína, grasa y energía metabolizable. Libre de soy para evitar trastornos digestivos. Balance óptimo de calcio y fósforo. Cereales, Harina de Carne y Hueso de Res, Harina de Pollo, Afrecho y/o Salvado de Trigo (fuente de fibra natural)', 375),
    (1, 1, 'AlfaCan Cachorro', 'Presentación 1 libra. Todas las razas.  26% de Proteína. Biotina para el mantenimiento de piel, mucosa y pelo. Fibra digestible derivada de trigo. Balance óptimos de proteína, grasa y energía metabolizable. Fuente de vitaminas y minerales de alta bio-disponibilidad. Libre de soya para evitar trastornos digestivos. Balance óptimo de calcio y fósforo. Prebióticos. Cereales, Harina de Carne y Hueso de Res, Harina de Pollo, Afrecho y/o Salvado de Trigo (fuente de fibra natural), Grasa de Pollo, Grasa de Res, Colorantes, Propionato de Calcio, Extracto de Levadura, BHA/BHT, Extracto de Yucca Shidigera, Manano Oligosacárido (MOS), Vitamina A, Vitamina D, Vitamina E, Vitaminas del complejo B: Tiamina, Riboflavina, Niacina, Ácido Fólico, Pantotenato de Calcio, Piridoxina, Cianocobalamina, Biotina, Cloruro de Colina, Sulfato de Zinc, Proteinato de Zinc, Sulfato Ferroso, Proteinato de Hierro, Sulfato de Manganeso, Proteinato de Manganeso, Sulfato de Cobre, Proteinato de Cobre, Yoduro de Potasio, Levadura de Selenio.', 22),
    (1, 2, 'Gati Mar y Tierra', 'Presentación de 1 libra. Es un producto extrusado que le ofrece a su gato una dieta completa y balanceada que cumple con los requerimientos nutricionales establecidos por la Asociación Americana de Oficiales de Control de Alimento Animal (AAFCO) para todas las etapas de vida de su mascota. Corazón sano y visión saludable Taurina y Vitamina A. Sistema inmune foralecido Vimina E y Omega 3 como oxidante natural. Tracto urinario saludable Mezcla balanceada de minerales claves. Músculos fuertes y ágiles Mezcla de Proteinas de alta digestibilidad, Piel y pelo saludable Biotina, Omegas 3 y 6, Manganeso, Zinc orgánico.', 38),
    (1, 8, 'Niteangel - Puente colgante para hámsteres', 'Ofrece montañismo y exploración de deseos. Promueve el ejercicio y ayuda a desarrollar habilidades de coordinación y equilibrio. Los juguetes destructivos satisfacen la necesidad instintiva de los animales pequeños para masticar. Cierre de enlace rápido para una fácil fijación a la jaula. Se recomienda para hámsters, ratones, jerbos, ratas, deslizadores de azúcar y mascotas pequeñas de tamaño similar.', 100),
    (1, 1, 'Pedigree Complete Nutrition Adult Roasted Chicken, Rice & Vegetable Flavor', 'Presentación 1 libras. Contiene una (1) bolsa de 1 libra de alimento seco para perros adultos PEDIGREE Complete Nutrition, pollo asado, arroz y saborizante vegetal. Esta receta de comida seca ayuda a mantener un estilo de vida saludable con antioxidantes, vitaminas y minerales, en el delicioso sabor a pollo que adoran los perros. Proporciona granos integrales y ayuda a mantener una digestión saludable. Ofrece una nutrición completa y equilibrada enriquecida con ácidos grasos omega-6 para ayudar a nutrir la piel y el pelaje de su perro. Fabricado en los Estados Unidos con los mejores ingredientes del mundo. PEDIGREE Complete Nutrition Adult Dry Dog Food está hecho sin jarabe de maíz con alto contenido de fructosa, sin sabores artificiales y sin azúcar agregada.', 30),
    (1, 8, 'Wontee Botella de agua colgante 3 en 1', 'Tamaño  80 ml - 5.7” x 3.22” x 6.29”; 125 ml - 5.7” x 3.2” x 7.3”. Hecho de plástico no tóxico y acero inoxidable, no es perjudicial y es duradero para tus adorables animales. Tamaño pequeño para ahorrar espacio, y no tienes que preocuparte de que la mascota derrame el agua. El soporte de la botella es estable y no se agita, lo que te permite desmontarla y cambiar el agua fácilmente. La botella se puede fijar en una jaula superior con un diseño especial, y la base también puede ser un recipiente de comida para hámster.', 350),
    (1, 2, 'Purina Fancy Feast Medleys', 'Presentación de 30 Latas. Treinta (30) 3 oz. Purina Fancy Feast paquete de variedad de alimentos húmedos para gatos, colección de aves de corral con verdes de jardín en salsa. Las recetas con pollo de carne blanca tierna y pavo ofrecen un delicioso sabor. Los acentos de las verduras de jardín añaden un toque artístico. Delicada salsa o salsa proporciona un sabor que le gusta. Nutrición 100% completa y equilibrada para gatos adultos.', 2100),
    (1, 9, 'Wobble Wag Giggle Pelota', 'Como visto en la televisión, el perro Wobble Wag Wiggle hace divertidos sonidos re risas cuando se mueve alrededor. Diversión para perros de todas las edades y tamaños. Ayuda a mantener a los perros felices, sanos y en forma. Se puede usar en interiores o al aire libre. Los 6 bolsillos de embrague permiten que los perros lo recojan fácilmente.', 120),
    (1, 2, 'Purina Fancy Feast Filet Mignon Flavor With Real Seafood & Shrimp', 'Presentación de 3 libras. Un (1) 3 libras. Purina Fancy Feast Alimento seco para gatos, sabor a filet mignon con mariscos y camarones reales. Filet Mignon sabor con camarones reales y mariscos para un delicioso sabor. Nutrición 100% completa y equilibrada.', 200),
    (1, 8, 'BUCATSTATE Contenedor de baño de arena', 'Observación panorámica: plástico PS de alta permeabilidad, transparente y transparente, que es fácil de observar el baño de hámster, jugar y cavar. Diseño a prueba de arena: profundiza la altura inferior, el deflector de la extrancia ayuda eficazmente a prevenir derrames de arena. Entrada lateral: observa la vida del hámster sin obstáculos. Diseño cerrado para aumentar el tiempo de baño de hámster. Gran espacio interno para que tus mascotas puedan moverse libremente. Fácil de limpiar: la tapa es fácil de quitar, el diseño de arco de la parte inferior puede lavar las cosas sucias sin esfuerzo. Tamaño: 5.7 in de largo, 3.9 in de ancho, 3.9 in de alto. Se combina con una pala de arena de color al azar. Se recomienda para tus hámsters enanos jerbos, ratones u otras mascotas pequeñas.', 380),
    (1, 6, 'Gentledog Cuenco de cerámica', 'Juego de cuencos dobles para gatos: dos cuencos de cerámica están diseñados para la salida seca y húmeda, y permite que varias mascotas coman al mismo tiempo, y la alfombrilla de alimentación para gatos protege tus hermosos suelos de comida desordenada y derrames de agua. Perfecto para gatos y cachorros.', 500),
    (1, 2, 'Sheba Perfect Portions', 'Presentación de 24 Unidades de 2.6 onzas. Paquete de 2 bandejas (48 porciones en total) de SHEBA PERFECT PORTIONS Wet Cat Food Cuts in Gravy Variety Pack: (12) Roasted Chicken Entrée (6) Gourmet Salmon Entrée y (6) Tender Turkey Entrée. Fabricado con proteínas reales, además de vitaminas y minerales esenciales para el mantenimiento del gato y el crecimiento del gatito. Delicada comida suave para gatos hecha sin grano, sin maíz, soja o trigo. Tu gato devorará el delicioso sabor de la comida húmeda para gatos premium SHEBA en bandejas para salsas.', 950),
    (1, 10, 'UPSKY Juguete de rodillo giratorio', 'Construcción robusta y apilable: este juguete para gatos está hecho de polipropileno ultrarresistente y resistente a desgarros que resiste a los locos rascadores de gatos, una capa múltiple desmontable para una fácil limpieza, con una base antideslizante para evitar que el producto se enrolle. Por lo tanto, es perfecto para uno o más gatos.', 320),
    (1, 8, 'Ferplast Hamster Cage', 'aula para hámster de fácil mantenimiento. Una base de plástico profunda de 3.25 "contiene ropa de cama y se puede quitar para tirar la basura, etc. para la limpieza de rutina, otros accesorios de plástico y la parte superior de alambre se pueden limpiar con un detergente suave apto para hámsteres. Cómodo acceso por la puerta principal y superior | Simplemente levante la puerta superior para acceder a su hámster y los accesorios para limpiar o rellenar alimentos / agua.', 1584),
    (1, 6, 'Rabbitgoo Cama', 'Perfecto para mascotas de interiores: esta cama cuenta con una base de goma antideslizante que evita el deslizamiento, por lo que tu mascota no se resbalará accidentalmente cuando se suba o se salga de la cama. La parte inferior antideslizante mantiene la cama en su lugar para una colocación sin preocupaciones en suelos de baldosas o madera dura en el hogar. La cama con color elegante complementará la decoración de tu hogar y será el compañero interior de tu mascota.', 680),
    (1, 1, 'Pedigree Complete Nutrition Adult Roasted Chicken, Rice & Vegetable Flavor', 'Presentación 15 libras. Contiene una (1) bolsa de 15 libras de alimento seco para perros adultos PEDIGREE Complete Nutrition, pollo asado, arroz y saborizante vegetal. Esta receta de comida seca ayuda a mantener un estilo de vida saludable con antioxidantes, vitaminas y minerales, en el delicioso sabor a pollo que adoran los perros. Proporciona granos integrales y ayuda a mantener una digestión saludable. Ofrece una nutrición completa y equilibrada enriquecida con ácidos grasos omega-6 para ayudar a nutrir la piel y el pelaje de su perro. Fabricado en los Estados Unidos con los mejores ingredientes del mundo. PEDIGREE Complete Nutrition Adult Dry Dog Food está hecho sin jarabe de maíz con alto contenido de fructosa, sin sabores artificiales y sin azúcar agregada.', 598),
    (1, 2, 'Gati Mar y Tierra', 'Presentación de 17.6 libras. Es un producto extrusado que le ofrece a su gato una dieta completa y balanceada que cumple con los requerimientos nutricionales establecidos por la Asociación Americana de Oficiales de Control de Alimento Animal (AAFCO) para todas las etapas de vida de su mascota. Corazón sano y visión saludable Taurina y Vitamina A. Sistema inmune foralecido Vimina E y Omega 3 como oxidante natural. Tracto urinario saludable Mezcla balanceada de minerales claves. Músculos fuertes y ágiles Mezcla de Proteinas de alta digestibilidad, Piel y pelo saludable Biotina, Omegas 3 y 6, Manganeso, Zinc orgánico.', 608),
    (1, 8, 'GeerDuo - Bolsa para alimentador de heno', 'Resistente a las mordeduras: hecha de tela Oxford 600D y reforzar el borde del agujero, la bolsa de comedero de heno de conejo puede resistir las mordidas y ser duradera. Fácil de usar: el comedero de heno es adecuado para colgar en casi cualquier jaula, cualquier uso de cierres de presión, simplemente tira de las correas a través de la jaula y colócalo, mantenlo seguro a la jaula. Cómodo de limpiar: lo mejor de este comedero de heno de conejo es que mantiene la casa limpia, mantiene un generoso suministro de heno en un alimentador limpio y organizado, ayuda a reducir los residuos de heno. Tamaño para mascotas: 8.66 x 7.28 pulgadas para la bolsa de alimentador, y las dos ventanas es, ideal para conejos, cobayas, hámsters, chinchillas, gatos, erizos, cerdos u otros animales pequeños. Cómodo de llevar: esta bolsa de heno es suave y plegable, también se puede colgar con una correa para el hombro, fácil de llevar y almacenar.', 350),
    (1, 5, 'BAAPET - Correa resistente', 'Resistente – Hecho con la más fuerte cuerda de escalada de 1/2 pulgada de diámetro y gancho de clip muy duradero para tu seguridad y la de tu perro. deal para caminar, montar o entrenar. Esta longitud de 5 pies brinda un equilibrio perfecto entre libertad y control, da suficiente libertad a tu perro y todo lo que esté absolutamente bajo tu control.', 300),
    (1, 6, 'Rabbitgoo Cama', 'Perfecto para mascotas de interiores: esta cama cuenta con una base de goma antideslizante que evita el deslizamiento, por lo que tu mascota no se resbalará accidentalmente cuando se suba o se salga de la cama. La parte inferior antideslizante mantiene la cama en su lugar para una colocación sin preocupaciones en suelos de baldosas o madera dura en el hogar. La cama con color elegante complementará la decoración de tu hogar y será el compañero interior de tu mascota.', 680),
    (1, 2, 'Iams Proactive Health Adult Indoor Weight & Hairball Care With Salmon', 'Presentación de 22 libras. El salmón es el primer ingrediente de esta comida para gatos rica en nutrientes, formulada para ayudar a mantener los músculos fuertes y proporcionar a su gato energía saludable para jugar. La L-Carnitina ayuda a quemar grasa y mantener un metabolismo saludable. Ayuda a reducir las bolas de pelo antes de que comiencen con una mezcla de fibra patentada a medida que incluye pulpa de remolacha. Parte integral de una dieta equilibrada de control de peso y un régimen básico de cuidado de bolas de pelo para gatos. Proporciona a tu gato una comida de proteínas de alta calidad que satisface con un 10% menos de grasa que IAMS Healthy Adult Original con pollo.', 1055),
    (1, 10, 'Potaroma Pescado eléctrico', 'Diversión interactiva para gatos: cada vez que tu felino toca este juguete para gatos, el sensor de movimiento automático integrado se mueve en acción y el pez se mueve de una manera que se mueve, intrigando a tu gato para patear y jugar. Materiales seguros y duraderos: este juguete para gatos está hecho de felpa duradera, segura y no tóxica para tu gatito.', 600),
    (1, 1, 'Goldy Cachorro', 'Presentación 8.8 libras. Todas las razas. 26% de proteínas. Multivitaminas y minerales. Pelo y piel saludables por el uso de Omega 3 y 6. Zanahorias para la buena digestión y ojos brillantes. Huevos para el buen desarrollo y reparación muscular. Nutrientes balanceados para una mejor condición física. Libre de soya. Cereales, Harina de Carne y Hueso de Res, Harina de Pollo, Harina de Pescado (fuente de Omega) Afrecho y/o Salvado de Trigo (fuente de fibra natural), Grasa de Pollo, Grasa de Res, Colorantes, Propionato de Calcio, Extracto de Levadura, BHA/BHT, Pulpa de Zanahoria, Huevo Deshidratado, Extracto de Yucca Shidigera, Manano Oligosacárido (MOS), Vitamina A, Vitamina D, Vitamina E, Vitaminas del complejo B: Tiamina, Riboflavina, Niacina, Ácido Fólico, Pantotenato de Calcio, Piridoxina, Cianocobalamina, Biotina, Cloruro de Colina, Sulfato de Zinc, Proteinato de Zinc, Sulfato Ferroso, Sulfato de Manganeso, Sulfato de Cobre, Yoduro de Potasio, Levadura de Selenio.', 458),
    (1, 6, 'MSBC Cartón rascador ', 'Salón y rascador: el instinto de los gatos los conduce a descansar en el lado cóncavo. El cartón rascador MSBC satisface esta necesidad debido a la superficie cóncava que proporciona un lugar cómodo para que tus gatos tomen un descanso después de rascar. Detalles del producto: Tamaño: 17.2 in de largo x 13.1 in de ancho x 4.0 in de alto. Ideal para uso en interiores. Mantén el rascador seco para evitar que el papel corrugado ablande la humedad.', 950),
    (1, 1, 'ASGARD Adulto', 'Presentación de 44 libras. Todas las razas. 26% de proteína. Multivitaminas y minerales. Zanahorias para la buena digestión y ojos brillantes. Huevos para el desarrollo y reparación muscular.  Salud de articulaciones. Pelo y piel saludables por el uso de Omega 3 y 6, además de Zinc orgánico. Promueve la salud intestinal con el uso de Prebióticos (MOS). Elaborado con materia prima de la más alta calidad, destacando el uso de fuentes de proteína y grasa de origen animal. Protección antioxidante por el uso de Selenio orgánico. Libre de soya. Cereales, Harina de Carne y Hueso de Res, Harina de Pollo, Harina de Pescado (fuente de Omega) Afrecho y/o Salvado de Trigo (fuente de fibra natural), Grasa de Pollo, Grasa de Res, Colorantes, Propionato de Calcio, Extracto de Levadura, BHA/BHT, Pulpa de Zanahoria, Huevo Deshidratado, Extracto de Yucca Shidigera, Manano Oligosacárido (MOS), Vitamina A, Vitamina D, Vitamina E, Vitaminas del complejo B: Tiamina, Riboflavina, Niacina, Ácido Fólico, Pantotenato de Calcio, Piridoxina, Cianocobalamina, Biotina, Cloruro de Colina, Sulfato de Zinc, Proteinato de Zinc, Sulfato Ferroso, Proteinato de Hierro, Sulfato de Manganeso, Proteinato de Manganeso, Sulfato de Cobre, Proteinato de Cobre, Yoduro de Potasio, Levadura de Selenio, Clorhidrato de Condroitina y Glucosamina.', 2200),
    (1, 5, 'KASBAH Tazón', 'Solo para perros medianos y grandes: diámetro superior: 8.8 pulgadas, diámetro de la base: 12 pulgadas, altura: 2 pulgadas. Este tazón de rompecabezas para perro puede contener 3 tazas de comida para perro. Notas: este cuenco grande para perros está diseñado para perros medianos/grandes, no para perros pequeños/gatos.', 300),
    (1, 10, 'MeoHui Juguetes de plumas', 'Entretenimiento emocionante para gatos: los gatos están locos por juegos perseguidores. Combina cuerda y pluma en un gran juguete para gatos, este juguete de plumas para gatos es un irresistible señuelo para gatos. Swing este "señuelo" de plumas hará que tus gatos se emocionen y saca el "instinto de caza", haciendo que corren y salten como un animal salvaje, volviendo a tus gatos locos con alegría. Incluso los gatos adultos juegan como un gatito de nuevo.', 890),
    (1, 1, 'ASGARD Cachorro', 'Presentación de 25 libras. Todas las razas. 27% de proteína. Multivitaminas y minerales. Zanahorias para la buena digestión y ojos brillantes. Huevos para el desarrollo y reparación muscular.  Salud de articulaciones. Pelo y piel saludables por el uso de Omega 3 y 6, además de Zinc orgánico. Promueve la salud intestinal con el uso de Prebióticos (MOS). Elaborado con materia prima de la más alta calidad, destacando el uso de fuentes de proteína y grasa de origen animal. Protección antioxidante por el uso de Selenio orgánico. Libre de soya. Cereales, Harina de Carne y Hueso de Res, Harina de Pollo, Harina de Pescado (fuente de Omega) Afrecho y/o Salvado de Trigo (fuente de fibra natural), Grasa de Pollo, Grasa de Res, Colorantes, Propionato de Calcio, Extracto de Levadura, BHA/BHT, Pulpa de Zanahoria, Huevo Deshidratado, Extracto de Yucca Shidigera, Manano Oligosacárido (MOS), Vitamina A, Vitamina D, Vitamina E, Vitaminas del complejo B: Tiamina, Riboflavina, Niacina, Ácido Fólico, Pantotenato de Calcio, Piridoxina, Cianocobalamina, Biotina, Cloruro de Colina, Sulfato de Zinc, Proteinato de Zinc, Sulfato Ferroso, Proteinato de Hierro, Sulfato de Manganeso, Proteinato de Manganeso, Sulfato de Cobre, Proteinato de Cobre, Yoduro de Potasio, Levadura de Selenio, Clorhidrato de Condroitina y Glucosamina.', 1300),
    (1, 5, 'PRADOG Correa de cadena', 'Tamaño de la correa de la cadena: el ancho de la cadena es de 0.472 in, la longitud total disponible es de 35.8 in', 100),
    (1, 2, 'Iams Proactive Health Adult Indoor Weight & Hairball Care With Chicken & Turkey', 'Presentación de 22 libras. El pollo es el primer ingrediente de esta comida para gatos rica en nutrientes, formulada para ayudar a mantener los músculos fuertes y proporcionar a su gato energía saludable para jugar. La L-Carnitina ayuda a quemar grasa y mantener un metabolismo saludable. Ayuda a reducir las bolas de pelo antes de que comiencen con una mezcla de fibra patentada a medida que incluye pulpa de remolacha. Parte integral de una dieta equilibrada de control de peso y un régimen básico de cuidado de bolas de pelo para gatos. Proporciona a tu gato una comida de proteínas de alta calidad que satisface con un 10% menos de grasa que IAMS Healthy Adult Original con pollo.', 1055),
    (1, 9, 'Zappy Goods Tug Toy', 'El juguete para cachorros es perfecto para cuando el humano está en el trabajo y quiere asegurarse de que su mascota tiene todos sus juguetes favoritos de estimulación de cachorro y no va a través del cubo o masticar las almohadas.', 140),
    (1, 8, 'Niteangel - Ruedas de ejercicio', 'Rueda para hámster supersilenciosa: rueda giratoria Niteangel silenciosa diseñada con rodamientos de bolas duales; proporciona a tu pequeño hámster una felicidad sin fin al funcionar, es silenciosa de noche aunque el hámster la esté usando. Accesorios imprescindibles para jaulas de hámsteres: a tu peluda criatura le encantará este juguete de rueda de hámster ya que los hámsteres aman la rueda rodante que les ayuda a romper el aburrimiento y a enriquecer su tiempo nocturno, también los ayuda a mantenerse sanos y fuertes. Altura ajustable y base sólida: diseñada para que tu mascota pueda entrar o salir de forma segura y fácil, la altura variable es de entre 1 pulgada y 4 pulgadas en la parte inferior: puedes ajustar la altura de la rueda para que se adapte al tamaño de tu mascota y a los materiales que hayas puesto en la superficie. El diseño de base sólida de esta rueda aporta comodidad, ya la coloques en una jaula construida por ti mismo, ya en un terrario, tanque de cristal o plataforma. Juguete duradero y decoración bonita: producto fabricado con plástico PS (tambor para correr) y acrílico (base de rueda de hámster), alta transparencia y resistencia a la mordida, diseño robusto que logra un soporte y apoyo seguros cuando el hámster corre o camina. Más colores disponibles para elegir: ¡te proporcionamos ideas frescas de decoración.', 750),
    (1, 5, 'DogBuddy Tazón', 'el cuenco grande de metal para mascotas está especialmente diseñado para razas grandes de perros, la capacidad máxima es de 11.0 lbs. Puede satisfacer el uso diario de perros grandes.', 190),
    (1, 7, 'Prevue Pet Products Jaula económica', 'Una jaula económica para tu pequeño pájaro. Es una gran jaula de viaje. Incluye 2 vasos de plástico, un columpio y 2 perchas de plástico. Se puede utilizar con el soporte para jaula de pájaros de acero tubular Prevue Pet Products 1781 blanco. 12.0 in de largo, 9.0 in de ancho y 15.0 in de alto con espaciado de alambre de 0.5 in.', 320),
    (1, 9, 'ZippyPaws Peltz Skinny Peltz', 'Paquete de valor de 3 perritos de peluche juguetes. Cada juguete incluye 3 Squeakers. Longitud de juguete: 18 in. Sin relleno. Ideal para pequeñas y medianas perros', 300),
    (1, 1, 'AlfaCan Adulto', 'Presentación 1 libra. Todas las razas. 21% de Proteína. Biotina para el mantenimiento de piel, mucosa y pelo. Fibra digestible derivada de trigo. Balance óptimos de proteína, grasa y energía metabolizable. Fuente de vitaminas y minerales de alta bio-disponibilidad. Libre de soya para evitar trastornos digestivos. Balance óptimo de calcio y fósforo. Salud de articulaciones. Prebióticos. Cereales, Harina de Carne y Hueso de Res, Harina de Pollo, Afrecho y/o Salvado de Trigo (fuente de fibra natural), Grasa de Pollo, Grasa de Res, Colorantes, Propionato de Calcio.', 22),
    (1, 1, 'Pedigree Complete Nutrition Adult Roasted Chicken, Rice & Vegetable Flavor', 'Presentación 33 libras. Contiene una (1) bolsa de 33 libras de alimento seco para perros adultos PEDIGREE Complete Nutrition, pollo asado, arroz y saborizante vegetal. Esta receta de comida seca ayuda a mantener un estilo de vida saludable con antioxidantes, vitaminas y minerales, en el delicioso sabor a pollo que adoran los perros. Proporciona granos integrales y ayuda a mantener una digestión saludable. Ofrece una nutrición completa y equilibrada enriquecida con ácidos grasos omega-6 para ayudar a nutrir la piel y el pelaje de su perro. Fabricado en los Estados Unidos con los mejores ingredientes del mundo. PEDIGREE Complete Nutrition Adult Dry Dog Food está hecho sin jarabe de maíz con alto contenido de fructosa, sin sabores artificiales y sin azúcar agregada.', 791),
    (1, 2, 'Kitty Mar y Tierra', 'Presentación 18 libras. 30% de proteínas. Multivitaminas y minerales. Músculos fuertes y ágiles. Pelo y piel saludables. Corazón sano. Sistema inmune. Cereales (Harina de Maíz), Harina de Carne y Hueso de Res, Harina de Pollo, Harina de Pescado, Afrecho y/o Salvado de Trigo (fuente de fibra natural), Grasa de Pollo, Grasa de Res, Colorantes, Propionato de Calcio, Extracto de Levadura, BHA/BHT, Extracto de Yucca Shidigera, Manano Oligosacárido (MOS), Taurina, Vitamina A, Vitamina D, Vitamina E, Vitaminas del complejo B: Tiamina, Riboflavina, Niacina, Ácido Fólico, Pantotenato de Calcio, Piridoxina, Cianocobalamina, Biotina, Cloruro de Colina, Sulfato de Zinc, Proteinato de Zinc, Sulfato Ferroso, Sulfato de Manganeso, Sulfato de Cobre, Yoduro de Potasio, Levadura de Selenio, Ácido fosfórico y/o Ácido cítrico, Sal.', 540),
    (1, 1, 'Pedigree Complete Nutrition Adult Grilled Steak & Vegetable Flavor', 'Presentación 1 Libra. Contiene un (1) bolsa de 1 libra. Bolsa de comida seca para perros adultos Pedigree Complete Nutrition, carne a la parrilla y sabor vegetal. Esta receta de alimentos secos ayuda a mantener un estilo de vida saludable con antioxidantes, vitaminas y minerales, en el delicioso sabor a carne que los perros aman. Proporciona granos enteros y ayuda a apoyar la digestión saludable. Proporciona una nutrición completa y equilibrada enriquecida con ácidos grasos omega-6 para ayudar a nutrir la piel y el pelaje de tu perro. Fabricado en Estados Unidos con los mejores ingredientes del mundo. Pedigree Complete Nutrition alimento seco para perros adultos está hecho sin jarabe de maíz de alta fructosa, sin sabores artificiales, y sin azúcar añadido.', 30),
    (1, 5, 'FurHaven Cama ortopédica', 'La base de espuma ortopédica soporta las articulaciones y alivia los puntos de presión. Los refuerzos en forma de L soportan la cabeza de tu mascota, lo que ayuda a alinear la columna vertebral para una máxima comodidad. Los refuerzos soportan la espalda y las caderas de tu mascotas, lo que entrega apoyo adicional. La funda de la cama es totalmente extraíble con cremallera para lavar a máquina.', 450),
    (1, 8, 'Kaytee - Kit de expansión', 'Permite la expansión de Critter Trail hábitats. Incluye conector fun-nel tubos, anillos, y Lazy look Out. Para hámsters, ratones, Gerbils o de otros animales pequeños. 7 pulgadas de largo, 7 pulgadas de ancho, 17-1/2 pulgadas de alto. Cada kit contiene todo lo que necesitas para extender su Critter Trail Home.', 350),
    (1, 5, 'Chich Classic Tazón', 'Materiales de primera calidad: este cuenco de agua para perro está hecho con acero inoxidable de calidad superior, altamente duradero, un metal no tóxico BPA que es 100% apto para alimentos, seguro, fácil de lavar y garantizado para soportar la prueba del tiempo.', 130),
    (1, 3, 'Kaytee Forti-Diet Pro Health Conure y Lovebird Food', 'Presentación de 4 libras. Omega 3 para apoyar la salud del cerebro y del corazón. Kaytee es una marca recomendada por veterinarios. Mejora la salud de la piel y las plumas para un plumaje vibrante y saludable. Rico en antioxidantes naturales para la salud general y apoyo inmunológico. Perfecto para conjuras y pájaros de amor. Kaytee tiene más de 150 años de experiencia nutricional para proporcionar lo mejor para tu mascota. Fabricado en Estados Unidos.', 493),
    (1, 8, 'Niteangel Natural Wooden', 'Madera natural. 0.15 Libras. Madera natural. Un interesante juguete con animales pequeños. Es adecuado para hámsters y ratones. 9 entradas (salidas). Tamaño: 7.9 x 2.8 x 2.8 in.', 135),
    (1, 7, 'VIVOHOME Jaula de hierro', 'Marco resistente: esta gran jaula para pájaros está hecha de acero de alta calidad, bajo en carbono, inoxidable y resistente al agua, con calidad y durabilidad garantizadas; esta jaula está cubierta con pintura de patrón de martillo no tóxico, dando a los pájaros un entorno de vida más saludable y seguro; el marco de acero es más estable, con cuatro ruedas giratorias en la parte inferior, para que puedas moverla donde quieras, ahorrándote esfuerzo; la jaula tiene un diseño perfecto antiescape y un cierre que es firme y seguro.', 300),
    (1, 1, 'Goldy Adulto', 'Presentación de 8.8 Libras. Todas las razas. 24% de Proteína. Multivitaminas y minerales. Pelo y piel saludables por el uso de Omega 3 y 6. Nutrientes balanceados para una mejor condición fisica. Fibra prebiótica(MOS) ayuda a una digestión más óptima y el desarrollo del sistema digestivol. Zinc órganico para la salud de la piel y el pelaje. Libre de soya. Cereales, Harina de Carne y Hueso de Res, Harina de Pollo, Harina de Pescado (fuente de Omega) Afrecho y/o Salvado de Trigo (fuente de fibra natural), Grasa de Pollo, Grasa de Res, Colorantes, Propionato de Calcio, Extracto de Levadura, BHA/BHT, Pulpa de Zanahoria, Huevo Deshidratado, Extracto de Yucca Shidigera, Manano Oligosacárido (MOS), Vitamina A, Vitamina D, Vitamina E, Vitaminas del complejo B: Tiamina, Riboflavina, Niacina, Ácido Fólico, Pantotenato de Calcio, Piridoxina, Cianocobalamina, Biotina, Cloruro de Colina, Sulfato de Zinc, Proteinato de Zinc, Sulfato Ferroso, Proteinato de Hierro, Sulfato de Manganeso, Proteinato de Manganeso, Sulfato de Cobre, Proteinato de Cobre, Yoduro de Potasio, Levadura de Selenio, Clorhidrato de Condroitina y Glucosamina.', 440),
    (1, 1, 'Pedigree Complete Nutrition Adult Grilled Steak & Vegetable Flavor', 'Presentación 33 Libras. Contiene un (1) bolsa de 33 libras. Bolsa de comida seca para perros adultos Pedigree Complete Nutrition, carne a la parrilla y sabor vegetal. Esta receta de alimentos secos ayuda a mantener un estilo de vida saludable con antioxidantes, vitaminas y minerales, en el delicioso sabor a carne que los perros aman. Proporciona granos enteros y ayuda a apoyar la digestión saludable. Proporciona una nutrición completa y equilibrada enriquecida con ácidos grasos omega-6 para ayudar a nutrir la piel y el pelaje de tu perro. Fabricado en Estados Unidos con los mejores ingredientes del mundo. Pedigree Complete Nutrition alimento seco para perros adultos está hecho sin jarabe de maíz de alta fructosa, sin sabores artificiales, y sin azúcar añadido.', 872),
    (1, 4, 'Vitakraft Menu Care Complex Premium Nutrion', 'Presetación de 5 libras. Sabor de gran sabor a tu conejo le encantará incluyendo zanahorias, verdes, granos y frutas. Los nutrientes clave apoyan la salud general y el bienestar mientras proporcionan una dieta equilibrada. Alimento para conejos con ingredientes que tu conejo va a buscar en la naturaleza. Dha Omega 3 ''s para apoyar la salud cerebral, la función del corazón, la visión, un pelaje saludable y un sistema inmunológico fuerte. La bolsa resellable mantiene la frescura.', 60),
    (1, 2, 'Gati Mar y Tierra', 'Presentación de 6.6 libras. Es un producto extrusado que le ofrece a su gato una dieta completa y balanceada que cumple con los requerimientos nutricionales establecidos por la Asociación Americana de Oficiales de Control de Alimento Animal (AAFCO) para todas las etapas de vida de su mascota. Corazón sano y visión saludable Taurina y Vitamina A. Sistema inmune foralecido Vimina E y Omega 3 como oxidante natural. Tracto urinario saludable Mezcla balanceada de minerales claves. Músculos fuertes y ágiles Mezcla de Proteinas de alta digestibilidad, Piel y pelo saludable Biotina, Omegas 3 y 6, Manganeso, Zinc orgánico.', 245),
    (1, 3, 'Wagner''s Deluxe Blend' , 'Presentación de 10 libras. Atrae a posen y terreno pájaros. Contiene girasol y semillas de propósito general. Un precio moderado valorado mezcla que obtiene la pájaros. Más Alta Calidad frijoles utilizados. Fabricado en el Estados Unidos.', 661),
    (1, 2, 'Iams Proactive Health Adult With Chicken', 'Presentación de 22 Libras. Contiene una (1) bolsa de 22 libras de alimento seco para gatos con pollo IAMS Proactie Healthy Adult. El pollo es el ingrediente número uno en esta comida para gatos rica en nutrientes diseñada para un cuerpo sano para jugar. Apoya la digestión saludable de tu gato con fibra natural y prebióticos. Promueve una piel sana y un pelaje brillante con ácidos grasos omega-6 y -3. Fabricado en los Estados Unidos con los mejores ingredientes del mundo. Ayuda a nutrir un corazón sano con nutrientes esenciales, incluidos calcio y potasio. Ayuda a tu gato a mantener músculos fuertes con proteínas de alta calidad y una nutrición 100% completa y equilibrada con 0% de rellenos.', 1270),
    (1, 2, 'Kitty Mar y Tierra', 'Presentación 1 libra. 30% de proteínas. Multivitaminas y minerales. Músculos fuertes y ágiles. Pelo y piel saludables. Corazón sano. Sistema inmune. Cereales (Harina de Maíz), Harina de Carne y Hueso de Res, Harina de Pollo, Harina de Pescado, Afrecho y/o Salvado de Trigo (fuente de fibra natural), Grasa de Pollo, Grasa de Res, Colorantes, Propionato de Calcio, Extracto de Levadura, BHA/BHT, Extracto de Yucca Shidigera, Manano Oligosacárido (MOS), Taurina, Vitamina A, Vitamina D, Vitamina E, Vitaminas del complejo B: Tiamina, Riboflavina, Niacina, Ácido Fólico, Pantotenato de Calcio, Piridoxina, Cianocobalamina, Biotina, Cloruro de Colina, Sulfato de Zinc, Proteinato de Zinc, Sulfato Ferroso, Sulfato de Manganeso, Sulfato de Cobre, Yoduro de Potasio, Levadura de Selenio, Ácido fosfórico y/o Ácido cítrico, Sal.', 30),
    (1, 2, 'Purina Fancy Feast With Savory Chicken & Turkey', 'Presentación de 12 libras. 12 libras. Purina Fancy Feast - Comida seca para gatos con pollo sabroso y pavo. Nutrición 100% completa y equilibrada para gatos adultos. Sabores de aves de corral reales. Proporciona vitaminas y minerales esenciales para ayudar a apoyar la salud felina. Con forma encantadora.', 504),
    (1, 2, 'Gati Mar y Tierra', 'Presentación de 2.2 libras. Es un producto extrusado que le ofrece a su gato una dieta completa y balanceada que cumple con los requerimientos nutricionales establecidos por la Asociación Americana de Oficiales de Control de Alimento Animal (AAFCO) para todas las etapas de vida de su mascota. Corazón sano y visión saludable Taurina y Vitamina A. Sistema inmune foralecido Vimina E y Omega 3 como oxidante natural. Tracto urinario saludable Mezcla balanceada de minerales claves. Músculos fuertes y ágiles Mezcla de Proteinas de alta digestibilidad, Piel y pelo saludable Biotina, Omegas 3 y 6, Manganeso, Zinc orgánico.', 84)

INSERT INTO Supplier
    (MunicipalityId, Name, Address)
VALUES
    (23, 'Lion Brand', 'Iglesia San Sebastian, Costado Sur'),
    (3, 'Compañia Distribuidora de Nicaragua S.A', 'Km 6 1/2 Carretera Norte.'),
    (3, 'Sudesa', 'Montoya 75 metros al Este, Calle ')

INSERT INTO SupplierEmail
    (SupplierId, Email)
VALUES
    (1, 'info@lionbrand.com.ni'),
    (2, 'contaco@cdn.com.ni'),
    (3, 'sudesa@sudesa.com.ni')

INSERT INTO SupplierPhone
    (SupplierId, PhoneNumber)
VALUES
    (1, '2255-7720'),
    (1, '2266-7032'),
    (2, '2255-7721'),
    (3, '2116-7022')

INSERT INTO Purchase
    (SupplierId, ProductId, Quantity, PurchasePrice, TimeStamp)
VALUES
    (1, 1, 40, 1000.00, '2022-01-01 16:11:00'),
    (1, 4, 350, 20.00, '2022-01-02 10:30:00'),
    (1, 5, 75, 375.00, '2022-01-03 12:07:00'),
    (1, 2, 40, 968.00, '2022-01-04 15:16:00'),
    (1, 6, 145, 22.00, '2022-01-05 10:01:00'),
    (1, 7, 420, 38.00, '2022-01-06 12:11:00'),
    (1, 21, 90, 608.00, '2022-01-07 08:11:00'),
    (1, 27, 55, 458.00, '2022-01-08 16:05:00'),
    (1, 29, 40, 2200.00, '2022-01-09 15:36:00'),
    (1, 32, 40, 1300.00, '2022-01-10 15:11:00'),
    (1, 40, 240, 22.00, '2022-01-11 10:02:00'),
    (1, 41, 70, 550.00, '2022-01-12 12:11:00'),
    (1, 43, 25, 540.00, '2022-01-13 12:28:00'),
    (1, 51, 40, 440.00, '2022-01-14 16:05:00'),
    (1, 57, 125, 30.00, '2022-02-01 08:11:00'),
    (2, 44, 175, 30.00, '2022-02-02 15:07:00'),
    (2, 45, 25, 450.00, '2022-02-03 15:11:00'),
    (2, 46, 45, 350.00, '2022-02-03 12:05:00'),
    (2, 47, 125, 130.00, '2022-02-05 12:16:00'),
    (2, 48, 30, 490.00, '2022-02-06 10:11:00'),
    (2, 49, 85, 135.00, '2022-02-07 16:36:00'),
    (2, 50, 15, 300.00, '2022-02-08 16:11:00'),
    (2, 33, 40, 100.00, '2022-02-09 08:01:00'),
    (2, 34, 15, 1055.00, '2022-02-10 12:05:00'),
    (2, 35, 150, 140.00, '2022-02-11 12:11:00'),
    (2, 36, 220, 750.00, '2022-02-12 15:05:00'),
    (2, 37, 135, 190.00, '2022-02-13 10:11:00'),
    (2, 38, 70, 320.00, '2022-02-14 15:02:00'),
    (2, 39, 70, 300.00, '2022-02-15 08:07:00'),
    (2, 3, 70, 300.00, '2022-02-16 12:58:00'),
    (2, 22, 40, 350.00, '2022-02-17 12:11:00'),
    (2, 23, 55, 300.00, '2022-02-18 16:02:00'),
    (2, 24, 95, 680.00, '2022-02-19 08:22:00'),
    (2, 25, 90, 1055.00, '2022-02-20 10:58:00'),
    (3, 14, 90, 380.00, '2022-02-21 12:36:00'),
    (3, 18, 5, 1584.00, '2022-02-22 15:11:00'),
    (3, 54, 40, 245.00, '2022-02-23 16:22:00'),
    (3, 58, 75, 84.00, '2022-02-24 16:16:00'),
    (3, 15, 70, 500.00, '2022-02-25 10:58:00'),
    (3, 56, 15, 1270.00, '2022-02-26 12:01:00'),
    (3, 30, 75, 300.00, '2022-03-01 10:11:00'),
    (3, 31, 85, 890.00, '2022-03-02 16:28:00'),
    (3, 28, 25, 950.00, '2022-03-03 15:22:00'),
    (3, 8, 120, 100.00, '2022-03-04 16:11:00'),
    (3, 52, 70, 872.00, '2022-03-05 12:05:00'),
    (3, 42, 45, 791.00, '2022-03-06 10:28:00'),
    (3, 9, 420, 30.00, '2022-03-07 10:07:00'),
    (3, 20, 120, 598.00, '2022-03-08 08:11:00'),
    (3, 26, 80, 600.00, '2022-03-09 08:36:00'),
    (3, 13, 70, 200.00, '2022-03-10 12:28:00'),
    (3, 11, 25, 2100.00, '2022-03-11 16:01:00'),
    (3, 58, 95, 504.00, '2022-03-12 10:11:00'),
    (3, 19, 75, 680.00, '2022-03-13 15:05:00'),
    (3, 16, 55, 950.00, '2022-03-14 10:02:00'),
    (3, 17, 35, 320.00, '2022-03-15 12:05:00'),
    (3, 53, 120, 60.00, '2022-03-16 08:11:00'),
    (3, 55, 45, 661.00, '2022-03-17 08:28:00'),
    (3, 12, 210, 120.00, '2022-03-18 10:36:00'),
    (3, 10, 125, 350.00, '2022-03-18 12:01:00')

INSERT INTO Currency
    (Name)
VALUES
    ('Córdoba'),
    ('Dólar')

INSERT INTO PaymentType
    (Name)
VALUES
    ('Efectivo'),
    ('Tarjeta')

INSERT INTO Sale
    (CurrencyId, PaymentTypeId, CustomerId, EmployeeId, Payment)
VALUES
    (1, 2, 16, 4, 100000)
INSERT INTO Sale
    (CurrencyId, PaymentTypeId, CustomerId, EmployeeId, Payment)
VALUES
    (1, 2, 29, 4, 100000)
INSERT INTO Sale
    (CurrencyId, PaymentTypeId, CustomerId, EmployeeId, Payment)
VALUES
    (1, 2, 20, 4, 100000)
INSERT INTO Sale
    (CurrencyId, PaymentTypeId, CustomerId, EmployeeId, Payment)
VALUES
    (1, 2, 17, 10, 100000)
INSERT INTO Sale
    (CurrencyId, PaymentTypeId, CustomerId, EmployeeId, Payment)
VALUES
    (1, 2, 22, 10, 100000)
INSERT INTO Sale
    (CurrencyId, PaymentTypeId, CustomerId, EmployeeId, Payment)
VALUES
    (1, 2, 31, 10, 100000)
INSERT INTO Sale
    (CurrencyId, PaymentTypeId, CustomerId, EmployeeId, Payment)
VALUES
    (1, 2, 3, 10, 100000)
INSERT INTO Sale
    (CurrencyId, PaymentTypeId, CustomerId, EmployeeId, Payment)
VALUES
    (1, 2, 13, 10, 100000)
INSERT INTO Sale
    (CurrencyId, PaymentTypeId, CustomerId, EmployeeId, Payment)
VALUES
    (1, 2, 14, 16, 100000)
INSERT INTO Sale
    (CurrencyId, PaymentTypeId, CustomerId, EmployeeId, Payment)
VALUES
    (1, 2, 8, 16, 100000)
INSERT INTO Sale
    (CurrencyId, PaymentTypeId, CustomerId, EmployeeId, Payment)
VALUES
    (1, 2, 10, 16, 100000)

INSERT INTO SaleDetail
    (SaleId, ProductId, Quantity, SalePrice)
VALUES
    (1, 40, 9, 43),
    (1, 18, 3, 31),
    (1, 1, 5, 321),
    (1, 51, 1, 53),
    (1, 22, 5, 33),
    (2, 28, 3, 43),
    (3, 38, 31, 26),
    (3, 1, 6, 75),
    (3, 57, 24, 21),
    (3, 22, 3, 53),
    (4, 6, 13, 10),
    (4, 57, 7, 100),
    (4, 14, 46, 342),
    (4, 9, 37, 821),
    (5, 4, 48, 53),
    (6, 27, 6, 12),
    (6, 3, 41, 12),
    (6, 49, 2, 12),
    (7, 41, 19, 10),
    (7, 43, 22, 10),
    (7, 7, 50, 10),
    (7, 17, 3, 10),
    (7, 58, 6, 10),
    (8, 12, 29, 37),
    (8, 46, 19, 37),
    (8, 26, 8, 37),
    (8, 28, 1, 37),
    (8, 45, 3, 37),
    (9, 58, 18, 75),
    (9, 47, 10, 75),
    (9, 19, 15, 75),
    (9, 21, 18, 75),
    (9, 40, 20, 75),
    (10, 40, 18, 34),
    (10, 19, 17, 34),
    (11, 56, 1, 34)