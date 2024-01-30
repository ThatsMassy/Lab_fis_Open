import matplotlib

try :
    matplotlib.use('TkAgg')
except :
    matplotlib.use('Qt5Agg')
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from time import sleep
import serial
import time
fine="c"
pre="ciao"
while (fine != "f"):
 while True:
	 try:
		 assert(maxs := float(input("\n Inserisci la massima distanza possibile in cm e premi invio  :")))>0
		 break
	 except (ValueError, AssertionError):
		 print("WARNING!!!! Dato non valido!")
 while True:
	 try:
		 assert(maxt := float(input("\n Inserisci l'intervallo di tempo in s e premi invio  :")))>0
		 break
	 except (ValueError, AssertionError):
		 print("WARNING!!!! Dato non valido!")	 
 	 
 input("\n\n\n Premi Enter per far partire la registrazione dei dati")
 xdata, ydata = [], []
 ser = serial.Serial('/dev/ttyACM0', 9600)
 pre=ser.readline()
 prec = float(pre)
 y=prec
 fig, ax = plt.subplots()
 line, = ax.plot([], [], lw=2)
 ax.set_ylim(0, maxs)
 ax.set_xlim(0, maxt)
 ax.grid()
 def data_gen():
     t=0   
     y=0
     cnt=0
     p=0
     a = ser.readline()
     while (t < maxt):
          a = ser.readline()
          y = float(a)
          if (y != 0) :
              t = (time.time() - start)
              t = float(t)
              yield t, y
 def run(data):
     t,y = data
     xdata.append(t)
     ydata.append(y)
     ax.figure.canvas.draw()
     line.set_data(xdata, ydata)
     return line,
 data_gen.t = 0
 while (abs(y-prec) < 2):
           a = ser.readline()
           y = float(a)
 start = time.time()
 ani = animation.FuncAnimation(fig, run, data_gen, blit=True,interval=1,repeat=False)
 plt.show()
 fine=input("Premi f per finire :")
