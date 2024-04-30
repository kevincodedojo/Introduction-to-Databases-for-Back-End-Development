create table tbl(
    table_id int,
    location varchar(50),
    primary key(table_id)
);

create table waiter(
    waiter_id int,
    name varchar(50),
    contact_no varchar(50),
    shift varchar(50),
    primary key(waiter_id)
);

create table table_order(
    order_id int,
    date_time datetime,
    table_id int,
    waiter_id int,
    primary key(order_id),
    foreign key(table_id) references tbl(table_id),
    forrign key(waiter_id) references waiter(waiter_id)
);

create table customer(
    customer_id int,
    name varchar(50),
    NIC_no varchar(50),
    contact_no varchar(50),
    primary key(cutomer_id)
);

create table reservation (
    reservation_id int,
    date_time datetime,
    no_of_customers int,
    order_id int,
    table_id int,
    customer_id int,
    primary key (reservation_id),
    foreign key(order_id) references table_order(table_id),
    foreign key(table_id) references tbl(table_id),
    foreign key (customer_id) references customer(customer_id)
);

create table menu(
    menu_id int,
    description varchar(225);
    availability varchar(50),
    primary key(menu_id)
);

create table menu_item(
    menu_item_id int,
    description varchar(255),
    price float,
    availability int,
    menu_id int,
    primary key(menu_item_id),
    foreign key(menu_id) references menu(menu_id)
);

create table order_menu_item(
    order_id int,
    menu_item_id int,
    quantity int,
    primary key(order_id, menu_item_id),
    foreign key(order_id) references table_order(order_id),
    foreign key(menu_item_id) references menu_item(menu_item_id)
)