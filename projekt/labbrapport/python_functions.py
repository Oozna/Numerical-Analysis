"""
Python functions to replicate the MATLAB files for Laboration 2 in MA069G
Authors: Eric Johansson, Can Kupeli, Samuel Greenberg
Last Modified: 2022-10-15
"""
import numpy as np
from numpy import random, matlib
import matplotlib.pyplot as plt


def python_normal(N=100, medel=0, varians=1):
    arr = random.normal(medel, np.sqrt(varians), N)

    count, bins, ignored = plt.hist(arr, 100, density=False)

    plt.plot(
        bins,
        1
        / (np.sqrt(varians) * np.sqrt(2 * np.pi))
        * np.exp(-((bins - medel) ** 2) / (2 * np.sqrt(varians) ** 2)),
        linewidth=0,
        color="r",
    )
    plt.title(
        f"{N} slumptal ur normalfördelning. Medelvärde = {medel}, Varians = {varians}"
    )
    plt.xlabel("Värde")
    plt.ylabel("Frekvens")
    plt.show()


def python_likform(N=100, low=0, high=1):
    arr = random.uniform(low=low, high=high, size=N)

    count, bins, ignored = plt.hist(arr, 100, density=False)

    plt.plot(bins, np.ones_like(bins), linewidth=0, color="r")
    plt.title(f"{N} slumptal ur likformig fördelning från {low} till {high}")
    plt.xlabel("Värde")
    plt.ylabel("Frekvens")
    plt.xlim(low, high)
    plt.show()


def tarning_upprepa(n=10, N=[10**3, 10**4, 10**5]):
    for i in N:
        r = np.zeros(i)
        for k in range(i):
            y = np.floor(1 + 6 * random.random(n))
            r[k] = np.mean(y)
        plt.figure(i)
        count, bins, ignored = plt.hist(r, 100, density=False)
        plt.plot(bins, np.ones_like(bins), linewidth=0, color="r")
        plt.title(f"{n} kast per medelvärde med {i} upprepningar")
        plt.xlabel("Medelvärden")
        plt.ylabel("Frekvensen")

    plt.show()


def tarning_egen(n=10, N=[10**5], f=0, x=0):

    r = np.zeros(N)
    for k in range(N):
        y = np.floor(1 + 6 * random.random(n))
        r[k] = np.mean(y)
    count, bins, ignored = plt.hist(r, 100, density=False)
    plt.plot(bins, np.ones_like(bins), linewidth=0, color="r")
    plt.title(f"{n} kast per medelvärde med {N} upprepningar")
    plt.xlabel("Medelvärden")
    plt.ylabel("Frekvensen")

    plt.plot(x, f, color="r")
    plt.show()


def mc_conv(D=np.array([[-5, 5]]), N=int(1e5)):
    f = lambda x: np.exp(-np.sum(x**2, axis=0))
    M = 50
    V = np.cumprod(D[:, 1] - D[:, 0])
    dim = np.size(V)
    V = V[-1]

    r = np.zeros((dim, N))
    I = np.zeros(M)
    for i in range(M):
        r[:, :] = np.transpose(
            matlib.repmat(D[:, 0], N, 1)
            + random.rand(N, dim) * matlib.repmat(D[:, 1] - D[:, 0], N, 1)
        )
        I[i] = V * np.mean(f(r))

    return N, np.mean(I), np.std(I)
