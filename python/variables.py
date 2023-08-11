x = "awesome"

def myfunc():
    global x
    x = "amazing"

myfunc()
print(x)