/* 插入语句 */

指定列插入一条：值和列一一对应
INSERT INTO tasks(SUBJECT, start_date, end_date, description)
VALUES('Learn MySQL INSERT','2017-07-21','2017-07-22','Start learning..')

指定列插入多条：
INSERT INTO tasks(SUBJECT, start_date, end_date, description)
VALUES('Learn MySQL INSERT','2017-07-21','2017-07-22','Start learning..'),
('Learn MySQL INSERT','2017-07-21','2017-07-22','Start learning..'),
('Learn MySQL INSERT','2017-07-21','2017-07-22','Start learning..');

和select语句一起使用
创建一个和tasks相同表结构的tasks_bak表
CREATE TABLE tasks_bak LIKE tasks;

复制task是数据到tasks_bak表
INSERT INTO tasks_bak SELECT * FROM tasks

更新记录
task_id：指定更新的主键
subject：指定更新的值
INSERT INTO tasks(task_id,subject,start_date,end_date,description)
VALUES (5,'Test1 ON DUPLICATE KEY UPDATE','2017-01-01','2017-01-02','Next Priority')
ON DUPLICATE KEY UPDATE
	 task_id = task_id, 
     subject = 'Test1 ON DUPLICATE KEY UPDATE';
	 
	 
上面的更新等价于：
UPDATE tasks 
SET 
    task_id = task_id + 1,
    subject = 'Test ON DUPLICATE KEY UPDATE'
WHERE
    task_id = 4;





