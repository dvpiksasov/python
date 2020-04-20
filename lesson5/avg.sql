DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '����������';

INSERT INTO users (name, birthday_at) VALUES
  ('��������', '1990-10-05'),
  ('�������', '1984-11-12'),
  ('���������', '1985-05-20'),
  ('������', '1988-02-14'),
  ('����', '1998-01-12'),
  ('�����', '1992-08-29');
  
select avg(timestampdiff(year, birthday_at, now())) as age from users;
 
select year(now()), month(birthday_at), day(birthday_at) from users;

select concat_ws('-', year(now()), month(birthday_at), day(birthday_at)) from users;

select date(concat_ws('-', year(now()), month(birthday_at), day(birthday_at))) from users;

select date_format(date(concat_ws('-', year(now()), month(birthday_at), day(birthday_at))), '%W') as day from users;

select date_format(date(concat_ws('-', year(now()), month(birthday_at), day(birthday_at))), '%W') as day from users group by day;

select date_format(date(concat_ws('-', year(now()), month(birthday_at), day(birthday_at))), '%W') as day, count(*) as total from users group by day;