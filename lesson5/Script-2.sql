DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
) COMMENT = '����������';

INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('��������', '1990-10-05', '13.01.2003 09:20', '13.01.2003 09:20'),
  ('�������', '1984-11-12', '13.01.2003 09:20', '13.01.2003 09:20'),
  ('���������', '1985-05-20', '13.01.2003 09:20', '13.01.2003 09:20'),
  ('������', '1988-02-14', '13.01.2003 09:20', '13.01.2003 09:20'),
  ('����', '1998-01-12', '13.01.2003 09:20', '13.01.2003 09:20'),
  ('�����', '2006-08-29', '13.01.2003 09:20', '13.01.2003 09:20');
  
select str_to_date (created_at, '%d.%m.%Y %k:%i') from users;

update users set created_at = str_to_date (created_at, '%d.%m.%Y %k:%i'), updated_at = str_to_date (updated_at, '%d.%m.%Y %k:%i');
alter table users change created_at created_at datetime default current_timestamp;
alter table users change updated_at updated_at datetime default current_timestamp on update current_timestamp;
 