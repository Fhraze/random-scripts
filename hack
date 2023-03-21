#!/usr/bin/python
from termcolor import colored
from time import sleep
from random import uniform, randint
from os import system

system('clear')

_usr = str(input("Who to hack: "))

per = 0
text = ""

def loading():
 _str = str(per)+"%" + "["
 for i in range(10, 100, 10):
  if per >= i: _str += colored('#', 'green')
  else: _str += "-"
 _str += "]"
 return _str

text = "Searching the web for personal info on " + _usr
prevtxt = "Who to hack: " + _usr

while per<=100:
 system('clear')
 print(prevtxt)
 if per%2==0: print(f"{text} .")
 else: print(f"{text} . .")
 print(loading())
 per+=1
 sleep(uniform(0.1, 1))

per = 0
prevtxt += "\n" + text + "\n" + " * Found " + str(randint(1, 8)) + " accounts on the name of " + _usr
text = "Trying to get user's ip address from previous access to their account(s)"

while per<=100:
 system('clear')
 print(prevtxt)
 if per%2==0: print(f"{text} .")
 else: print(f"{text} . .")
 print(loading())
 per+=1
 sleep(uniform(0.1, 0.3))

per = 0

hxRes = ""

ip = "2001:db8:" + str(randint(1000, 3333)) + ":" + str(randint(1000, 4444)) + ":" + str(randint(1000, 5555)) + ":" + str(randint(1000, 6666)) + ":" + str(randint(1000, 7777)) + ":" + str(randint(1000, 8888))
o = randint(0, 10)

if o == 0: hxRes = " * Failed! Unable to find " + _usr + "'s ip address"
else: hxRes = " * Success! Found " + _usr + "'s ip address: " + ip

prevtxt += "\n" + text + "\n" + hxRes

system('clear')
print(prevtxt)
