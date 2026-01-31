-- ==========================================
-- 1. POPULATE CATEGORIES (tb_category)
-- Expanded to 10 Categories
-- ==========================================

INSERT INTO tb_category (category_id, name) VALUES (1, 'Electronics');
INSERT INTO tb_category (category_id, name) VALUES (2, 'Books');
INSERT INTO tb_category (category_id, name) VALUES (3, 'Home & Kitchen');
INSERT INTO tb_category (category_id, name) VALUES (4, 'Fashion');
INSERT INTO tb_category (category_id, name) VALUES (5, 'Gaming');
INSERT INTO tb_category (category_id, name) VALUES (6, 'Sports & Outdoors');
INSERT INTO tb_category (category_id, name) VALUES (7, 'Beauty & Personal Care');
INSERT INTO tb_category (category_id, name) VALUES (8, 'Toys & Hobbies');
INSERT INTO tb_category (category_id, name) VALUES (9, 'Automotive');
INSERT INTO tb_category (category_id, name) VALUES (10, 'Pets');

-- ==========================================
-- 2. POPULATE PRODUCTS (tb_product)
-- 50+ items linked to the categories above
-- ==========================================

-- --- Category 1: Electronics ---
INSERT INTO tb_product (product_id, name, price, description, category_id) VALUES 
(1, 'Smartphone Galaxy Ultra', 1199.99, 'High-end smartphone with 512GB storage and 100x zoom.', 1),
(2, 'Pro Laptop 16-inch', 2499.00, 'Powerful laptop for developers with M3 chip.', 1),
(3, 'Wireless Noise Cancelling Headphones', 349.50, 'Over-ear headphones with 30-hour battery life.', 1),
(4, '4K OLED Monitor', 899.00, '27-inch monitor with stunning color accuracy.', 1),
(5, 'Smartwatch Series 9', 399.00, 'Advanced health monitoring and GPS tracking.', 1),
(6, 'Tablet Pro 12.9', 1099.00, 'Tablet with mini-LED display and pencil support.', 1);

-- --- Category 2: Books ---
INSERT INTO tb_product (product_id, name, price, description, category_id) VALUES 
(7, 'Effective Java', 45.00, 'A must-have book for Java developers.', 2),
(8, 'Clean Architecture', 52.00, 'A craftsman guide to software structure and design.', 2),
(9, 'The Lord of the Rings', 25.00, 'Classic fantasy trilogy paperback edition.', 2),
(10, 'Atomic Habits', 18.00, 'An easy and proven way to build good habits.', 2),
(11, 'The Pragmatic Programmer', 40.00, 'Your journey to mastery in coding.', 2);

-- --- Category 3: Home & Kitchen ---
INSERT INTO tb_product (product_id, name, price, description, category_id) VALUES 
(12, 'Smart Coffee Maker', 120.00, 'Programmable coffee maker with Wi-Fi control.', 3),
(13, 'Robot Vacuum Cleaner', 450.00, 'Automatic vacuum with mapping technology.', 3),
(14, 'Ergonomic Office Chair', 299.99, 'Mesh chair with lumbar support for long work hours.', 3),
(15, 'High-Speed Blender', 89.99, 'Perfect for smoothies and soups.', 3),
(16, 'LED Desk Lamp', 35.00, 'Dimmable eye-caring desk lamp with USB port.', 3),
(17, 'Premium Cotton Towel Set', 45.00, 'Soft and absorbent bath towels, pack of 4.', 3);

-- --- Category 4: Fashion ---
INSERT INTO tb_product (product_id, name, price, description, category_id) VALUES 
(18, 'Running Sneakers', 89.90, 'Lightweight shoes designed for marathons.', 4),
(19, 'Leather Jacket', 150.00, 'Genuine leather jacket, vintage style.', 4),
(20, 'Cotton T-Shirt Pack', 25.00, 'Pack of 3 basic black cotton t-shirts.', 4),
(21, 'Slim Fit Jeans', 60.00, 'Dark wash denim jeans with stretch.', 4),
(22, 'Aviator Sunglasses', 110.00, 'Classic polarized sunglasses with gold frame.', 4),
(23, 'Minimalist Wristwatch', 130.00, 'Analog watch with leather strap.', 4);

-- --- Category 5: Gaming ---
INSERT INTO tb_product (product_id, name, price, description, category_id) VALUES 
(24, 'Next-Gen Console', 499.99, 'The latest gaming console with 4K 120fps support.', 5),
(25, 'Mechanical Keyboard', 110.00, 'RGB mechanical keyboard with red switches.', 5),
(26, 'Gaming Mouse', 60.00, 'Ultralight mouse with high DPI sensor.', 5),
(27, 'VR Headset', 399.00, 'Immersive virtual reality system.', 5),
(28, 'Wireless Gamepad', 59.99, 'Controller compatible with PC and Console.', 5),
(29, 'Racing Wheel', 250.00, 'Force feedback steering wheel for racing sims.', 5);

-- --- Category 6: Sports & Outdoors ---
INSERT INTO tb_product (product_id, name, price, description, category_id) VALUES 
(30, 'Yoga Mat', 20.00, 'Non-slip eco-friendly yoga mat.', 6),
(31, 'Dumbbell Set', 85.00, 'Adjustable dumbbell set for home workouts.', 6),
(32, 'Mountain Bike', 550.00, '21-speed bike with front suspension.', 6),
(33, 'Tennis Racket', 120.00, 'Lightweight carbon fiber racket.', 6),
(34, 'Whey Protein Isolate', 65.00, '5lb tub of vanilla protein powder.', 6);

-- --- Category 7: Beauty & Personal Care ---
INSERT INTO tb_product (product_id, name, price, description, category_id) VALUES 
(35, 'Luxury Perfume', 95.00, 'Floral scent with notes of jasmine and rose.', 7),
(36, 'Electric Toothbrush', 50.00, 'Rechargeable toothbrush with pressure sensor.', 7),
(37, 'Hydrating Face Cream', 35.00, 'Daily moisturizer with hyaluronic acid.', 7),
(38, 'Professional Hair Dryer', 120.00, 'Fast drying with ionic technology.', 7),
(39, 'Makeup Brush Set', 25.00, '12-piece synthetic brush set.', 7);

-- --- Category 8: Toys & Hobbies ---
INSERT INTO tb_product (product_id, name, price, description, category_id) VALUES 
(40, 'Building Blocks Set', 80.00, 'Space station construction kit with 1000 pieces.', 8),
(41, 'RC Drone with Camera', 150.00, 'Quadcopters with HD camera and GPS.', 8),
(42, 'Action Figure', 30.00, 'Collectible superhero figure.', 8),
(43, 'Strategy Board Game', 45.00, 'Award-winning game for 2-5 players.', 8);

-- --- Category 9: Automotive ---
INSERT INTO tb_product (product_id, name, price, description, category_id) VALUES 
(44, 'Car Wax Kit', 22.00, 'High gloss finish wax with applicator pad.', 9),
(45, 'Portable Tire Inflator', 40.00, '12V air compressor for car tires.', 9),
(46, 'Dash Cam 4K', 120.00, 'Front and rear camera with night vision.', 9),
(47, 'Car Seat Covers', 60.00, 'Universal fit leatherette covers.', 9);

-- --- Category 10: Pets ---
INSERT INTO tb_product (product_id, name, price, description, category_id) VALUES 
(48, 'Grain-Free Dog Food', 55.00, 'Premium dry food for adult dogs.', 10),
(49, 'Cat Tree Tower', 85.00, 'Multi-level cat tree with scratching posts.', 10),
(50, 'Retractable Leash', 15.00, '16ft heavy duty dog leash.', 10),
(51, 'Aquarium Starter Kit', 70.00, '10-gallon tank with filter and LED light.', 10);