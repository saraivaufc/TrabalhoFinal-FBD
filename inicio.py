# -*- encoding: utf-8 -*-

import psycopg2 
from os import sys
from conect import *
from search import *
from menu import *
from functions import *

impresao=Search()

class Inicio():
	def __init__(self):
		self.menu=Menu()
		self.lista1=['Inserção' , 'Exclusão', 'Visualização','Busca','Visões','Referenciar','Sair']
		self.lista2=['Participante','Evento','Atração','Patrocinador','Convidado','Organizador','Fornecedor','Sair']
	def Cprimeiro(self):
		return self.menu.Coption(self.lista1)
	def Csegundo(self):
		return self.menu.Coption(self.lista2)
	def Cterceiro(self, pri, seg):
		if pri == 3:
			impresao.Cimprima(seg)
			return
		if  seg == 8:
			sys.exit()

		print '***',self.lista1[pri-1],'em', self.lista2[seg-1],'***','\n'

		if seg == 1:
			p=Participante()
			if pri == 1:
				p.Cset_Participante()
				p.Cinsere()
			elif pri == 2:
				p.Cexcluir()

		elif seg == 2:
			e=Evento()
			if pri == 1:
				e.Cset_Evento()
				e.Cinsere()
			elif pri == 2:
				e.Cexcluir()

		elif seg == 3:
			a=Atracao()
			if pri == 1:
				a.Cset_Atracao()
				a.Cinsere()
			elif pri == 2:
				e.Cexcluir()

		elif seg == 4:
			p=Patrocinador()
			if pri == 1:
				p.Cset_Patrocinador()
				p.Cinsere()
			elif pri == 2:
				p.Cexcluir()

		elif seg == 5:
			c=Convidado()
			if pri == 1:
				c.Cset_Convidado()
				c.Cinsere()
			elif pri == 2:
				c.Cexcluir()

		elif seg == 6:
			o=Organizador()
			if pri == 1:
				o.Cset_Organizador()
				o.Cinsere()
			elif pri == 2:
				o.Cexcluir()

		elif seg == 7:
			f=Fornecedor()
			if pri == 1:
				f.Cset_Fornecedor()
				f.Cinsere()
			elif pri == 2:
				f.Cexcluir()
		enter=raw_input("\nAPERTE ENTER PARA CONTINUAR!!!\n")