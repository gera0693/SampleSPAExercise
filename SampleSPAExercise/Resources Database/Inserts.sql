--Inserciones de tablas 

--Father

INSERT INTO [dbo].[Father] ([Id],[Name],[LastName],[Place],[Job],[Contact]) 
VALUES ('5b5bee96-f683-44c9-bf04-322e61b2ea9e','Gerardo','Villalobos','San Miguel','Ingeniero','88888888'),
('718626e8-b73c-4816-b556-6b7bde6c0767','Pablo','Mora','San Pedro','Tecnico Refrigeración','88888888'),
('3371bc88-f29b-4351-b7ee-8db4f2fb76d7','Freddy','Villalobos','San Miguel','Construccion','88888888'),
('f134e0d2-93e9-491b-ab3e-a0f00d71d903','Antonio','Villalobos','San Miguel','Construccion','88888888'),
('6936f104-5be8-414b-8617-a964003eceee','Jorge','Aguilar','Escazu','Tecnico Computacion','88888888'),
('96247fd6-fde0-43b3-8429-dbabd28b541c','Gilberto','Villalobos','San Miguel','Construccion','88888888'),
('83e30a21-e7e0-4212-a3b3-dc07ec0a606b','Victor','Villalobos','San Miguel','Constructor','88888888'),
('33cad08d-953c-4b66-a847-e5583626a743','Jonathan','Villalobos','El Llano','Guarda','88888888'),
('21631966-2f29-4877-bbb6-ec1bd9332a14','Jose Luis','Villalobos','San Miguel','Constructor','88888888');

--Mother

INSERT INTO [dbo].[Mother] ([Id],[Name],[LastName],[Place],[Job],[Contact]) 
VALUES ('71db12cf-8971-47e2-8e59-641a11573a58','Viviana','Villalobos','San Miguel','Ama de casa','88888888'),
('d1aa8268-97c0-45eb-8e1f-766d7783aab8','Mayra','Chaves','San Miguel','Ama de casa','88888888'),
('259f2521-bb48-4929-b6c4-8265fc07145c','Jessica','Villalobos','San Pedro','Ama de casa','88888888'),
('ee20df3c-57ec-4c63-9968-9ee94388f5d4','Maritza','Gutierrez','San Miguel','Ama de casa','88888888'),
('d01bcc75-4d86-4b3b-941a-d472bd85d95b','Sara','Aguero','San Miguel','Ama de casa','88888888'),
('4aa06b99-cb0b-4d08-8696-d487d9aac810','Marina','Villalobos','San Miguel','Ama de casa','88888888'),
('1d55afdc-5ae7-402f-9495-eb028dc23a1e','Vanessa','Solano','El Llano','Secretaria','88888888'),
('12739f0d-95d3-41e4-ad7a-fc9c1c49c32c','Ana','Villalobos','San Miguel','Ama de casa','88888888'),
('629818fa-e63d-446b-8a49-ff290267b202','Flora','Villalobos','San Miguel','Ama de casa','88888888');

--Teacher
INSERT INTO [dbo].[Teacher] ([Id],[Name],[LastName],[SchoolGroup],[Schedule]) 
VALUES ('286617ec-3de0-4eb3-94ba-3d1e04daca08','Kattia','Granados','10A','--'),
('1df46c88-1491-4c84-83db-6f0d45845217','Shalom','Marin','1A','--'),
('0efd4450-5696-47b0-9866-8a81f8e3d5a2','Alonso','Ocampo','8B','--'),
('673b1e5b-8d1c-4f73-b80d-c87fa9078c28','Marcela','Mendez','9A','--');

--Sibling
INSERT INTO [dbo].[Sibling] ([Id],[Name],[LastName],[SchoolGroup]) 
VALUES ('a177c1e2-851b-4052-96d5-1432378f72f5','Viviana','Villalobos','1A'),
('7598bbc2-87db-4418-813e-d97e19925c46','Jessica ','Villalobos','3A');

--StudentLateness
INSERT INTO [dbo].[StudentLateness] ([Id],[Name],[LastName],[Age],[Grade],[IdTeacher],[IdMother],[IdFather],[IdSibling],[Place],[NumbersOfLate],[Street],[City],[State],[Week],[Month],[CreatedDateRegister]) 
VALUES ('3ceaf4f1-6643-4b47-80ed-08886ee56b9a','Kevin','Aguilar',8,'2A','1df46c88-1491-4c84-83db-6f0d45845217','71db12cf-8971-47e2-8e59-641a11573a58','6936f104-5be8-414b-8617-a964003eceee',NULL,'San Miguel',0,'1','Heredia','San Miguel',2,2,'2023-06-02 19:15:46.1733333'),
('4da2a7b8-8163-44ae-8eff-130a23d487aa','Luciana','Aguilar',8,'2A','1df46c88-1491-4c84-83db-6f0d45845217','71db12cf-8971-47e2-8e59-641a11573a58','6936f104-5be8-414b-8617-a964003eceee',NULL,'San Miguel',0,'1','Heredia','San Miguel',2,2,'2023-06-02 19:15:46.1733333'),
('3d26c53d-a150-49d8-b97b-3152f790a7c2','Pedro','Aguilar',8,'2A','1df46c88-1491-4c84-83db-6f0d45845217','71db12cf-8971-47e2-8e59-641a11573a58','6936f104-5be8-414b-8617-a964003eceee',NULL,'San Miguel',0,'1','Heredia','San Miguel',2,2,'2023-06-02 19:15:46.1733333'),
('0e01b1ba-413d-44bf-9116-b6fb404737ff','Arturo','Aguilar',8,'2A','1df46c88-1491-4c84-83db-6f0d45845217','71db12cf-8971-47e2-8e59-641a11573a58','6936f104-5be8-414b-8617-a964003eceee',NULL,'San Miguel',0,'1','Heredia','San Miguel',2,2,'2023-06-02 19:15:46.1733333'),
('bfbf5b52-78ce-4a04-9988-cbf5107f1cd9','Leandro','Aguilar',8,'2A','1df46c88-1491-4c84-83db-6f0d45845217','71db12cf-8971-47e2-8e59-641a11573a58','6936f104-5be8-414b-8617-a964003eceee',NULL,'San Miguel',0,'1','Heredia','San Miguel',2,2,'2023-06-02 19:15:46.1733333'),
('a1be23f7-904f-414d-992c-d72eb3f7a2d5','Gerald','Villalobos',13,'6A','1df46c88-1491-4c84-83db-6f0d45845217','12739f0d-95d3-41e4-ad7a-fc9c1c49c32c','5b5bee96-f683-44c9-bf04-322e61b2ea9e',NULL,'San Miguel',1,'1','Heredia','Santo Domingo',1,1,'2023-06-02 18:18:28.4700000'),
('dad32355-9edd-4e0b-8fc1-b9d7214f5383','Gerardo','Villalobos',12,'6A','1df46c88-1491-4c84-83db-6f0d45845217','12739f0d-95d3-41e4-ad7a-fc9c1c49c32c','5b5bee96-f683-44c9-bf04-322e61b2ea9e','7598bbc2-87db-4418-813e-d97e19925c46','San Miguel',1,'1','Heredia','Santo Domingo',1,1,'2023-06-02 18:18:28.4700000'),
('acaf3991-2c9a-4639-bc46-00db9a306c19','Alberto','Villalobos',13,'6A','1df46c88-1491-4c84-83db-6f0d45845217','12739f0d-95d3-41e4-ad7a-fc9c1c49c32c','5b5bee96-f683-44c9-bf04-322e61b2ea9e',NULL,'San Miguel',1,'1','Heredia','Santo Domingo',1,1,'2023-06-02 18:18:28.4700000'),
('879bc541-239f-436d-b0f7-0321d0e237ed','Freth','Villalobos',12,'6A','1df46c88-1491-4c84-83db-6f0d45845217','12739f0d-95d3-41e4-ad7a-fc9c1c49c32c','5b5bee96-f683-44c9-bf04-322e61b2ea9e','7598bbc2-87db-4418-813e-d97e19925c46','San Miguel',1,'1','Heredia','Santo Domingo',1,1,'2023-06-02 18:18:28.4700000'),
('e9052bd7-54e6-406a-8565-3adce232c501','Michael','Villalobos',13,'6A','1df46c88-1491-4c84-83db-6f0d45845217','12739f0d-95d3-41e4-ad7a-fc9c1c49c32c','5b5bee96-f683-44c9-bf04-322e61b2ea9e',NULL,'San Miguel',1,'1','Heredia','Santo Domingo',1,1,'2023-06-02 18:18:28.4700000'),
('b4609f36-e647-48af-baff-89cceb1cdf0d','Leonel','Villalobos',11,'6A','1df46c88-1491-4c84-83db-6f0d45845217','12739f0d-95d3-41e4-ad7a-fc9c1c49c32c','5b5bee96-f683-44c9-bf04-322e61b2ea9e',NULL,'San Miguel',4,'1','Heredia','Santo Domingo',4,4,'2023-06-02 18:18:28.4700000'),
('ed676765-71b1-477e-9ac3-9090b0b0357d','Carlos','Villalobos',11,'6A','1df46c88-1491-4c84-83db-6f0d45845217','12739f0d-95d3-41e4-ad7a-fc9c1c49c32c','5b5bee96-f683-44c9-bf04-322e61b2ea9e',NULL,'San Miguel',4,'1','Heredia','Santo Domingo',4,4,'2023-06-02 18:18:28.4700000'),
('f639e9fc-f3c8-4f41-a43f-287156e4f9a6','Oscar','Villalobos',11,'6A','1df46c88-1491-4c84-83db-6f0d45845217','12739f0d-95d3-41e4-ad7a-fc9c1c49c32c','5b5bee96-f683-44c9-bf04-322e61b2ea9e',NULL,'San Miguel',4,'1','Heredia','Santo Domingo',4,4,'2023-06-02 18:18:28.4700000'),
('a3ed7f64-5ca3-442b-b6c9-acc9fbb7baf8','Hillary','Villalobos',11,'6A','1df46c88-1491-4c84-83db-6f0d45845217','12739f0d-95d3-41e4-ad7a-fc9c1c49c32c','5b5bee96-f683-44c9-bf04-322e61b2ea9e',NULL,'San Miguel',4,'1','Heredia','Santo Domingo',4,4,'2023-06-02 18:18:28.4700000'),
('1961e4dc-2658-41dc-b7b7-f619224a7088','Fernanda','Villalobos',12,'6A','286617ec-3de0-4eb3-94ba-3d1e04daca08','d01bcc75-4d86-4b3b-941a-d472bd85d95b','83e30a21-e7e0-4212-a3b3-dc07ec0a606b',NULL,'San Miguel',5,'1','Heredia','San Miguel',2,2,'2023-06-02 19:22:48.7500000'),
('24684de1-d462-4f8a-9d18-4137346385e6','Alma','Villalobos',12,'6A','286617ec-3de0-4eb3-94ba-3d1e04daca08','d01bcc75-4d86-4b3b-941a-d472bd85d95b','83e30a21-e7e0-4212-a3b3-dc07ec0a606b',NULL,'San Miguel',5,'1','Heredia','San Miguel',2,2,'2023-06-02 19:22:48.7500000'),
('52986fae-6384-4d51-a2aa-5a50539474e9','Dayana','Villalobos',12,'6A','286617ec-3de0-4eb3-94ba-3d1e04daca08','d01bcc75-4d86-4b3b-941a-d472bd85d95b','83e30a21-e7e0-4212-a3b3-dc07ec0a606b',NULL,'San Miguel',5,'1','Heredia','San Miguel',2,2,'2023-06-02 19:22:48.7500000'),
('ac1729d2-d993-4303-b7a3-8572e3c38358','Karla','Villalobos',12,'6A','286617ec-3de0-4eb3-94ba-3d1e04daca08','d01bcc75-4d86-4b3b-941a-d472bd85d95b','83e30a21-e7e0-4212-a3b3-dc07ec0a606b',NULL,'San Miguel',5,'1','Heredia','San Miguel',2,2,'2023-06-02 19:22:48.7500000'),
('6c6e2c01-4aad-48ba-8d4c-3ae14c972ffe','Brad','Aguilar',8,'3A','1df46c88-1491-4c84-83db-6f0d45845217','71db12cf-8971-47e2-8e59-641a11573a58','6936f104-5be8-414b-8617-a964003eceee',NULL,'San Miguel',7,'1','Heredia','San Miguel',2,2,'2023-06-02 19:15:46.1733333'),
('f8ec8d2c-2e01-475b-98e6-a3b42e411f2f','Josue','Aguilar',8,'3A','1df46c88-1491-4c84-83db-6f0d45845217','71db12cf-8971-47e2-8e59-641a11573a58','6936f104-5be8-414b-8617-a964003eceee',NULL,'San Miguel',7,'1','Heredia','San Miguel',2,2,'2023-06-02 19:15:46.1733333'),
('67eb1c94-a55a-4bb5-8bf2-bf9c37b20546','Bryan','Aguilar',8,'3A','1df46c88-1491-4c84-83db-6f0d45845217','71db12cf-8971-47e2-8e59-641a11573a58','6936f104-5be8-414b-8617-a964003eceee',NULL,'San Miguel',7,'1','Heredia','San Miguel',2,2,'2023-06-02 19:15:46.1733333'),
('6cd52d84-087b-487c-9b21-f1d42e0ecbbb','Sebastian','Mora',14,'10A','1df46c88-1491-4c84-83db-6f0d45845217','259f2521-bb48-4929-b6c4-8265fc07145c','718626e8-b73c-4816-b556-6b7bde6c0767',NULL,'San Pedro',12,'1','Coronado','San Pedro',4,4,'2023-06-02 19:13:36.1400000'),
('e76467b1-c6d3-4646-bfca-8de0ccaceae3','Gerson','Mora',14,'10A','1df46c88-1491-4c84-83db-6f0d45845217','259f2521-bb48-4929-b6c4-8265fc07145c','718626e8-b73c-4816-b556-6b7bde6c0767',NULL,'San Pedro',12,'1','Coronado','San Pedro',4,4,'2023-06-02 19:13:36.1400000'),
('cc7be69d-9930-4aa8-9652-2b3510ecf199','Santiago','Mora',14,'10A','1df46c88-1491-4c84-83db-6f0d45845217','259f2521-bb48-4929-b6c4-8265fc07145c','718626e8-b73c-4816-b556-6b7bde6c0767',NULL,'San Pedro',12,'1','Coronado','San Pedro',4,4,'2023-06-02 19:13:36.1400000'),
('f2d3b9e7-170f-474e-ac7d-2f2fb841c3cb','Matias','Mora',14,'10A','1df46c88-1491-4c84-83db-6f0d45845217','259f2521-bb48-4929-b6c4-8265fc07145c','718626e8-b73c-4816-b556-6b7bde6c0767',NULL,'San Pedro',12,'1','Coronado','San Pedro',4,4,'2023-06-02 19:13:36.1400000'),
('7d53e234-7093-4f1e-9405-35188d2bcbea','Maria','Mora',14,'10A','1df46c88-1491-4c84-83db-6f0d45845217','259f2521-bb48-4929-b6c4-8265fc07145c','718626e8-b73c-4816-b556-6b7bde6c0767',NULL,'San Pedro',12,'1','Coronado','San Pedro',4,4,'2023-06-02 19:13:36.1400000');
