REM   Script: Queries and insertion of data
REM   Queries and insertion of data

create table categories ( 
category_id  
varchar2(20), 
super_categories varchar2(20), 
sub_categories  
varchar2(20), 
constraint pk_category primary key (category_id) 
);

insert into categories (category_id, super_categories, sub_categories) 
values ('A001190', 'Books','Fiction');

insert into categories (category_id, super_categories, sub_categories) 
values ('A001191', 'Food','Cereals');

insert into categories (category_id, super_categories, sub_categories) 
values ('A001192', 'Home Decor','Kitchen');

insert into categories (category_id, super_categories, sub_categories) 
values ('A001193', 'Electronics','Phones');

insert into categories (category_id, super_categories, sub_categories) 
values ('A001194', 'Sports','Training Equipment');

insert into categories (category_id, super_categories, sub_categories) 
values ('A001195', 'Clothing','Casual wear');

insert into categories (category_id, super_categories, sub_categories) 
values ('A001196', 'Toys','Childrens Toys');

insert into categories (category_id, super_categories, sub_categories) 
values ('A001197', 'Electronics','Gaming Consoles');

insert into categories (category_id, super_categories, sub_categories) 
values ('A001198', 'Sports','Running Shoes');

insert into categories (category_id, super_categories, sub_categories) 
values ('A001199', 'Clothing','Ethnic Wear');

insert into categories (category_id, super_categories, sub_categories) 
values ('A001100', 'Books','Non-Fiction');

select * from categories;

create table product( 
product_code  
number(10), 
attributes 
varchar2(20), 
category_id  
varchar2(20), 
price  
number(10,2), 
description  
varchar2(150), 
constraint pk_product primary key (product_code), 
constraint fk_category foreign key (category_id) references 
categories(category_id) 
);

insert into product (product_code, attributes, category_id, price, description) 
values (100001,'Page count','A001190',20.00,'The book, Insane; sane is the authors first book.');

insert into product (product_code, attributes, category_id, price, description) 
values (100002,NULL,'A001191',3.49,'The most selling cereal from the company XYZ.');

insert into product (product_code, attributes, category_id, price, description) 
values (100003,'Chimney Type','A001192',499.99,'The chimney has a coating of stainless steel making it corrosion resistant.');

insert into product (product_code, attributes, category_id, price, description) 
values (100004,'Software','A001193',1099.66,'The all new Apple iPhone.');

insert into product (product_code, attributes, category_id, price, description) 
values (100005,'Weight','A001194',31.99,'The most affordable gym equipment there is.');

insert into product (product_code, attributes, category_id, price, description) 
values (100006,'Chest size in inches','A001195',14.99,NULL);

insert into product (product_code, attributes, category_id, price, description) 
values (100007, NULL,'A001196',16.78,'The toys are below for children 3 years and below.');

insert into product (product_code, attributes, category_id, price, description) 
values (100008,'Manufacturer','A001197',799.52,'The PS5 comes with a lot of games.');

insert into product (product_code, attributes, category_id, price, description) 
values (100009,'Shoe size','A001198',89.65,'The shoe that has been made with recycled ocean plastic.');

insert into product (product_code, attributes, category_id, price, description) 
values (100010,'Chest size in inches','A001199',21.85,NULL);

insert into product (product_code, attributes, category_id, price, description) 
values (100011,'Page count','A001100',5.66,'The best selling book of the 21st century.');

select * from product;

create table customer( 
customer_id  
number(10), 
address  
varchar2(50), 
zipcode  
number(6), 
username  
varchar2(50), 
phone_number  
varchar2(150), 
constraint pk_customer primary key (customer_id) 
);

insert into customer(customer_id, address, zipcode, username, phone_number) 
values (700000, '9199 Hanover Dr.Cumming, GA',300401, 'sigma', '203-349-6866');

insert into customer(customer_id, address, zipcode, username, phone_number) 
values (700001, 'Baker st 221B',221000, 'Sherlock Holmes', '803-352-3193');

insert into customer(customer_id, address, zipcode, username, phone_number) 
values (700002, '33 Illinois Street Everett, MA',140720, 'Srikar07', '949-637-3076');

insert into customer(customer_id, address, zipcode, username, phone_number) 
values (700003, '8479 Golden Star St.Troy, NY',500055, 'Bhaneuu69', '999-999-9999');

insert into customer(customer_id, address, zipcode, username, phone_number) 
values (700004, '67 Oak St.Lagrange, GA',500075, 'PK666', '708-663-0264');

insert into customer(customer_id, address, zipcode, username, phone_number) 
values (700005, '593 Colonial Street Leesburg, VA',142501, '7Satyach007', '240-530-5719');

insert into customer(customer_id, address, zipcode, username, phone_number) 
values (700006, 'Boulevard Towers Apt 529, NY',142267, 'BASK', '479-670-4952');

insert into customer(customer_id, address, zipcode, username, phone_number) 
values (700007, '3 South Carson St.Zionsville, IN ',142560, 'babablacksheep', '503-478-7053');

insert into customer(customer_id, address, zipcode, username, phone_number) 
values (700008, '48 Myers St.Roanoke, VA',107450, 'HUman4', '360-796-9764');

insert into customer(customer_id, address, zipcode, username, phone_number) 
values (700009, 'Boulevard Towers Apt 529, NY',142267, 'BASK', '830-237-1857');

insert into customer(customer_id, address, zipcode, username, phone_number) 
values (700010, '67 Oak St.Lagrange, GA',500075, 'IamBatman', '618-786-0777');

select * from customer;

create table cart( 
cart_id  
number(10), 
cart_value  
decimal(10,2), 
customer_id  
number(6), 
constraint pk_cart primary key (cart_id) 
) ;

insert into cart( cart_id, cart_value, customer_id) 
values (6777700,21305.34,700005);

insert into cart( cart_id, cart_value, customer_id) 
values (6777701, 25170.00,700009);

insert into cart( cart_id, cart_value, customer_id) 
values (6777702, 225495.49, 700001);

insert into cart( cart_id, cart_value, customer_id) 
values (6777703, 30000.00, 700004);

insert into cart( cart_id, cart_value, customer_id) 
values (6777704, 113740.82, 700006);

insert into cart( cart_id, cart_value, customer_id) 
values (6777705, 1879.10, 700009);

insert into cart( cart_id, cart_value, customer_id) 
values (6777706, 14990.00, 700003);

insert into cart( cart_id, cart_value, customer_id) 
values (6777707, 49764.20, 700000);

insert into cart( cart_id, cart_value, customer_id) 
values (6777708, 93742.15,700009);

insert into cart( cart_id, cart_value, customer_id) 
values (6777709,55166.88, 700006);

insert into cart( cart_id, cart_value, customer_id) 
values (6777710, 22499.55, 700002);

insert into cart( cart_id, cart_value, customer_id) 
values (6777711, 5962356.52, 700007);

insert into cart( cart_id, cart_value, customer_id) 
values (6777712, 2722.20, 700008);

insert into cart( cart_id, cart_value, customer_id) 
values (6777713, 4930.00, 700010);

select * from cart;

create table cart_item( 
cart_id  
number(10), 
product_code  
number(10), 
quantity  
number(6), 
constraint fk_cart foreign key (cart_id)  
references cart(cart_id) 
);

insert into cart_item(cart_id, product_code, quantity) 
values (6777713,100011,500);

insert into cart_item(cart_id, product_code, quantity) 
values (6777713,100001,105);

insert into cart_item(cart_id, product_code, quantity) 
values (6777707,100009,20);

insert into cart_item(cart_id, product_code, quantity) 
values (6777708,100004,40);

insert into cart_item(cart_id, product_code, quantity) 
values (6777704,100004,100);

insert into cart_item(cart_id, product_code, quantity) 
values (6777709,100008,69);

insert into cart_item(cart_id, product_code, quantity) 
values (6777706,100006,1000);

insert into cart_item(cart_id, product_code, quantity) 
values (6777704,100005,118);

insert into cart_item(cart_id, product_code, quantity) 
values (6777710,100003,45);

insert into cart_item(cart_id, product_code, quantity) 
values (6777705,100010,86);

insert into cart_item(cart_id, product_code, quantity) 
values (6777703,100001,1500);

insert into cart_item(cart_id, product_code, quantity) 
values (6777712,100002,780);

insert into cart_item(cart_id, product_code, quantity) 
values (6777701,100007,1500);

insert into cart_item(cart_id, product_code, quantity) 
values (6777702,100003,451);

insert into cart_item(cart_id, product_code, quantity) 
values (6777707,100008,60);

insert into cart_item(cart_id, product_code, quantity) 
values (6777708,100009,555);

insert into cart_item(cart_id, product_code, quantity) 
values (6777711,100004,5422);

insert into cart_item(cart_id, product_code, quantity) 
values (6777700,100005,666);

select * from cart_item;

create table offers( 
offer_id  
number(10), 
discount_percent  
number(10), 
offer_type  
varchar2(100), 
max_discount_allowed number(10), 
cart_id  
number(10), 
product_code number(10),
constraint pk_offers primary key (offer_id), 
constraint fk_offers foreign key (cart_id) references cart(cart_id),
constraint fk_offers2 foreign key (product_code) references product(product_code)
);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed, cart_id, product_code) 
values (000001, 15, 'Mobile Phone Sale.',15, 6777708,100004);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed, cart_id,product_code) 
values (000002, 10, 'Additional 10% off on all sports goods.',10, 6777708,100009);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed, cart_id,product_code) 
values (000003, 25, 'Any book 2.5% off on Non-Fiction.',25, 6777713,100001);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed, cart_id,product_code) 
values (000004, 15, 'Any book 1.5% off in Fiction.',15, 6777713,100011);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed, cart_id,product_code) 
values (000005, 10, 'Additional 10% off on all sports goods.',10, 6777707,100009);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed, cart_id,product_code) 
values (000006, 35, 'Game Time.',35, 6777707,100008);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed, cart_id,product_code) 
values (000007, 20, 'Avail upto 20% off on all gym equipment.',20, 6777704,100005);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed, cart_id, product_code) 
values (000008, 15, 'Mobile phone Sale.',15, 6777704,100004);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed, cart_id, product_code) 
values (000009, 35, 'Game Time.', 35, 6777709,100008);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed,  cart_id, product_code) 
values (000010, 10, 'Clothing sale Casual wear', 10, 6777706,100006);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed,  cart_id,product_code) 
values (000011, 5, '5% off on all Home Decor.',5, 6777710,100003);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed,  cart_id,product_code) 
values (000012, 15, '15% off on all Ethnic Wear.',15, 6777705,100010);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed,  cart_id, product_code) 
values (000013, 15, 'Any book 15% off in Fiction.',15, 6777703,100001);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed, cart_id,product_code) 
values (000014, 15, 'All food sale.',15, 6777712,100002);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed,  cart_id,product_code) 
values (000015, 3, 'Regular Discount.',3, 6777701,100007);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed,  cart_id, product_code) 
values (000016, 5, '5% off on all Home Decor.',5, 6777702,100003);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed,  cart_id, product_code) 
values (000017, 15, 'Mobile Phone Sale.', 15, 6777711,100004);

insert into offers(offer_id, discount_percent, offer_type, max_discount_allowed,  cart_id, product_code) 
values (000018, 20, 'Avail upto 20% off on all gym equipment.',20, 6777700,100005);

create table inventory(  
product_code   
number(10),  
total_quantity number(10),  
available_quantity   
number(10),  
reserved_quantity   
number(10),  
constraint fk_inventory foreign key (product_code) references  
product(product_code)  
);

insert into inventory(product_code, total_quantity, available_quantity, reserved_quantity)  
values (100001, 10000, 8395,1605);

insert into inventory(product_code, total_quantity, available_quantity, reserved_quantity)  
values (100002, 5000, 4220, 780);

insert into inventory(product_code, total_quantity, available_quantity, reserved_quantity)  
values (100003, 1500, 1004, 496);

insert into inventory(product_code, total_quantity, available_quantity, reserved_quantity)  
values (100004, 15000, 9438, 5562);

insert into inventory(product_code, total_quantity, available_quantity, reserved_quantity)  
values (100005, 5000, 4216, 784);

insert into inventory(product_code, total_quantity, available_quantity, reserved_quantity)  
values (100006, 10000, 9000, 1000);

insert into inventory(product_code, total_quantity, available_quantity, reserved_quantity)  
values (100007, 10000, 8500, 1500);

insert into inventory(product_code, total_quantity, available_quantity, reserved_quantity)  
values (100008, 1000, 871, 129);

insert into inventory(product_code, total_quantity, available_quantity, reserved_quantity)  
values (100009, 5000, 4225, 575);

insert into inventory(product_code, total_quantity, available_quantity, reserved_quantity)  
values (100010, 1000, 914, 86);

insert into inventory(product_code, total_quantity, available_quantity, reserved_quantity)  
values (100011, 2000, 1500, 500);

select * from inventory;

create table orders( 
order_id  
number(10), 
payment_id  
number(10), 
total_amount  
decimal(10,2), 
payment_mode  
varchar2(50), 
order_details  
varchar2(250), 
cart_id  
number(10), 
constraint pk_order primary key (order_id), 
constraint fk_order foreign key (cart_id) references cart(cart_id) 
);

insert into orders(order_id, payment_id, total_amount, payment_mode, order_details, cart_id)
values(90000, 50001, 17044.27  ,'Credit Card', 'Ordered by: 7Satyach007,Order date: 09/29/2022',6777700); 

insert into orders(order_id, payment_id, total_amount, payment_mode, order_details, cart_id)
values(90001, 50002, 24414.90, 'Credit Card', 'Ordered by: BASK , Order date: 01/09/2022', 6777701);

insert into orders(order_id, payment_id, total_amount, payment_mode, order_details, cart_id)
values(90002, 50003, 214220.71,'Credit Card' , 'Ordered by: Sherlock Holmes ,Order date: 10/18/2022', 6777702);

insert into orders(order_id, payment_id, total_amount, payment_mode, order_details, cart_id)
values(90003, 50004,25500.00 ,'Debit Card' , 'Ordered by: PK666,Order date: 01/3/2022',6777703);

insert into orders(order_id, payment_id, total_amount, payment_mode, order_details, cart_id)
values(90004, 50005, 96490.95,'Credit Card','Ordered by: BASK ,Order date: 05/05/2022', 6777704);

insert into orders(order_id, payment_id, total_amount, payment_mode, order_details, cart_id)
values(90005, 50006,1597.23 ,'Cash' , 'Ordered by: BASK ,Order date: 01/26/2022', 6777705);

insert into orders(order_id, payment_id, total_amount, payment_mode, order_details, cart_id)
values(90006, 50007,13491.00 ,'Debit Card','Ordered by: Bhaneuu69 ,Order date: 11/10/2022', 6777706 );

insert into orders(order_id, payment_id, total_amount, payment_mode, order_details, cart_id)
values(90007, 50008,32794.98 ,'Cash', 'Ordered by: sigma ,Order date: 03/17/2022', 6777707);

insert into orders(order_id, payment_id, total_amount, payment_mode, order_details, cart_id)
values(90008, 50009, 82168.615 ,'Credit Card','Ordered by: BASK ,Order date: 04/30/2022', 6777708);

insert into orders(order_id, payment_id, total_amount, payment_mode, order_details, cart_id)
values(90009, 50010, 35858.47,'Cash' , 'Ordered by: BASK,Order date:08/17/2022', 6777709 );

insert into orders(order_id, payment_id, total_amount, payment_mode, order_details, cart_id)
values(90010, 50011, 21374.57 , 'Credit Card' , 'Ordered by: Srikar07,Order date:02/14/2022', 6777710);

insert into orders(order_id, payment_id, total_amount, payment_mode, order_details, cart_id)
values(90011, 50012, 5068003.04, 'Credit Card', 'Ordered by: babablacksheep ,Order date: 05/13/2022', 6777711);

insert into orders(order_id, payment_id, total_amount, payment_mode, order_details, cart_id)
values(90012, 50013, 2313.87, 'Cash' , 'Ordered by: Human4 ,Order date: 11/14/2022', 6777712);

insert into orders(order_id, payment_id, total_amount, payment_mode, order_details, cart_id)
values(90013, 50014,3907.50 , 'Debit Card' , 'Ordered by: IamBatman ,Order date:07/21/2022', 6777713 );;

select * from categories;

select inv.product_code,inv.available_quantity,NVL(pr1.undiscounted_sold_price,0) undiscounted_sold_price from ( select t.product_code,sum(t.quantity),sum(round(t.quantity*pr.price,1)) undiscounted_sold_price from cart_item t   
left outer join product pr   
on t.product_code=pr.product_code  
where t.quantity*pr.price>20000 or t.quantity>500  
group by  t.product_code) pr1 
right outer join inventory inv 
on pr1.product_code=inv.product_code 
order by undiscounted_sold_price desc


select customer_id,initcap(username),zipcode,rank() over (order by zipcode) zipcode_rank 
from customer where customer_id in (select customer_id from cart where cart_id  
in (select cart_id from cart_item where product_code in  
(select product_code from product where (category_id in (select category_id from categories 
where super_categories in (select super_categories from categories 
group by super_categories 
having count(super_categories)>1))) and (length(description)>1))))


