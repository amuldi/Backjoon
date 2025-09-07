x = [i for i in range(1,31)] 
for _ in range(28):
 y = int(input())
 x.remove(y) #x 리스트에서 그 숫자를 제거
print(min(x))
print(max(x))