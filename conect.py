# -*- encoding: utf-8 -*-

import psycopg2,sys
import  psycopg2.extensions

class Conect():
	def __init__(self):
		self.con =None
		self.c = None
	def Cconect(self):
		try:
			self.con = psycopg2.connect(host='localhost', user='postgres', password='macacoaranha',dbname='credenciamento')
		except:
			print 'Impossivel Estabelecer Coneção!!!'
			sys.exit()
		self.con.set_client_encoding('UTF-8')
		self.c = self.con.cursor()
		return self.c
	def Cdisconect(self):
		self.c.close()
	def Ccommit(self):
		self.con.commit()

