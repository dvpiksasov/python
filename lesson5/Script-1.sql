DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at DATETIME,
  updated_at DATETIME
) COMMENT = '����������';

INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('��������', '1990-10-05', NOW(), NOW()),
  ('�������', '1984-11-12', NOW(), NOW()),
  ('���������', '1985-05-20', NOW(), NOW()),
  ('������', '1988-02-14', NOW(), NOW()),
  ('����', '1998-01-12', NOW(), NOW()),
  ('�����', '2006-08-29', NOW(), NOW());
  