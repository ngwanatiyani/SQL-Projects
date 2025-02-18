create database inventoryDB;

use inventoryDB;

-- Create the inventory table
create table inventory(
itemID int auto_increment primary key,
itemName varchar(100) not null,
quantity int not null,
location varchar(50)
);

-- Insert data into the inventory table
INSERT INTO inventory (itemName, quantity, location) VALUES
    ('Screws', 740, 'Warehouse A'),
    ('Nails', 324, 'Warehouse B'),
    ('Paint', 231, 'Warehouse D'),
    ('Lumber', 100, 'Warehouse C'),
    ('Bolts', 500, 'Warehouse A'),
    ('Washers', 1500, 'Warehouse B'),
    ('Glue', 200, 'Warehouse C'),
    ('Sandpaper', 375, 'Warehouse D'),
    ('Brushes', 100, 'Warehouse C'),
    ('Plywood', 50, 'Warehouse A');

-- Select all inventory items
select * from inventory;

-- Query inventory items with quantity below threshold
select * from inventory where quantity < 300;


SELECT * FROM inventory WHERE itemName = 'Screws';

update inventory set quantity = quantity + 200 where itemName = 'Scews';
-- End of scripts
