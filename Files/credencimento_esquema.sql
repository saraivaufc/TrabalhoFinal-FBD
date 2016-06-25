create table telefone(
	id integer,
	numero bigint unique,
	primary key(id)
);

create table endereco(
	id integer,
	cidade varchar(255),
	bairro varchar(255),
	rua varchar(255),
	numero bigint,
	complemento varchar(255),
	ponto_referencia varchar(255),
	primary key(id)
);

create table participante(
	id integer,
	nome_participante varchar(255),
	cpf  bigint not null unique,
	email varchar(255) unique,
	instituicao_ensino varchar(255),
	sigla_instituicao varchar(10),
	endereco integer,
	telefone bigint,
	foreign key(telefone) references telefone on delete cascade,
	foreign key(endereco) references endereco on delete cascade,
	primary key(id)
);

create table evento(
	id integer,
	nome_evento varchar(255) unique,
	ambito varchar(255),
	coordenador varchar(255),
	taxa_entrada real not null,
	orgao_responsavel varchar(255),
	capacidade_total bigint not null,
	endereco integer,
	primary key(id),
	foreign key (endereco) references endereco on delete cascade
);

create table patrocinador(
	id integer,
	nome_patrocinador varchar(255),
	quantia_patrocinio real not null,
	endereco integer,
	telefone bigint,
	foreign key(telefone) references telefone on delete cascade,
	foreign key(endereco) references endereco on delete cascade,
	primary key (id)
);

create table patrocinador_evento(
	id_patrocinador integer,
	id_evento integer,
	foreign key (id_patrocinador) references patrocinador on delete cascade,
	foreign key (id_evento) references evento on delete cascade
);

create table meio_divulgacao(
	id integer,
	nome varchar(255),
	primary key(id)
);

create table custo(
	id integer,
	tipo varchar(255),
	valor real,
	primary  key(id)
);

create table divulgacao(
	evento_div integer,
	meio_div integer,
	custo_div integer not null,
	foreign key (evento_div) references evento on delete cascade,
	foreign key (meio_div) references meio_divulgacao on delete cascade,
	foreign key (custo_div) references custo on delete cascade 
);

create table tipo_atracao(
	id integer,
	nome varchar(255),
	primary key(id)
);

create table atracao(
	id integer,
	tema varchar(255),
	max_participantes bigint not null,
	local varchar(255),
	taxa_inscricao real not null,
	tipo_atracao integer,
	id_evento integer,
	primary key(id),
	foreign key(id_evento) references evento on delete cascade,
	foreign key(tipo_atracao) references tipo_atracao on delete cascade
);

create table participante_participara(
	numero_acesso bigint unique,
	id_participante integer,
	id_evento  integer,
	id_atracao integer,
	foreign key(id_participante) references participante on delete cascade,
	foreign key(id_evento) references evento on delete cascade,
	foreign key(id_atracao) references atracao on delete cascade
);

create table convidado(
	id integer,
	nome varchar(255),
	cpf bigint not null unique,
	capacitacao varchar(255),
	contribuicao varchar(255),
	dia_disponivel date,
	endereco integer,
	telefone integer,
	foreign key(telefone) references telefone on delete cascade,
	foreign key(endereco) references endereco on delete cascade,
	primary key(id)
);


create table convidado_participara(
	id_convidado integer,
	id_evento integer,
	id_atracao integer,
	foreign key(id_convidado) references convidado on delete cascade,
	foreign key(id_evento) references evento on delete cascade,
	foreign key(id_atracao) references atracao on delete cascade
);

create table organizador(
	id integer,
	nome varchar(255),
	email varchar(255),
	supervisor integer,
	endereco integer,
	telefone integer,
	primary key(id),
	foreign key(telefone) references telefone on delete cascade,
	foreign key(endereco) references endereco on delete cascade,
	foreign key(supervisor) references organizador on delete cascade
);

create table tarefa(
	id_organizador integer,
	nome varchar(255),
	modo_tarefa varchar(255),
	hora_inicio time,
	data_inicio date,
	foreign key (id_organizador) references organizador on delete cascade
);

create table tipo_equipamento(
	id integer,
	nome varchar(255),
	primary key(id)
);

create table equipamento ( 
	id integer, 
	nome varchar(255), 
	quantidade bigint , 
	id_tipo integer, 
	primary key(id) , 
	foreign key(id_tipo) references tipo_equipamento on delete cascade
);


create table fornecedor(
	id integer,
	nome varchar(255),
	email varchar(255),
	endereco integer,
	telefone integer,
	foreign key(telefone) references telefone on delete cascade,
	foreign key(endereco) references endereco on delete cascade,
	primary key(id)
);

create table fornecedor_juridico(
	id integer,
	cnpj bigint not null unique,
	foreign key(id) references fornecedor on delete cascade
);

create table fornecedor_fisico(
	id integer,
	cpf bigint not null unique,
	foreign key(id) references fornecedor on delete cascade
);

create table fornecedor_fornece(
	id_atracao integer,
	id_equipamento integer,
	id_fornecedor integer,
	foreign key(id_atracao) references atracao on delete cascade,
	foreign key(id_equipamento) references equipamento on delete cascade,
	foreign key(id_fornecedor) references fornecedor on delete cascade
);

create table hora(
	id integer,
	hora_inicio time,
	hora_fim time,
	primary key(id)
);

create table data(
	id integer,
	data_inicio date,
	data_fim date,
	primary key(id)
);

create table horario(
	id_atracao integer,
	id_data integer,
	id_hora integer,
	foreign key(id_atracao) references atracao on delete cascade,
	foreign key(id_data) references data on delete cascade,
	foreign key(id_hora) references hora on delete cascade
);
