import sys # sys 모듈 불러오기

for i in sys.stdin: # sys.stdin = 입력받기 (여러줄 입력시)
    print(i.strip())