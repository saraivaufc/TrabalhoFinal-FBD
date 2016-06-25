/*
	Exibir todos os Participantes que estão cadastrados no 'FLISOL'
*/

select p.nome_participante, e.nome_evento
from participante as p inner join participante_participara as pp on p.id = pp.id_participante
	inner join evento as e on pp.id_evento = e.id
where e.nome_evento='FLISOL'
order by(p.nome_participante);

/*
	Exibir todos os Participantes que participaram do 'Curso Django' e seus respectivos enderecos e telefones
*/

select p.nome_participante , a.tema , e.cidade || ',' || e.bairro || ',' || e.rua || ',' || e.numero as endereco , t.numero as telefone
from participante as p inner join participante_participara as pp
	on p.id = pp.id_participante inner join atracao as a 
	on pp.id_atracao = a.id inner join endereco as e 
	on p.endereco = e.id  inner join telefone as t 
	on p.telefone = t.id 
where a.tema='Curso Django'
order by(p.nome_participante);


/*
	Exibir todas as tarefas que teram de ser feitas pelo organizador 'Ricarso Sousa'
*/
select o.nome, t.nome
from organizador as o inner join tarefa as t on o.id = t.id_organizador
where o.nome='Ricarso Sousa'
order by(o.nome);

/*
	Exibir todos Patrocinadores do 'WTISC'
*/
select p.nome_patrocinador , e.nome_evento
from evento as e inner join patrocinador_evento as pe on e.id=pe.id_evento
	inner join patrocinador as p on pe.id_patrocinador = p.id
where e.nome_evento = 'WTISC'
order by(p.nome_patrocinador);

/*
	Exibir todas as atrações do 'CONSEGI' e seus dias e horarios
*/
select a.tema, e.nome_evento, hora.hora_inicio, hora.hora_fim , d.data_inicio , d.data_fim 
from evento as e inner join atracao as a on e.id=a.id_evento
	inner join horario as h on a.id=h.id_atracao inner join hora on h.id_hora = hora.id
	inner join data as d on h.id_data = d.id
where e.nome_evento='CONSEGI'
order by(a.tema);

/*
	Exibir todas as ferramentas nescessarias para a atração 'Desenvolvimento de Jogos na SFML'
*/
select a.tema, e.nome
from atracao as a inner join fornecedor_fornece as ff on a.id=ff.id_atracao inner join equipamento as e on 
	ff.id_equipamento = e.id
where a.tema='Desenvolvimento de Jogos na SFML'
order by(e.nome);

/*
	Mostrar todos os eventos e a quantidade de participantes de cada um.	
*/
select e.nome_evento, count(*) as quant_participantes
from evento as e, participante_participara as pp, participante as p
where pp.id_participante= p.id and e.id=pp.id_evento
group by(e.nome_evento)
order by quant_participantes, e.nome_evento;

/*
	Exibit os gastos com divulgação para cada evento
*/
select e.nome_evento, sum(c.valor) as gasto
from evento as e inner join divulgacao as d on e.id = d.evento_div inner join custo as c on d.custo_div = c.id
group by(e.id)
order by e.nome_evento,gasto ;

/*
	Exibir o nome, email e telefone de todos os participantes do evento 'Hackathon'
*/
select p.nome_participante, p.email, t.numero
from participante as p inner join participante_participara as pp on p.id = pp.id_participante inner join evento as e on pp.id_evento = e.id
	inner join telefone as t on p.telefone = t.id
where e.nome_evento='Hackathon'
order by(p.nome_participante); 

/*
	Para cada fornecedor, mostrar a quantidade de equipamentos que ele fornesce
*/
select f.nome , count(ff.id_fornecedor) as quantidade
from fornecedor as f full outer join fornecedor_fornece as ff on f.id = ff.id_fornecedor
group by(f.id)
order by quantidade, f.nome;

/*
	Exibir todos os convidados da atração "Install Fast"
*/

select c.nome, c.cpf, c.capacitacao, c.contribuicao,  e.cidade || ',' || e.bairro || ',' || e.rua || ',' || e.numero as endereco , t.numero
from atracao as a inner join convidado_participara as cp on a.id = cp.id_atracao
inner join convidado as c on cp.id_convidado = c.id
inner join endereco as e on c.endereco=e.id
inner join telefone as t on c.telefone=t.id
where a.tema='Install Fast'
order by c.nome;
