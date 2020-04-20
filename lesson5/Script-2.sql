DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('Геннадий', '1990-10-05', '13.01.2003 09:20', '13.01.2003 09:20'),
  ('Наталья', '1984-11-12', '13.01.2003 09:20', '13.01.2003 09:20'),
  ('Александр', '1985-05-20', '13.01.2003 09:20', '13.01.2003 09:20'),
  ('Сергей', '1988-02-14', '13.01.2003 09:20', '13.01.2003 09:20'),
  ('Иван', '1998-01-12', '13.01.2003 09:20', '13.01.2003 09:20'),
  ('Мария', '2006-08-29', '13.01.2003 09:20', '13.01.2003 09:20');
  
select str_to_date (created_at, '%d.%m.%Y %k:%i') from users;

update users set created_at = str_to_date (created_at, '%d.%m.%Y %k:%i'), updated_at = str_to_date (updated_at, '%d.%m.%Y %k:%i');
alter table users change created_at created_at datetime default current_timestamp;
alter table users change updated_at updated_at datetime default current_timestamp on update current_timestamp;
 