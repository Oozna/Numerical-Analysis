import numpy as np
from numpy import random
import matplotlib.pyplot as plt




def python_normal(N=100,medel=0,varians=1):
    arr = random.normal(medel,np.sqrt(varians),N)

    count, bins, ignored = plt.hist(arr, 100, density=False)

    plt.plot(bins, 1/(np.sqrt(varians) * np.sqrt(2 * np.pi)) *  np.exp( - (bins - medel)**2 / (2 * np.sqrt(varians)**2) ), linewidth=1, color='r')
    plt.title(f"{N} slumptal ur normalfördelning. Medelvärde = {medel}, Varians = {varians}")
    plt.show()

def python_likform(N=100,low=0,high=1):
    arr = random.uniform(low=low, high=high,size=N)

    count, bins, ignored = plt.hist(arr, 100, density=False)

    plt.plot(bins, np.ones_like(bins), linewidth=1, color='r')
    plt.title(f"{N} slumptal ur likformig fördelning från {low} till {high}")
    plt.xlim(low,high)
    plt.show()


def mc_conv():
    print("not done yet")




def f_norm(x):
    """
    Parameter: x - (d,N) 
    """
