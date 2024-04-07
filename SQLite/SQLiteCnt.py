import sqlite3
DataBase = sqlite3.connect("sqlite.db")

connect_corsor=DataBase.cursor()

connect_corsor.execute("create table Ages(name varchar(120),age integer)")
connect_corsor.execute("delete from Ages")
connect_corsor.execute("insert into Ages (name, age) values ('Mara', 28)");
connect_corsor.execute("insert into Ages (name, age) values ('Otto', 33)");
connect_corsor.execute("insert into Ages (name, age) values ('Fyn', 31)");
connect_corsor.execute("insert into Ages (name, age) values ('Neshawn', 17)")

DataBase.commit()

connect_corsor.execute("select hex(name || age) as x from Ages order by  x")
Db_Age_row = connect_corsor.fetchall()

Db_row=Db_Age_row[0][0]
DataBase.close()

print(Db_row)

# import os

# DataBase = 'sqlite.db'

# if os.path.exists(DataBase):
#     os.remove(DataBase)
#     print(f"The database file '{DataBase}' has been successfully dropped.")
# else:
#     print(f"The database file '{DataBase}' does not exist.")

