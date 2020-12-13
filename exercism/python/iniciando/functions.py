def call_numbers():
    for number in range(0,10):
        print(number)

# call_numbers()

def call_numbers_with_limit(limit):
    list = range(0,10)
    for number in list[0:limit]:
        print(number)

# call_numbers_with_limit(5)

# def calculator(x, y):
#     print (x+y)

# def calculator(x=10, y=-5):
#     print (x+y)

# calculator(y=10, x=5)
# calculator()
# calculator(y=10)

def calculator(x=10, y=-5):
    return x+y

result = calculator(y=5)
print("Result is", result)