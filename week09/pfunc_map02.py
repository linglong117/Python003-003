# 自定义一个 python 函数，实现 map() 函数的功能

list1 = [1, 2, 3, 4, 5, 6, 7, 8]


def func(x):
    return x**2


def my_map(func1, args):
    list2 = []
    for i in args:
        c = func1(i)
        list2.append(c)
    print(list2)
    return list2


mfunc = my_map(func, list1)
print(list(mfunc))