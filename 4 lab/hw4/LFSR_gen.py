import numpy as np
import matplotlib.pyplot as plt 

with open("simulation/modelsim/Sequence_gen.txt", "r") as gen:
	DATA = gen.read()

DATA = DATA[3:]

gen_1 = 2 * [0]
gen_2 = 4 * [0]
gen_3 = 8 * [0]

#Analysis LFSR Fibbonachi
for i in range(len(DATA)):
	if DATA[i] == "0":
		gen_1[0] += 1
	elif DATA[i] == "1":
		gen_1[1] += 1

for i in range(int(len(DATA)/2)):
	if DATA[2*i:2*i + 2] == "00":
		gen_2[0] += 1
	elif DATA[2*i:2*i + 2] == "01":
		gen_2[1] += 1
	elif DATA[2*i:2*i + 2] == "10":
		gen_2[2] += 1
	elif DATA[2*i:2*i + 2] == "11":
		gen_2[3] += 1

for i in range(int(len(DATA)/3)):
	if DATA[3*i:3*i + 3] == "000":
		gen_3[0] += 1
	elif DATA[3*i:3*i + 3] == "001":
		gen_3[1] += 1
	elif DATA[3*i:3*i + 3] == "010":
		gen_3[2] += 1
	elif DATA[3*i:3*i + 3] == "011":
		gen_3[3] += 1
	elif DATA[3*i:3*i + 3] == "100":
		gen_3[4] += 1
	elif DATA[3*i:3*i + 3] == "101":
		gen_3[5] += 1
	elif DATA[3*i:3*i + 3] == "110":
		gen_3[6] += 1
	elif DATA[3*i:3*i + 3] == "111":
		gen_3[7] += 1

barWidth = 0.3

plt.figure(1)
x = np.arange(2)
plt.bar(x, gen_1, width = barWidth)
plt.xticks([i for i in range(2)], ['0', '1'])
plt.ylabel('Частота появления')
plt.xlabel('Уникальные комбинации')

plt.figure(2)
x = np.arange(4)
plt.bar(x, gen_2, width = barWidth)
plt.xticks([i for i in range(4)], ['00', '01', '10', '11'])
plt.ylabel('Частота появления')
plt.xlabel('Уникальные комбинации')

plt.figure(3)
x = np.arange(8)
plt.bar(x, gen_3, width = barWidth)
plt.xticks([i for i in range(8)], ['000', '001', '010', '011', \
								   '100', '101', '110', '111'])
plt.ylabel('Частота появления')
plt.xlabel('Уникальные комбинации')

plt.show()