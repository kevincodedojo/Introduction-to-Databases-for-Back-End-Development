alter table vehicle add foreign key (vehicle_id) references vehicle_type(vehicle_id);


constrant sales_id primary key(costoer_id,product_id);
-- In this example there is only ONE PRIMARY KEY (SalesID). However, the VALUE of the primary key is made up of TWO COLUMNS (customerID +productID).

-- The entity relationship model is based on two key concepts: Entities and relationships