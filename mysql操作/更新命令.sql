/* 更新 */

更新单个字段
update employees
set 
	email = 'mary.new@yiibai.com'
where 
	employeeNumber = 1056;
	
更新多个字段
UPDATE employees 
SET 
    lastname = 'Hill',
    email = 'mary.hill@yiibai.com'
WHERE
    employeeNumber = 1056;
	
	
使用select语句更新
UPDATE customers 
SET 
    salesRepEmployeeNumber = 
	   (SELECT 
            employeeNumber
        FROM
            employees
        WHERE
            jobtitle = 'Sales Rep'
        LIMIT 1)
WHERE
    salesRepEmployeeNumber IS NULL;
	

