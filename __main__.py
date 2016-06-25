# -*- encoding: utf-8 -*-

import psycopg2
import sys 
from conect import *
from search import *
from menu import *
from functions import *
from inicio import *

def main():
	system("setterm -term linux -back black -fore blue -clear")
	init=Inicio()
	while True:
		while True:
			system("clear")
			print '''*** PAGINA INICIAL ***\n'''
			try:
				a=init.Cprimeiro()
			except:
				break

			if a == 4:
				s=Search()
				s.Cconsultas()
			elif a == 5:
				s=Search()
				s.Cvisoes()
			elif a == 6:
				s=Search()
				s.Creferenciar()
			elif a == 7:
				sys.exit()
			else:
				system("clear")
				print '''*** PAGINA SECUNDARIA ***\n'''
				try:
					b=init.Csegundo()
				except:
					break
				init.Cterceiro(a,b)

if __name__ == '__main__':
	main()
