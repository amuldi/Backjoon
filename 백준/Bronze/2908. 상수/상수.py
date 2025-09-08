x, y = input().split()
a, b = int(x[::-1]), int(y[::-1]) # 문자열로 뒤집기
if a > b :
    print(a)
elif a < b:
    print(b)