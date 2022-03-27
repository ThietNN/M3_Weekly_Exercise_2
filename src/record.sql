use material_manager;
insert into material
values (1,1,'mouse','con',10000),
       (2,2,'keyboard','cái',12000),
       (3,3,'case','cây',21000),
       (4,4,'headphone','chiếc',25000),
       (5,5,'monitor','cái',27000);

insert into stock
values(1,1,25,12,26),
       (2,2,12,27,16),
       (3,3,16,7,19),
       (4,4,20,21,13),
       (5,5,14,16,13);

insert into supplier
values (1,1,'Logitech','Thái Hà','0125896749'),
       (2,2,'Ducky','Unknown','9586248713'),
       (3,3,'Asus','Thái Hà','1235786450');

insert into orders
values (1,1,'2022-03-14',1),
       (2,2,'2022-03-15',2),
       (3,3,'2022-03-16',3);


insert into receivenote
values (1,1,'2022-03-14',1),
       (2,2,'2022-03-15',2),
       (3,3,'2022-03-16',3);

insert into deliverynote
values (1,1,'2022-03-14','Joker'),
       (2,2,'2022-03-15','Violet'),
       (3,3,'2022-03-16','Crow');

insert into orderdetail
values (1,1,1,7),
       (2,2,2,12),
       (3,3,3,15),
       (4,3,1,16),
       (5,2,2,25),
       (6,1,3,27);

insert into receivenotedetail
values (1,2,3,12,23000,'Proceed with caution'),
       (2,2,2,16,52000,'Proceed with caution'),
       (3,1,1,21,13000,'Proceed with caution'),
       (4,3,2,25,25000,'Proceed with caution'),
       (5,3,1,27,15000,'Proceed with caution'),
       (6,1,3,7,12000,'Proceed with caution');

insert into deliverynotedetail
values (1,2,3,52,23000,'Proceed with caution'),
       (2,2,2,61,52000,'Proceed with caution'),
       (3,1,1,70,13000,'Proceed with caution'),
       (4,3,2,21,25000,'Proceed with caution'),
       (5,3,1,81,15000,'Proceed with caution'),
       (6,1,3,72,12000,'Proceed with caution');
