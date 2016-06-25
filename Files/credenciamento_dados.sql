insert into endereco values 
	(1,'Ibicuitinga', 'Distrido de Viçosa', 'Renascer Longar',05, 'casa', 'proximo de um campo de futebol'),
	(2,'Quixadá', 'Avenida António José', 'Cap. Manoel Antônio',1996, 'casa',NULL),
	(3,'Quixadá', 'Avenida António José', 'Cap. Manoel Antônio',1993, 'casa',NULL),
	(4,'Morada Nova', 'Centro', 'Fernando Rodrigues',1200, 'AP. 201',NULL),
	(5,'Morada Nova', 'Centro', 'Rua. José Siprino',1887, 'casa',NULL),
	(6,'Canidé', 'Av. José Feitosa Filho', 'Manoel Virgilio Cardoso',1023, 'casa',NULL),
	(7,'Guaramirá', 'Mescejana', 'Epitácio Pessoa',1234, 'casa',NULL),
	(8,'Quixadá', 'Cedro Novo', 'José Fernando Pessoa',1885, 'casa',NULL),
	(9,'Quixadá', 'Alto São Francisco', 'Cap. Manoel Antônio',1997, 'casa',NULL),
	(10,'Quixadá', 'Alto São Francisco', 'Cap. Manoel Antônio',1998, 'casa',NULL);

insert into telefone values
	(1,12345678),
	(2,12213172),
	(3,13712399),
	(4,23179173),
	(5,12376319),
	(6,18893733),
	(7,13296326),
	(8,73818231),
	(9,21093732),
	(10,21037100),
	(11,10710371),
	(12,10937010),
	(13,10931123),
	(14,21131313),
	(15,13131414),
	(16,23134343),
	(17,11103103),
	(18,13710023),
	(19,19379372),
	(20,19239137),
	(31,23801830),
	(32,10310232),
	(33,19237323),
	(34,19883713),
	(35,10372372),
	(36,93291319),
	(37,12369363),
	(38,73917391),
	(39,98173173),
	(40,91273912);

insert into participante values 
	(11, 'João Fernandes de Freitas', 06280607348, 'joao@gmail.com','Universidade Federal do Ceará', 'UFC',1,1),
	(12, 'Maria Nobre Saraiva', 12324567673, 'maria@gmail.com','Universidade Estadual do do Ceará','UECE',NULL,2),
	(13, 'José Maria Nobre Saraiva', 12343245676, 'jose@gmail.com','Universidade Federal do Ceará','UFC',NULL,3),
	(14, 'Ricardo De Sousa Freitas', 12323454645, 'ricardo@gmail.com','Universidade do Vale do Acaraú','UVA',4,4),
	(15, 'Jaelton Barbosa de Freitas', 47924964294, 'Jaelton@gmail.com','Catolica Rainha do Sertão','FCRS',NULL,5),
	(16, 'Joelio da Silva', 94623946242, 'joelio@gmail.com','Universidade Federal do Ceará','UFC',5,6),
	(17, 'Marcos Felipe Olando', 96713613863, 'marcos@gmail.com','Universidade de Princenton','UP',6,7),
	(18, 'Rivaldo Castelo Branco', 31638362362, 'rivaldo@gmail.com','Universidade Federal do Ceará','UFC',7,8),
	(19, 'Lucas Herrigue Perreira', 29361631836, 'lucas@gmail.com','Universidade do Alabama','UAB',8,9),
	(110, 'Felipe da Silva Pinho', 13183681636, 'felipe@gmail.com','Universidade Federal do Ceará','UFC',NULL,10),
	(111, 'Marques Amarro Queiroz', 91239163196, 'marques@gmail.com','Universidade Federal do Ceará','UFC',NULL,11);


insert into evento values 
	(1, 'FLISOL', 'Instalação de Software Livre', 'Samy Sá', 0.00, 'PET Conecções de Saberes', 1200,NULL),
	(2, 'WTISC', 'Paletras e Minicursos', 'David Romero', 0.00, 'PET sistemas de Informação', 1200,NULL),
	(3, 'CONSEGI', 'Paletras e Minicursos', 'Fernando Pessoa', 0.00, 'Ministerio da Fazenda', 100000,NULL),
	(4, 'Encontro Universitarios', 'Artigos e Palestras', NULL, 0.00, 'Universidade Federal do Ceará', 300,NULL),
	(5, 'Hackathon', 'Apresentar Tecnicas usadas por Crackers e Hackers', 'Kevin Mitnick', 10000, 'Mitnick Security', 40,NULL),
	(6, 'Cloud Essentials', 'Entender os termos comuns e definições da computação em nuvem', 'Renato Saldanha', 0.00, 'ACLARE', 450,NULL),
	(7, 'PENTEST', 'Técnicas para testes de segurança em ambientes de redes corporativas', 'Reinaldo Weber', 143.50, 'Umbrella Corporation', 1200,NULL),
	(8, 'User Stories', 'Por que e como escrever requisitos de forma ágil?', 'Vitória Rodriguês', 129.90, 'Vict Unity', 378,NULL),
	(9, 'CIAB 2014', 'É um evento da América Latina tanto para o setor financeiro quanto para a área de Tecnologia',NULL, 124.9, 'Federação Brasileira de Bancos', 60000,NULL),
	(10, 'CloudConf', 'Conferencia sobre Cloud Computing', 'Kevin Mitnick', 00, 'Corporation Tecnologies', 30000,NULL);

insert into patrocinador values
	(21 , 'Soni', 238.9,NULL,11),
	(22 , 'Nike', 123,NULL,12),
	(23 , 'Soni', 238.9 , 2,13),
	(24 , 'Visa', 500 , 3,14),
	(25 , 'São Geraldo', 100 , NULL,15),
	(26 , 'Pedrobras', 1200,NULL,16),
	(27 , 'Globo', 123,NULL,17),
	(28 , 'Adidas', 126,NULL,18),
	(29 , 'Ale', 657,NULL,19),
	(210 , 'Lubrax', 120,NULL,20);

insert into patrocinador_evento values 
	(21,3),
	(21,2),
	(21,6),
	(22,3),
	(24,5),
	(22,3),
	(27,8),
	(26,1),
	(26,8),
	(29,1),
	(210,1);

insert into custo values
	(1,'Papel',10),
	(2,'Impressão',13.05),
	(3,'Compustivel',60.30),
	(4,'Aqua',13.90),
	(5,'Luz',30),
	(6,'marketing',8.0),
	(7,'Cola',50.7),
	(8,'telefone',123),
	(9,'internet',89.90),
	(10,'Roupas',450),
	(11,'tinta',46);

insert into meio_divulgacao values 
	(1,'Porta_a_Porta'),
	(2,'Facebook'),
	(3,'Jornal'),
	(4,'Radio'),
	(5,'Televisão'),
	(6,'Pramfetos'),
	(7,'Twiter'),
	(8,'Blog'),
	(9,'Mercantis'),
	(10,'Festas'),
	(11,'Google');

insert into divulgacao values
	(1,2,3),
	(1,2,3),
	(2,3,4),
	(1,2,3),
	(6,6,1),
	(7,8,2),
	(3,2,3),
	(1,7,3),
	(9,2,3),
	(2,9,3),
	(1,5,3);

insert into tipo_atracao values 
	(1,'Minicursos'),
	(2,'Palestras'),
	(3,'Entreterimento'),
	(4,'Cinema'),
	(5,'Desenvolvimento WEB'),
	(6,'Desenvolvimento Desktop'),
	(7,'Software Libre'),
	(8,'Prestação de Serviços'),
	(9,'Suporte'),
	(10,'Documentarios');

insert into atracao values
	(1, 'Curso Django', 20 , 'Sala 02', 0 , 1,2),
	(2, 'Desenvolvimento de Jogos na SFML', 25 , 'Sala 03', 12.00 , 1,1),
	(3, 'Install Fast', 500 , 'Sala 01', 0 , 8,4),
	(4, 'Palestra de Boas Vindas', 1200 , 'salão', 0 , 2,3),
	(5, 'Palestra sobre Segurança da Informação', 120 , 'Sala 04', 12.00 , 1,5),
	(6, 'Aprendendo HTML', 40 , 'Sala 05', 10.00 , 5,6),
	(7, 'Palestra Sobre o Mercado de Trabalho', 100 , 'Sala 06', 0 , 2,7),
	(8, 'Introdução ao Terminal Linux', 30 , 'Sala 07', 12.00 , 7,8),
	(9, 'Aprenda a Usar o Gimp', 30 , 'Sala 08', 30.00 , 7,9),
	(10, 'Novas Fronteiras do Conhecimento', 20 , 'Sala 02', 0 , 10,10);

insert into participante_participara values
	(1000,11,1,2),
	(1001,12,1,1),
	(1002,13,2,7),
	(1003,14,4,9),
	(1004,15,5,3),
	(1005,16,3,1),
	(1006,17,6,1),
	(1007,11,9,1),
	(1008,18,2,4),
	(1009,14,4,8);

insert into convidado values 
	(31,'Samy Sá',11111111111, 'Doutor em Matematica','Matematica', '02-03-2014',NULL,31),
	(32,'Germana Nascimento ',12345678901, 'Doutora em Administração','Administracao', '02-03-2014',1,32),
	(33,'Linconl Rocha',22222222222, 'Doutor em Ciência da Computação','Teorias', '03-03-2014',3,33),
	(34,'David Sena',12312312312, 'Doutor em Ciência da Computação','Desenvolvimento', '02-03-2014',5,34),
	(35,'Paulo Rego',12345456763, 'Mestre em Sistemas e Midias','Pratica', '03-03-2014',6,35),
	(36,'Michel Sales',19238457694, 'Doutor em Segurança da Informação','Palestra', '02-03-2014',NULL,36),
	(37,'Alberto Sampaio',19283463722, 'Doutor em Gestão do Conhecimento','Palestra', '02-03-2014',8,37),
	(38,'João Marcelo',12834756482, 'Doutor em Ciência da Computação','Sistemas Operacionais', '03-03-2014',9,38),
	(39,'Pauline Jucá',47362539484, 'Doutora em Inteligencia Artificial','Inteligencia Artificial', '02-03-2014',10,39),
	(310,'Arthur Araruna',10121273648, 'Doutor em Ciência da Computação','Analise de Algoritmos', '03-03-2014',3,40);

insert into convidado_participara values
	(31, 2 , 2),
	(32, 2 , 1),
	(33, 2 , 7),
	(34, 2 , 1),
	(35, 2 , 2),
	(36, 2 , 5),
	(36, 2 , 2),
	(37, 2 , 1),
	(38, 2 , 3),
	(39, 2 , 2),
	(310, 1 , 3);

insert into organizador values 
	(1,'Fernando Grispin', 'grinspin@hotmail.com', NULL, 2, 12),
	(2,'Diogo Nazareno', 'diogo32@gmail.com', NULL, 5, 14),
	(3,'Ricarso Sousa', 'rsousa@gmail.com', NULL, 3, 32),
	(4,'Geovani Saldanha', 'geovdanha@gmail.com', NULL, 6, 15),
	(5,'Mabio Castelo Branco', 'mabiocbranco@gmail.com', NULL, 7, 34),
	(6,'Aurilene Saraiva', 'ausaraiva@hotmail.com', NULL, 6, 5),
	(7,'Nayara Saraiva', 'nayara12@hotmail.com', NULL, 5, 15),
	(8,'Abimael Castelo Branco', 'abimael4@hotmail.com', NULL, 7, 16),
	(9,'Rogrigo Gassinger', 'rgassiger@yahoo.com', NULL, 7, 18),
	(10,'Clara Gassinger', 'cgassinger@hotmail.com', NULL, 8, 35);

update organizador set supervisor= 2 where nome='Fernando Grispin';
update organizador set supervisor= 2 where nome='Diogo Nazareno';
update organizador set supervisor= 3 where nome='Ricarso Sousa';
update organizador set supervisor= 3 where nome='Geovani Saldanha';
update organizador set supervisor= 5 where nome='Mabio Castelo Branco';
update organizador set supervisor= 5 where nome='Aurilene Saraiva';
update organizador set supervisor= 1 where nome='Nayara Saraiva';
update organizador set supervisor= 7 where nome='Abimael Castelo Branco';
update organizador set supervisor= 1 where nome='Rogrigo Gassinger';
update organizador set supervisor= 7 where nome='Clara Gassinger';

insert into tarefa values
	(1,'Organizar os Horarios','pre-evento', NULL , '03/12/2014'),
	(2,'Organizar os Horarios','pre-evento', NULL , '03/12/2014'),
	(3,'Arrumar os Projetores','pre-evento', NULL , '04/12/2014'),
	(4,'Limpar as Salas','pre-evento', '05:00' , '10/12/2014'),
	(5,'Limpar as Salas','pre-evento', '05:00' , '10/12/2014'),
	(6,'Preparar as Cadeiras','durante-evento', '07:00' , '10/12/2014'),
	(7,'Testar os Equipamentos','pre-evento', '07:00' , '10/12/2014'),
	(8,'Comprar Crachars','pre-evento', NULL , '05/12/2014'),
	(9,'Limpar as Salas','pos-evento', '17:30' , '11/12/2014'),
	(10,'Fazer Backup das Informações Obtidas','pos-evento', '18:00' , '11/12/2014');

insert into fornecedor values
	(1, 'Marcia Gravações', 'marciasons@gmail.com', 3 ,5),
	(2, 'Renata Videos', 'dvideo@hotmail.com', 5, 6),
	(3, 'Sorvererias Balmer','sorv@gmail.com', 3 , 4),
	(4, 'Mercantil Sort', 'mersort@gmail.com', 6, 7),
	(5, 'Lavanderia Girão', 'landeriag@gmail.com', 5, 6),
	(6, 'Eletronicos Mais TEC', 'electec@gmail.com' , 9, 12),
	(7, 'Mercan O Tio', 'mercaOtio@gmail.com', 1, 38),
	(8, 'Joalheria Rafa', 'rafajoia@yahoo.com.br', 10, 1),
	(9, 'Impresões Quixadá','impressqt@gmail.com', 9, 3),
	(10,'Lojas Padre Cicero','lpc@gmail.com', 8,12);

insert into tipo_equipamento values
	(1,'Audio'),
	(2,'Video'),
	(3,'Limpeza'),
	(4,'Fios'),
	(5,'Cozinha'),
	(6,'Alicates'),
	(7,'Cozinha'),
	(8,'Transporte'),
	(9,'Suporte aos Participantes'),
	(10,'Agua');
	
insert into equipamento values
	(1, 'Caixas de Som', 2,1),
	(2, 'TV Tela de 22 Polegadas',1, 2),
	(3, 'TV Tela de 41 Polegadas',2,2),
	(4, 'Panelas para Cozinhar', 10, 5),
	(5, 'Estenção para caixas de som',1,4),
	(6, 'Microfones',15,1),
	(7, 'Chave inglêsa', 6,2),
	(8, 'Mangueiras', 3, 10),
	(9, 'Baldes', 7, 3),
	(10, 'Rodos', 3, 3),
	(11, 'Vasouras', 5, 3),
	(12, 'Cordas', 8,6);

insert into fornecedor_fornece values
	(1,1,1),
	(2,1,5),
	(3,1,7),
	(4,5,4),
	(5,2,8),
	(6,6,6),
	(1,2,3),
	(8,6,3),
	(4,5,3),
	(5,6,3),
	(7,6,5);

insert into fornecedor_juridico values
	(1,12356765),
	(3,31239236),
	(5,32370273),
	(7,16280607),
	(9,73974439);

insert into fornecedor_fisico values
	(2,32343432112),
	(4,37272302702),
	(6,10370273020),
	(8,23792730200),
	(10,1023821223);

insert into hora values
	(1,'07:00', '07:30'),
	(2,'07:30', '08:00'),
	(3,'08:00', '09:00'),
	(4,'09:00', '09:30'),
	(5,'10:00', '11:00'),
	(6,'11:00', '11:30'),
	(7,'11:30', '12:30'),
	(8,'13:00', '14:00'),
	(9,'14:00', '14:30'),
	(10,'14:30', '15:00'),
	(11,'15:00', '16:30'),
	(12,'16:30', '17:00');

insert into data values
	(1,'12/12/2014','14/12/2014'),
	(2,'15/12/2014','20/12/2014'),
	(3,'01/02/2014','02/02/2014'),
	(4,'23/05/2014','25/05/2014'),
	(5,'12/09/2014','15/09/2014'),
	(6,'08/02/2014','08/02/2014'),
	(7,'14/06/2014','15/06/2014'),
	(8,'25/07/2014','27/07/2014'),
	(9,'02/03/2014','05/03/2014'),
	(10,'28/06/2014','01/07/2014');

insert into horario values
	(1,1,1),
	(2,1,2),
	(3,1,1),
	(4,2,1),
	(5,2,2),
	(6,4,2),
	(7,5,2),
	(8,3,1),
	(9,3,1),
	(10,1,2);