
def finder(filename):
    file = open(filename, "r")
    i=[]
    for j in range(0,10000):
        i.append(file.readline())
        j = j + 1
    file.close()

# Счетчик единиц и нулей

    k = 0
    for j in range(0,10000):
        if (i[j] == "0\n"): k = k + 1
    print('0: ',k)
    k = 0
    for j in range(0,10000):
        if (i[j] == "1\n"): k = k + 1
    print('1: ',k)


# Двузначные последовательности

    k = 0
    for j in range(0,9999):
        if (i[j] == "0\n" and i[j+1] == "0\n"):
            k = k + 1
    print('0 и 0: ',k)
    k = 0
    for j in range(0,9999):
        if (i[j] == "0\n" and i[j+1]== "1\n"): k = k + 1
    print('0 и 1: ',k)
    k = 0
    for j in range(0,9999):
        if (i[j] == "1\n" and i[j+1]== "0\n"): k = k + 1
    print('1 и 0: ',k)
    k = 0
    for j in range(0,9999):
        if (i[j] == "1\n" and i[j+1]== "1\n"): k = k + 1
    print('1 и 1: ',k)
    k = 0

# Трехзначные последовательности

    k = 0
    for j in range(0,9998):
        if (i[j] == "0\n" and i[j+1] == "0\n" and i[j+2] == "0\n"): k = k + 1
    print('0 и 0 и 0: ',k)
    k = 0
    for j in range(0,9998):
        if (i[j] == "0\n" and i[j+1] == "0\n" and i[j+2]== "1\n"): k = k + 1
    print('0 и 0 и 1: ',k)
    k = 0
    for j in range(0,9998):
        if (i[j] == "0\n" and i[j+1] == "1\n" and i[j+2] == "0\n"): k = k + 1
    print('0 и 1 и 0: ',k)
    k = 0
    for j in range(0,9998):
        if (i[j] == "0\n" and i[j+1] == "1\n" and i[j+2] == "1\n"): k = k + 1
    print('0 и 1 и 1: ',k)
    k = 0
    for j in range(0,9998):
        if (i[j] == "1\n" and i[j+1] == "0\n" and i[j+2] == "0\n"): k = k + 1
    print('1 и 0 и 0: ',k)
    k = 0
    for j in range(0,9998):
        if (i[j] == "1\n" and i[j+1] == "0\n" and i[j+2] == "1\n"): k = k + 1
    print('1 и 0 и 1: ',k)
    k = 0
    for j in range(0,9998):
        if (i[j] == "1\n" and i[j+1] == "1\n" and i[j+2] == "0\n"): k = k + 1
    print('1 и 1 и 0: ',k)
    k = 0
    for j in range(0,9998):
        if (i[j] == "1\n" and i[j+1] == "1\n" and i[j+2] == "1\n"): k = k + 1
    print('1 и 1 и 1: ',k)
    k = 0
print('Галуа:')
finder("gal.txt")
print('Фибоначи:')
finder("fib.txt")