import pandas as pd
import numpy as np
import pymysql
import random


def start():
    # pass
    # INSERT INTO `smartx_test`.`table1`(`id`, `order_id`, `age`) VALUES (RAND() * 2000, 'x001', RAND() * 100);
    sql  =  'SELECT * FROM smartx_test.table1;'
    sql2  =  'SELECT * FROM smartx_test.table2;'

    connection = pymysql.connect(host='localhost',
                                user='ealingxx',
                                password='pwd123_321',
                                db='smartx_test',
                                charset='utf8mb4')
    df1 = pd.read_sql(sql,connection)
    df2 = pd.read_sql(sql2,connection)

    # 1. SELECT * FROM data;
    # print(f"SELECT * FROM data;翻译成 pandas 语句-> df1 \n {df1}")
    df1

    # # 2. SELECT * FROM data LIMIT 10;
    # # 要返回前n行，请使用DataFrame.head([n])
    # print(f"SELECT * FROM data LIMIT 10;翻译成 pandas 语句->df1.head(10)\n{df1.head(10)}")
    df1.head(10)

    # # 3. SELECT id FROM data;  //id 是 data 表的特定一列
    # print(f"SELECT id FROM data;翻译成 pandas 语句->df1['id']\n{df1['id']}")
    df1['id']

    # # 4. SELECT COUNT(id) FROM data;
    # print(f"SELECT COUNT(id) FROM data;翻译成 pandas 语句->df1['id'].count()\n{df1['id'].count()}")
    df1['id'].count()

    # 5. SELECT * FROM data WHERE id<1000 AND age>30;
    # print(f"SELECT * FROM data WHERE id<1000 AND age>30;翻译成 pandas 语句->df1.loc[(df1['id'] < 1000) & (df1['age'] > 30)]\n{df1.loc[(df1['id'] < 1000) & (df1['age'] > 30)]}")
    df1.loc[(df1['id'] < 1000) & (df1['age'] > 30)]


    # 6. SELECT id,COUNT(DISTINCT order_id) FROM table1 GROUP BY id;
    # print(f"group by id-> {df1.groupby('id')['order_id'].nunique()}")
    # print(f"group by id-> {df1.groupby('id').agg({'order_id': pd.Series.nunique})}")
    df1.groupby('id')['order_id'].nunique()

    # 7. SELECT * FROM table1 t1 INNER JOIN table2 t2 ON t1.id = t2.id;
    # pd.merge(df1, df2, on='key')
    # print(f"INNER JOIN-> {pd.merge(df1,df2,on='id')}")
    pd.merge(df1,df2,on='id')

    # 8. SELECT * FROM table1 UNION SELECT * FROM table2;
    # print(f"UNION-> {pd.concat(df1,df2)}")
    # print(f"UNION-> {pd.concat([df1, df2]).drop_duplicates()}")
    pd.concat([df1, df2]).drop_duplicates()


    # 9. DELETE FROM table1 WHERE id=10;
    # print(f"DELETE FROM table1 WHERE id=10;-> {df1.drop(df1[df1['id']==10].index)}")
    df1.drop(df1[df1['id']==10].index)

    # 10. ALTER TABLE table1 DROP COLUMN column_name;
    # print(f"ALTER TABLE table1 DROP COLUMN column_name;->\n {df1.drop('age',axis=1)}")
    df1.drop('age',axis=1)

if __name__ == "__main__":
    # pass
    start()