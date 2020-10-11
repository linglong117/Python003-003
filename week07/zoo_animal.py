# 定义“动物”、“猫”、“狗”、“动物园”四个类，动物类不允许被实例化。
# 动物类要求定义“类型”、“体型”、“性格”、“是否属于凶猛动物”四个属性，是否属于凶猛动物的判断标准是：“体型 >= 中等”并且是“食肉类型”同时“性格凶猛”。
# 猫类要求有“叫声”、“是否适合作为宠物”以及“名字”三个属性，其中“叫声”作为类属性，除凶猛动物外都适合作为宠物，猫类继承自动物类。狗类属性与猫类相同，继承自动物类。
# 动物园类要求有“名字”属性和“添加动物”的方法，“添加动物”方法要实现同一只动物（同一个动物实例）不能被重复添加的功能。

from abc import ABCMeta, abstractmethod


class Zoo(object):
    animals = {}

    def __init__(self, name):
        self.name = name

    @classmethod
    def add_animal(cls, animal):
        if animal not in cls.animals:
            cls.animals[animal] = animal
        else:
            print(f'已经有【{animal.name}】了，同一只动物不能重复添加！')
        if not hasattr(cls, animal.__class__.__name__):
            setattr(cls, animal.__class__.__name__, animal)


class Animal(object):
    size_dic = {'小': 1, '中': 2, '大': 3}

    @abstractmethod
    def __init__(self, kind, size, character):
        self.kind = kind
        self.size = size
        self.character = character

    @property
    def is_ferocious(self):
        return (self.size_dic[self.size] >=
                2) and self.kind == '食肉' and self.character == '凶猛'

    @property
    def is_as_pet(self):
        return not self.is_ferocious


class Cat(Animal):
    sound = '喵喵'

    def __init__(self, name, kind, size, character):
        self.name = name
        super().__init__(kind, size, character)


class Dog(Animal):
    sound = '汪汪'

    def __init__(self, name, kind, size, character):
        self.name = name
        super().__init__(kind, size, character)


if __name__ == '__main__':
    # 实例化动物园
    zoo = Zoo('时间动物园')

    # 实例化一只猫，属性包括名字、类型、体型、性格
    cat1 = Cat('大花猫 1', '食肉', '小', '温顺')
    cat2 = Cat('大花猫 2', '食肉', '中', '温顺')
    cat3 = Cat('大花猫 3', '食肉', '大', '凶猛')
    dog1 = Dog('旺旺1', '食肉', '小', '凶猛')
    dog2 = Dog('旺旺2', '食肉', '中', '凶猛')

    # # 增加一只猫到动物园
    zoo.add_animal(cat1)

    # 动物园是否有猫这种动物
    have_cat = hasattr(zoo, 'Cat')
    # print(have_cat)
    if have_cat:
        print("动物园有猫")
    else:
        print('动物园目前没有猫')

    zoo.add_animal(cat1)  # 重复添加测试
    zoo.add_animal(cat2)
    zoo.add_animal(cat3)
    zoo.add_animal(dog1)

    for animal in zoo.animals:
        # print(animal.is_as_pet)
        if animal.is_as_pet:
            print(f'【{animal.name}】适合当宠物')
        else:
            print(f'【{animal.name}】不适合当宠物')
