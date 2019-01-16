import os

f = open(r'C:\Users\Administrator\Desktop\test3.sql', 'w')
insert_list = []
for i in range(8, 10000):
	line = "insert into lun_table (lun_id, lun_name) values (%s, 'lun%s');" % (i, i)
	f.write(line+'\n')
	
f.close()