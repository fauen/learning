# This will not work.
# age = 35
# txt = "Daniel is my name and I am " + age
# print(txt)

age = 35
txt = "I'm Daniel and I am {0}"
print(txt.format(age))


a = 34
b = 35
c = 0
d = 3
txt = "We are the Bäckman's and from oldest to youngest {1} {0} {3} {2}."
print(txt.format(a, b, c, d))

txt = "We are the \"Champions\", my friend"
print(txt)


txti = "Hello World"
x = txti[2:5]
print(x)