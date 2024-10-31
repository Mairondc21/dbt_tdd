CREATE TABLE public_new.customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

INSERT INTO public_new.customers(name,email)
VALUES
    ('Alice', 'alice@example.com'),
    ('Bob', NULL),
    (NULL,'charlie@example.com');

CREATE TABLE public_new.orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    status VARCHAR(50),
    amount DECIMAL (10,2),
    country_code CHAR(2)
);

INSERT INTO public_new.orders(order_date, customer_id, status, amount,country_code)
VALUES
    ('2024-01-01',1,'placed',100.00,'US'),
    ('2024-01-02',2,'invalid_status',200.00,'CA'),
    (NULL,3,'completed',300.00,'GB'),
    ('2024-01-04',4,'returned',150.00,NULL);

ALTER TABLE public_new.orders
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id) REFERENCES public_new.customers(id);
