CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price INT,
    stock INT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO users VALUES
(1, 'Ali', 'ali@mail.com', 'Tashkent'),
(2, 'Vali', 'vali@mail.com', 'Samarkand'),
(3, 'Hasan', 'hasan@mail.com', 'Bukhara');

INSERT INTO products VALUES
(1, 'Laptop', 800, 10),
(2, 'Phone', 500, 20),
(3, 'Headphones', 100, 50),
(4, 'Keyboard', 50, 100);

INSERT INTO orders VALUES
(1, 1, '2024-01-01'),
(2, 1, '2024-01-10'),
(3, 2, '2024-01-15');

INSERT INTO order_items VALUES
(1, 1, 1, 1),
(2, 1, 3, 2),
(3, 2, 2, 1),
(4, 3, 4, 5);
