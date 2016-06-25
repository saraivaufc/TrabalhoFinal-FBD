# -*- encoding: utf-8 -*-

from conect import *
from menu import *
from os import system


class Search():
	def __init__(self):
		self.lista=['Participante','Evento','Atração','Patrocinador','Convidado','Organizador','Fornecedor']
		self.menu=Menu()
	def Cprint(self, c):
		exe = c.fetchall()
		for i in exe:
			for k in i:
				print '',k
			print '\033[1;31m-------------------------------------------------------------------------------------------------------------------------------@\033[1;34m'

	def Cimprima(self,tabela):
		system("clear")
		print '\033[1;33m ***',self.lista[tabela-1],'***\033[1;34m'
		con=Conect()
		c=con.Cconect()
		c.execute("select * from %s;"%(self.lista[tabela-1]))
		self.Cprint(c)
		enter=raw_input("\nAPERTE ENTER PARA CONTINUAR!!!\n")
		con.Cdisconect()
	def Cconsultas(self):
		print '\033[1;33m *** Buscas ***\033[1;34m\n'
		my_list=(
				'Participantes Cadastrados em um Evento', 
				'Todos os Participantes que Participam de uma Atração', 
				'Todas as Tarefas de um Organizador',
				'Todos os Patrocinadores de um Evento',
				'Todas as Atrações de um Evento',
				'Todas as Ferramentas de uma Atração',
				'Eventos e a Quantidade de Participantes de cada um',
				'Gastos com Divulgação para cada Evento',
				'Todos os Participantes de um Evento',
				'Quantidade de Equipamento de Cada Fornecedor',
				'Todos os Convidados de um Atração'
				)
		opcao=self.menu.Coption(my_list)
		con=Conect()
		c=con.Cconect()

		if opcao == 1:
			print '\033[1;33m *** Participantes Cadastrados em um Evento ***\033[1;34m\n'
			evento=raw_input("Digite o Nome do Evento:")
			c.execute("select p.nome_participante, e.nome_evento from participante as p inner join participante_participara as pp on p.id = pp.id_participante inner join evento as e on pp.id_evento = e.id where e.nome_evento= '%s' order by(p.nome_participante)"%(evento))
			system("clear")
			print '\033[1;33m *** Participantes Cadastrados em um Evento ***\033[1;34m\n'
			self.Cprint(c)
		elif opcao == 2:
			print '\033[1;33m *** Todos os Participantes que Participam de uma Atração ***\033[1;34m\n'
			atracao=raw_input("Digite o Nome da Atração:")
			c.execute("select p.nome_participante , a.tema , e.cidade || ',' || e.bairro || ',' || e.rua || ',' || e.numero as endereco , t.numero as telefone from participante as p inner join participante_participara as pp on p.id = pp.id_participante inner join atracao as a on pp.id_atracao = a.id inner join endereco as e on p.endereco = e.id  inner join telefone as t on p.telefone = t.id where a.tema='%s' order by(p.nome_participante);"%(atracao))
			system("clear")
			print '\033[1;33m *** Todos os Participantes que Participam de uma Atração ***\033[1;34m\n'
			self.Cprint(c)
		elif opcao == 3:
			print '\033[1;33m *** Todas as Tarefas de um Organizador ***\033[1;34m\n'
			organizador=raw_input("Digite o Nome do Organizador:")
			c.execute("select o.nome, t.nome from organizador as o inner join tarefa as t on o.id = t.id_organizador where o.nome='%s' order by(o.nome);" % (organizador))
			system("clear")
			print '\033[1;33m *** Todas as Tarefas de um Organizador ***\033[1;34m\n'
			self.Cprint(c)
		elif opcao == 4:
			print '\033[1;33m *** Todos os Patrocinadores de um Evento ***\033[1;34m\n'
			evento=raw_input("Digite o Nome do Evento:")
			c.execute("select p.nome_patrocinador , e.nome_evento from evento as e inner join patrocinador_evento as pe on e.id=pe.id_evento inner join patrocinador as p on pe.id_patrocinador = p.id where e.nome_evento = '%s' order by(p.nome_patrocinador);"%(evento))
			system("clear")
			print '\033[1;33m *** Todos os Patrocinadores de um Evento ***\033[1;34m\n'
			self.Cprint(c)
		elif opcao == 5:
			print '\033[1;33m *** Todas as Atrações de um Evento ***\033[1;34m\n'
			evento=raw_input("Digite o Nome do Evento:")
			c.execute("select a.tema, e.nome_evento, hora.hora_inicio, hora.hora_fim , d.data_inicio , d.data_fim from evento as e inner join atracao as a on e.id=a.id_evento inner join horario as h on a.id=h.id_atracao inner join hora on h.id_hora = hora.id inner join data as d on h.id_data = d.id where e.nome_evento='%s' order by(a.tema);"%(evento))
			system("clear")
			print '\033[1;33m *** Todas as Atrações de um Evento ***\033[1;34m\n'
			self.Cprint(c)
		elif opcao == 6:
			print '\033[1;33m *** Todas as Ferramentas de uma Atração ***\033[1;34m\n'
			atracao=raw_input("Digite o Nome da Atração:")
			c.execute("select a.tema, e.nome from atracao as a inner join fornecedor_fornece as ff on a.id=ff.id_atracao inner join equipamento as e on ff.id_equipamento = e.id where a.tema='%s' order by(e.nome);"%(atracao))
			system("clear")
			print '\033[1;33m *** Todas as Ferramentas de uma Atração ***\033[1;34m\n'
			self.Cprint(c)
		elif opcao == 7:
			print '\033[1;33m *** Eventos e a Quantidade de Participantes de cada um ***\033[1;34m\n'
			c.execute("select e.nome_evento, count(*) as quant_participantes from evento as e, participante_participara as pp, participante as p where pp.id_participante= p.id and e.id=pp.id_evento group by(e.nome_evento) order by quant_participantes, e.nome_evento;")
			system("clear")
			print '\033[1;33m *** Eventos e a Quantidade de Participantes de cada um ***\033[1;34m\n'
			self.Cprint(c)
		elif opcao == 8:
			print '\033[1;33m *** Gastos com Divulgação para cada Evento *** \033[1;34m\n'
			c.execute("select e.nome_evento, sum(c.valor) as gasto from evento as e inner join divulgacao as d on e.id = d.evento_div inner join custo as c on d.custo_div = c.id group by(e.id) order by e.nome_evento,gasto ;")
			system("clear")
			print '\033[1;33m *** Gastos com Divulgação para cada Evento *** \033[1;34m\n'
			self.Cprint(c)
		elif opcao == 9:
			print '\033[1;33m *** Todos os Participantes de um Evento ***\033[1;34m\n'
			evento=raw_input("Digite o Nome do Evento:")
			c.execute("select p.nome_participante, p.email, t.numero from participante as p inner join participante_participara as pp on p.id = pp.id_participante inner join evento as e on pp.id_evento = e.id inner join telefone as t on p.telefone = t.id where e.nome_evento='%s' order by(p.nome_participante);"%(evento))
			system("clear")
			print '\033[1;33m *** Todos os Participantes de um Evento ***\033[1;34m\n'
			self.Cprint(c)
		elif opcao == 10:
			print '\033[1;33m *** Quantidade de Equipamento de Cada Fornecedor ***\033[1;34m\n'
			c.execute("select f.nome , count(ff.id_fornecedor) as quantidade from fornecedor as f full outer join fornecedor_fornece as ff on f.id = ff.id_fornecedor group by(f.id) order by quantidade, f.nome;")
			system("clear")
			print '\033[1;33m *** Quantidade de Equipamento de Cada Fornecedor ***\033[1;34m\n'
			self.Cprint(c)
		elif opcao == 11:
			print '\033[1;33m *** Todos os Convidados de um Atração ***\033[1;34m\n'
			atracao=raw_input("Digite o Nome da Atração:")
			c.execute("select c.nome, c.cpf, c.capacitacao, c.contribuicao,  e.cidade || ',' || e.bairro || ',' || e.rua || ',' || e.numero as endereco , t.numero from atracao as a inner join convidado_participara as cp on a.id = cp.id_atracao inner join convidado as c on cp.id_convidado = c.id inner join endereco as e on c.endereco=e.id inner join telefone as t on c.telefone=t.id where a.tema='%s' order by c.nome;"%(atracao))
			system("clear")
			print '\033[1;33m *** Todos os Convidados de um Atração ***\033[1;34m\n'
			self.Cprint(c)
		else:
			print 'Opção Invalida :P!!!\n'
		con.Cdisconect()	
		enter=raw_input("\nAPERTE ENTER PARA CONTINUAR!!!\n")
	def Cvisoes(self):
		print ' *** Visões ***\n'
		my_list=(
				'Dinheiros Ganho nos Eventos',
				'Evento que mais Gastou',
				'Horario das Atrações',
				'Eventos e Atrações que um Participante Participa',
				'Sair'
				)
		opcao=self.menu.Coption(my_list)
		con=Conect()
		c=con.Cconect()
		if opcao == 1:
			system("clear")
			print ' \033[1;33m*** Dinheiros Ganho nos Eventos ***\033[1;34m\n'
			c.execute("select * from ganhos_eventos")
			self.Cprint(c)
		elif opcao == 2:
			system("clear")
			print ' \033[1;33m*** Evento que mais Gastou ***\033[1;34m'
			c.execute("select * from evento_mais_gastou")
			self.Cprint(c)
		elif opcao == 3:
			system("clear")
			print ' \033[1;33m*** Horario das Atrações ***\033[1;34m'
			c.execute("select * from atracoes_horarios")
			self.Cprint(c)
		elif opcao == 4:
			system("clear")
			print ' \033[1;33m*** Eventos e Atrações que um Participante Participa ***\033[1;34m'
			c.execute("select * from participante_evento_atracao")
			self.Cprint(c)
		elif opcao == 5:
			sys.exit()
		else:
			print 'Opção Invalida!!! :P'
		con.Cdisconect()
		enter=raw_input("\nAPERTE ENTER PARA CONTINUAR!!!\n")
	def Creferenciar(self):
		print ' *** Referencias ***\n'
		my_list=(
			'Participante-Evento-Atração',
			'Convidado-Evento-Atração',
			'Patrocinador-Evento',
			'Evento-Meio_Divulgação-Custo',
			'Atração-Data-Hora',
			'Atração-Equipamento-Fornecedor',
			'Sair'
		)
		opcao=self.menu.Coption(my_list)
		con=Conect()
		c=con.Cconect()

		if opcao == 1:
			n=raw_input('Digite o Numero de Acesso do Participante:')
			p=raw_input('Digite o ID do Participante:')
			e=raw_input('Digite o ID do Evento:')
			a=raw_input('Digite o ID da Atração:')
			c.executemany("insert into participante_participara values(%s, %s, %s, %s)",[(n,p,e,a)])
		elif opcao == 2:
			co=raw_input('Digite o ID do Convidado:')
			e=raw_input('Digite o ID do Evento:')
			a=raw_input('Digite o ID da Atração:')
			c.executemany("insert into convidado_participara values(%s, %s, %s)",[(co,e,a)])
		elif opcao == 3:
			p=raw_input('Digite o ID do Patrocinador:')
			e=raw_input('Digite o ID do Evento:')
			c.executemany("insert into patrocinador_evento values(%s, %s)",[(p,e)])
		elif opcao == 4:
			e=raw_input('Digite o ID do Evento:')
			md=raw_input('Digite o ID do meio de Divulgação:')
			co=raw_input('Digite o ID do Custo:')
			c.executemany("insert into divulgacao values(%s, %s, %s)",[(e,md,co)])
		elif opcao == 5:
			a=raw_input('Digite o ID da Atração:')
			d=raw_input('Digite o ID da Data:')
			h=raw_input('Digite o ID da Hora:')
			c.executemany("insert into horario values(%s, %s, %s)",[(a,d,h)])
		elif opcao == 6:
			a=raw_input('Digite o ID da Atração:')
			e=raw_input('Digite o ID do Equipamento:')
			f=raw_input('Digite o ID do Fornecedor:')
			c.executemany("insert into fornecedor_fornece values(%s, %s, %s)",[(a,e,f)])
		elif opcao == 7:
			sys.exit()
		else:
			print 'Opção Invalida!!!'
		con.Ccommit()
		con.Cdisconect()
		enter=raw_input("\nAPERTE ENTER PARA CONTINUAR!!!\n")






