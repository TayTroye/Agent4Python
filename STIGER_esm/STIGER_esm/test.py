import numpy as np

a = np.array([0.9536167979240417, 0.9554904103279114, 0.9551587104797363])
a /= 0.003
# control overflow
a -= np.mean(a)
print(a)
b = np.exp(a)
b /= np.sum(b)
print(b)