x = int(input())
for _ in range (x):
    R,S = input().split()
    for i in S:
        print(i * int(R),end = "")
    print()
    