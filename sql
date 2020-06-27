import sqlite3
#1.连接数据库
# conn = sqlite3.connect("test.db")               #打开或创建数据库文件
#
# print("Opened database successfully")

#2.创建数据表
# conn = sqlite3.connect("test.db")
#
#
#
# print("成功打开数据库")
#
# c = conn.cursor()                   #获取游标
#
# sql  = '''
#         create table company
#             (id int primary  key not null,
#             name text nut null,
#             age int not null,
#             address char(50),
#             salary real);
# '''
# c.execute(sql)                      #执行sql语句
# conn.commit()                       #提交数据库操作
# conn.close()                        #关闭数据库连接


#3.插入数据


# conn = sqlite3.connect("test.db")
#
# print("成功打开数据库")
#
# c = conn.cursor()                   #获取游标
#
# sql1  = '''
#         insert into company(id,name,age,address,salary)
#             values(1,'张三',32,"成都",8000);
# '''
# c.execute(sql1)                      #执行sql语句
# conn.commit()                       #提交数据库操作
# conn.close()
#
#
#
#
#
# print("插入数据完成")
#4.查询数据
conn = sqlite3.connect("test.db")

print("成功打开数据库")

c = conn.cursor()                   #获取游标

sql  = "select id,name,age,address,salary from company"
cursor = c.execute(sql)
for row in cursor:
    print("id = ",row[0])
    print("name = ",row[1])
    print("age = ",row[2],end="\n")

conn.close()
