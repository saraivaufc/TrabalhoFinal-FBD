# -*- encoding: utf-8 -*-

from os import system
from conect import *
from menu import *

class Entidade(object):
	def __init__(self):
		self.id=None
		self.nome=None
		self.endereco=None
		self.telefone=None
	
class Participante(Entidade):
	def __init__(self):
		self.cpf=None
		self.email=None
		self.instituicao_ensino=None
		self.sigla=None
		self.con=Conect()
	def Cset_Participante(self):
		self.id=raw_input('Digite o ID:')
		self.nome=raw_input('Digite o Nome:')
		self.cpf=raw_input('Digite o CPF:')
		self.email=raw_input('Digite o Email:')
		self.instituicao_ensino=raw_input('Digite a Instituição de Ensino:')
		self.sigla=raw_input('Digite a SIGLA da IE:')
		self.endereco=raw_input('Digite o Endereço:')
		self.telefone=raw_input('Digite o Telefone:')
	def Cget_Participante(self):
		return self.id, self.nome,self.email,self.instituicao_ensino,self.sigla, self.endereco, self.telefone
	def Cinsere(self):
		itens = [(self.id, self.nome,self.cpf, self.email, self.instituicao_ensino, self.sigla,self.endereco,self.telefone) ]
		c=self.con.Cconect()
		c.executemany("insert into participante values (%s, %s , %s ,%s, %s, %s , %s, %s)",itens)
		self.con.Ccommit()
		self.con.Cdisconect()
	def Cexcluir(self):
		opcao=int(raw_input('Você Deseja Exluir por: \n 1:ID\n 2:Nome\nEscolha:'))
		c=self.con.Cconect()
		if opcao == 1:
			ident=raw_input('Digite o ID:')
			c.executemany("delete from participante where id = %s;",[(ident,)])
		elif opcao == 2:
			nome=raw_input('Digite o Nome:')
			c.executemany("delete from participante where nome_participante = %s;",[(nome,)])
		self.con.Ccommit()
		self.con.Cdisconect()



	


class Evento(Entidade):
	def __init__(self):
		self.nome_evento=None
		self.ambito=None
		self.coodenador=None
		self.taxa_entrada=None
		self.orgao_responsavel=None
		self.capacidade_total=None
		self.con=Conect()
	def Cset_Evento(self):
		self.id=raw_input('Digite o ID:')
		self.nome_evento=raw_input('Digite o Nome do Evento:')
		self.ambito=raw_input('Digite o Tema Principal do Evento:')
		self.coodenador=raw_input('Digite o Coodenador do Evento:')
		self.taxa_entrada=raw_input('Digite a Taxa de Entrada do Evento:')
		self.orgao_responsavel=raw_input('Digite o Orgão Responsavel se Houver:')
		self.capacidade_total=raw_input('Digite a Capacidade Maxima de Participantes:')
		self.endereco=raw_input('Digite o Endereço:')
	def Cget_Evento(self):
		return self.id, self.nome_evento, self.ambito, self.coodenador, self.taxa_entrada, self.orgao_responsavel, self.capacidade,self.endereco, self.telefone
	def Cinsere(self):
		con=Conect()
		c=con.Cconect()
		itens = [(self.id, self.nome_evento, self.ambito, self.coodenador,self.taxa_entrada, self.orgao_responsavel,self.capacidade_total,self.endereco)]
		c.executemany("insert into evento values (%s, %s , %s ,%s, %s, %s , %s, %s)",itens)
		con.Ccommit()
		con.Cdisconect()
	def Cexcluir(self):
		opcao=int(raw_input('Você Deseja Exluir por: \n 1:ID\n 2:Nome\nEscolha:'))
		c=self.con.Cconect()
		if opcao == 1:
			ident=raw_input('Digite o ID:')
			c.executemany("delete from evento where id = %s;",[(ident,)])
		elif opcao == 2:
			nome=raw_input('Digite o Nome:')
			c.executemany("delete from evento where nome_evento = %s;",[(nome,)])
		self.con.Ccommit()
		self.con.Cdisconect()
		
		
class Atracao(object):
	def __init__(self):
		self.id=None
		self.tema=None
		self.max_participantes=None
		self.local=None
		self.taxa_inscricao=None
		self.tipo_atracao=None
		self.id_evento=None
		self.con=Conect()
	def Cset_Atracao(self):
		self.id=raw_input('Digite o ID:')
		self.tema=raw_input('Digite o Tema da Atração:')
		self.max_participantes=raw_input('Digite a Capacidade Maxima de Participantes:')
		self.local=raw_input('Digite o Local da Atração:')
		self.taxa_inscricao=raw_input('Digite a Taxa de Entrada de Inscrição da Atração:')
		self.tipo_atracao=raw_input('Digite Tipo de Atração:')
		self.id_evento=raw_input('Digite o Evento da qual ela faz Parte:')
	def Cget_Atracao(self):
		return self.id,self.tema, self.max_participantes, self.local, self.taxa_inscricao, self.tipo_atracao, self.id_evento
	def Cinsere(self):
		con=Conect()
		c=con.Cconect()
		itens = [(self.id,self.tema, self.max_participantes, self.local, self.taxa_inscricao,self.tipo_atracao,self.id_evento)]
		c.executemany("insert into atracao values (%s, %s , %s ,%s, %s, %s , %s)",itens)
		con.Ccommit()
		con.Cdisconect()
	def Cexcluir(self):
		opcao=int(raw_input('Você Deseja Exluir por: \n 1:ID\n 2:Tema\nEscolha:'))
		c=self.con.Cconect()
		if opcao == 1:
			ident=raw_input('Digite o ID:')
			c.executemany("delete from atracao where id = %s;",[(ident,)])
		elif opcao == 2:
			nome=raw_input('Digite o Nome:')
			c.executemany("delete from atracao where tema = %s;",[(nome,)])
		self.con.Ccommit()
		self.con.Cdisconect()
		
class Patrocinador(Entidade):
	def __init__(self):
		self.quantia_patrocinio=None
		self.con=Conect()
	def Cset_Patrocinador(self):
		self.id=raw_input('Digite o ID:')
		self.nome=raw_input('Digite o Nome do Padrocinador:')
		self.quantia_patrocinio=raw_input('Digite a Quantia do Patrocinio:')
		self.endereco=raw_input('Digite o Endereço:')
		self.telefone=raw_input('Digite o Telefone:')
	def Cget_Patrocinador(self):
		return self.id, self.nome,self.quantia_patrocinio, self.endereco, self.telefone
	def Cinsere(self):
		con=Conect()
		c=con.Cconect()
		itens = [(self.id, self.nome,self.quantia_patrocinio,self.endereco,self.telefone)]
		c.executemany("insert into patrocinador values (%s, %s , %s ,%s, %s)",itens)
		con.Ccommit()
		con.Cdisconect()
	def Cexcluir(self):
		opcao=int(raw_input('Você Deseja Exluir por: \n 1:ID\n 2:Nome\nEscolha:'))
		c=self.con.Cconect()
		if opcao == 1:
			ident=raw_input('Digite o ID:')
			c.executemany("delete from patrocinador where id = %s;",[(ident,)])
		elif opcao == 2:
			nome=raw_input('Digite o Nome:')
			c.executemany("delete from patrocinador where nome = %s;",[(nome,)])
		self.con.Ccommit()
		self.con.Cdisconect()
		
class Convidado(Entidade):
	def __init__(self):
		self.capacitacao=None
		self.contribuicao=None
		self.dia_disponivel=None
		self.con=Conect()
	def Cset_Convidado(self):
		self.id=raw_input('Digite o ID:')
		self.nome=raw_input('Digite o Nome:')
		self.cpf=raw_input('Digite o CPF:')
		self.capacitacao=raw_input('Digite a Capacitacao:')
		self.contribuicao=raw_input('Digite a Contribuição:')
		self.dia_disponivel=raw_input('Digite o Dia que ele tem Disponivel:')
		self.endereco=raw_input('Digite o Endereço:')
		self.telefone=raw_input('Digite o Telefone:')
	def Cget_Convidado(self):
		return self.id, self.nome,self.cpf,self.capacitacao,self.contribuicao, self.dia_disponivel,self.endereco, self.telefone
	def Cinsere(self):
		con=Conect()	
		c=con.Cconect()
		itens=[(self.id,self.nome,self.cpf,self.capacitacao,self.contribuicao,self.dia_disponivel,self.endereco,self.telefone)]
		c.executemany("insert into convidado values (%s, %s , %s ,%s, %s, %s , %s ,%s)",itens)
		con.Ccommit()
		con.Cdisconect()
	def Cexcluir(self):
		opcao=int(raw_input('Você Deseja Exluir por: \n 1:ID\n 2:Nome\nEscolha:'))
		c=self.con.Cconect()
		if opcao == 1:
			ident=raw_input('Digite o ID:')
			c.executemany("delete from convidado where id = %s;",[(ident,)])
		elif opcao == 2:
			nome=raw_input('Digite o Nome:')
			c.executemany("delete from convidado where nome = %s;",[(nome,)])
		self.con.Ccommit()
		self.con.Cdisconect()
		
class Organizador(Entidade):
	def __init__(self):
		self.email=None
		self.supervisor=None
		self.con=Conect()
	def Cset_Organizador(self):
		self.id=raw_input('Digite o ID:')
		self.nome=raw_input('Digite o Nome:')
		self.email=raw_input('Digite o Email:');
		self.supervisor=raw_input('Digite o ID do Supervisor:')
		self.endereco=raw_input('Digite o Endereço:')
		self.telefone=raw_input('Digite o Telefone:')
	def Cget_Organizador(self):
		return self.id, self.nome,self.email, self.supervisor, self.endereco, self.telefone
	def Cinsere(self):
		con=Conect()
		c=con.Cconect()
		itens = [(self.id, self.nome,self.email,self.supervisor, self.endereco,	self.telefone)]
		c.executemany("insert into organizador values (%s, %s , %s ,%s, %s,%s)",itens)
		con.Ccommit()
		con.Cdisconect()
	def Cexcluir(self):
		opcao=int(raw_input('Você Deseja Exluir por: \n 1:ID\n 2:Nome\nEscolha:'))
		c=self.con.Cconect()
		if opcao == 1:
			ident=raw_input('Digite o ID:')
			c.executemany("delete from organizador where id = %s;",[(ident,)])
		elif opcao == 2:
			nome=raw_input('Digite o Nome:')
			c.executemany("delete from organizador where nome = %s;",[(nome,)])
		self.con.Ccommit()
		self.con.Cdisconect()
	
class Fornecedor(Entidade):
	def __init__(self):
		self.email=None
		self.con=Conect()
	def Cset_Fornecedor(self):
		self.id=raw_input('Digite o ID:')
		self.nome=raw_input('Digite o Nome:')
		self.email=raw_input('Digite o Email:');
		self.endereco=raw_input('Digite o Endereço:')
		self.telefone=raw_input('Digite o Telefone:')
	def Cget_Fornecedor(self):
		return self.id, self.nome,self.email,self.endereco, self.telefone
	def Cinsere(self):
		con=Conect()
		c=con.Cconect()
		itens = [(self.id, self.nome,self.email, self.endereco,self.telefone)]
		c.executemany("insert into fornecedor values (%s, %s , %s, %s,%s)",itens)
		con.Ccommit()
		con.Cdisconect()
	def Cexcluir(self):
		opcao=int(raw_input('Você Deseja Exluir por: \n 1:ID\n 2:Nome\nEscolha:'))
		c=self.con.Cconect()
		if opcao == 1:
			ident=raw_input('Digite o ID:')
			c.executemany("delete from fornecedor where id = %s;",[(ident,)])
		elif opcao == 2:
			nome=raw_input('Digite o Nome:')
			c.executemany("delete from fornecedor where nome = %s;",[(nome,)])
		self.con.Ccommit()
		self.con.Cdisconect()
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
