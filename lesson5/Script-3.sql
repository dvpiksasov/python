DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT '����� �������� ������� �� ������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '������ �� ������';

insert into storehouses_products (storehouse_id, product_id, value) values
	(1, 555, 0),
	(1, 666, 2500),
	(1, 222, 0),
	(1, 333, 30),
	(1, 444, 500),
	(1, 777, 1);

select * from storehouses_products order by value;

select * from storehouses_products order by if(value > 0, 0, 1), value;