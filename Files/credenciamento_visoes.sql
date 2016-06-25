/*
	Criar uma visao que para da evento, exibir o dinheiro ganho nele, esse dinheiro é referente a soma
	do dinheiro dado por cada participante para participar de cada uma das atrações desse mesmo evento
*/
create or replace view ganhos_eventos as (
	select e.nome_evento as evento, count(p.id) as quant_participantes, sum(a.taxa_inscricao) as quant_ganha
	from evento as e left join  atracao as a on e.id = a. id_evento
		left join participante_participara as pp on a.id = pp.id_atracao
		left join participante as p on pp.id_participante = p.id
	group by(e.nome_evento)
);

/*
	Visão que exibi o evento que mais gastou com divulgação
*/
create or replace view evento_mais_gastou as(
	select e.nome_evento, (select max(c3.valor)
				   from evento as e3 inner join divulgacao as d3 on e3.id = d3.evento_div 
				inner join custo as c3 on d3.custo_div = c3.id
				where e.nome_evento = e3.nome_evento
				  )
	from evento as e inner join divulgacao as d on e.id = d.evento_div 
		inner join custo as c on d.custo_div = c.id
	where c.valor >= all(select c2.valor
				 from evento as e2 inner join divulgacao as d2 on e.id = d.evento_div 
				 inner join custo as c2 on d2.custo_div = c2.id
				)
	group by(e.nome_evento)
);




/*
	Visão que exiba o nome de todas as atrações de todos os eventos e suas respectivas datas de horas de acontecimento
*/
create or replace view atracoes_horarios as(
	select a.tema , hr.hora_inicio || ' - ' || hr.hora_fim as hora , dt.data_inicio || ' - ' || dt.data_fim as datas
	from atracao as a inner join horario as h on a.id = h.id_atracao 
	inner join hora as hr on h.id_hora = hr.id inner join data as dt on h.id_data = dt.id
	order by(a.tema)
);


/*
	Visão que mostra todos os participantes e todas as atracoes que ele participa e também todos os eventos mesmo os
	participantes que não participam de nenhum evento
*/
create or replace view participante_evento_atracao as (
	select p.nome_participante as participante , a.tema as atracao, e.nome_evento as evento
	from participante as p left outer join participante_participara as pp on 
		p.id = pp.id_participante left outer join atracao as a on 
		pp.id_atracao = a.id left outer join evento as e on 
		pp.id_evento = e.id
);

/*
	Mostrar todos os eventos e a quantidade de participantes de cada um.	
*/

create or replace view quant_participantes as (
	select e.nome_evento, count(*) as quant_participantes
	from evento as e, participante_participara as pp, participante as p
	where pp.id_participante= p.id and e.id=pp.id_evento
	group by(e.nome_evento)
	order by quant_participantes, e.nome_evento
)