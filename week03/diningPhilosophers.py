
# -*- coding:utf8 -*-

import threading
import random
import time
import queue

q = queue.Queue(300)

'''
输出列表中的每一个子列表描述了某个哲学家的具体行为，它的格式如下：
output[i] = [a, b, c] (3 个整数)

a 哲学家编号。
b 指定叉子：{1 : 左边, 2 : 右边}.
c 指定行为：{1 : 拿起, 2 : 放下, 3 : 吃面}。
如 [4,2,1] 表示 4 号哲学家拿起了右边的叉子。所有自列表组合起来，就完整描述了“当每个哲学家分别需要进食 n 次”时这五位哲学家具体的行为记录。
'''


class DiningPhilosophers:
    def __init__(self, eatTimes, lock,orders, records):
        super(DiningPhilosophers, self).__init__()
        # self.philosopher = philosopher
        self.eatTimes = eatTimes
        self.records = records
        self.lock = lock
        self.orders = orders


    # philosopher 哲学家的编号。
    # pickLeftFork 和 pickRightFork 表示拿起左边或右边的叉子。
    # eat 表示吃面。
    # putLeftFork 和 putRightFork 表示放下左边或右边的叉子。

    def wantsToEat(self, philosopher, pickLeftFork, pickRightFork, eat, putLeftFork, putRightFork):
        self.philosopher = philosopher
        for i in range(self.eatTimes):
            with self.lock[self.orders[philosopher][0]]:
                with self.lock[self.orders[philosopher][1]]:
                    pickLeftFork()
                    pickRightFork()
                    eat()
                    putLeftFork()
                    putRightFork()

    def pickLeftFork(self):
        q.put([self.philosopher, 1, 1])

    def pickRightFork(self):
        q.put([self.philosopher, 2, 1])

    def eat(self):
        time.sleep(random.uniform(1, 3)/1000)
        q.put([self.philosopher, 0, 3])

    def putLeftFork(self):
        q.put([self.philosopher, 1, 2])

    def putRightFork(self):
        q.put([self.philosopher, 2, 2])


# 使用者指定一个进食次数num

if __name__ == "__main__":

    # out records
    records = queue.Queue()
    # fork lock
    lock = [threading.Lock() for i in range(5)]
    orders = [sorted([i, (i+1) % 5]) for i in range(5)]
    # num = input('>>>')

    eatTimes = 3
    p1 = DiningPhilosophers(int(eatTimes), lock,orders, records)

    philosophers = []
    for i in range(5):
        philosophers.append(threading.Thread(target=p1.wantsToEat, args=[i, p1.pickLeftFork,
                                                                         p1.pickRightFork, p1.eat, p1.putLeftFork, p1.putRightFork]))

    [p.start() for p in philosophers]
    [p.join() for p in philosophers]

    items = []
    while True:
        items.append(q.get())
        if q.empty():
            break

    print(f'items->{items}')
