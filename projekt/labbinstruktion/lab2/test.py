from numpy import random 
import numpy as np


f = lambda x,y: 2*x**2+y**2 

ax, bx = 0, 2
ay, by = 0, 1


N = 1000

x= ax + (bx-ax)*random.rand(1,N)
y= ay + (by-ay)*random.rand(1,N)


i = (bx-ax)*(by-ay)/N*np.sum(f(x,y))

print(i)


def mc_conv(fun, D,N):
    for d in D:
        np.cumprod()
