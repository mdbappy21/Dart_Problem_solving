item = set()
while True:
    try:
        a = input()
        item.add(a)
    except EOFError:
        break
print(len(item))