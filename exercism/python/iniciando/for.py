list = [2, 4, 6, 8, 10]

# for item in list:
#     print(item)

for item in list[0:3]:
    if item > 2:
        print(item)
    else:
        print('O numero é menor que 2')


list2 = ["Filipe", "Larissa"]

for name in list2:
    if not name == "Filipe":
        print(name)

