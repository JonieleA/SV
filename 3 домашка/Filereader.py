import os

file = 'x.txt'

with open(file, 'r', encoding='utf-8') as my_file:
    print(my_file.readlines())