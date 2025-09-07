x = int(input())
if 1 <= x <= 4000:
    if (x % 4 == 0 and x % 100 != 0) or (x % 400 == 0):
        print(1)
    else:
        print(0)