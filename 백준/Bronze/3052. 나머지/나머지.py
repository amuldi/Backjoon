x= set()
for _ in range (10):
    A = int(input()) 
    x.add(A%42)
print(len(x))