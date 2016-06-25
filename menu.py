# -*- encoding: utf-8 -*-

from os import system
class Menu():
	def Coption(self, lista_options):
		self.count=1
		for i in lista_options:
			print ' \033[1;33m',self.count,'\033[1;37m:',i,'\033[0m'
			self.count+=1
		res=int(raw_input("\n \033[1;33mQual sua Opção: \033[1;34m"))
		system("clear")
		return res 