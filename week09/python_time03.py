# 实现一个 @timer 装饰器，记录函数的运行时间，注意需要考虑函数可能会接收不定长参数。

import datetime
from functools import wraps


def timer(func):
    @wraps(func)
    def func_wrapper(*args, **kwargs):
        starttime = datetime.datetime.now()
        print(f'开始时间：{starttime}')
        ret = func(*args, **kwargs)
        endtime = datetime.datetime.now()
        print(f'结束时间：{endtime}')
        print(f'{func.__name__} 耗时：{(endtime - starttime).seconds} 秒')
        return ret

    return func_wrapper


@timer
def test_func(*args, **kwargs):
    for i in range(66666666):
        x = i + 1


ftest = test_func('arg1', name='tom', age='21')
