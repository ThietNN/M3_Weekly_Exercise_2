create database material_manager;
use material_manager;

create table material(
    id int primary key ,
    materialCode int,
    materialName varchar(27),
    materialCalculationUnit varchar(12),
    materialPrice int
);

create table stock(
    id int primary key,
    materialID int,
    quantity int,
    importQuantity int,
    exportQuantity int,
    foreign key (materialID) references material(id)
);

create table supplier(
    id int primary key,
    supplierCode int,
    supplierName varchar(50),
    supplierAddress varchar(100),
    supplierPhoneNumber varchar(10)
);

create table orders(
    id int primary key ,
    orderCode int,
    orderDate date,
    supplierID int,
    foreign key (supplierID) references supplier(id)
);

create table receiveNote(
    id int primary key ,
    receiveNoteCode int,
    receiveNoteDate date,
    orderID int,
    foreign key (orderID) references orders(id)
);

create table deliveryNote(
    id int primary key ,
    deliveryNoteCode int,
    deliveryNoteDate date,
    deliveryClientName varchar(27)
);

create table orderDetail(
    id int primary key ,
    orderID int,
    materialID int,
    orderQuantity int,
    foreign key (orderID) references orders(id),
    foreign key (materialID) references material(id)
);

create table receiveNoteDetail(
    id int primary key ,
    receiveNoteID int,
    materialID int,
    receiveQuantity int,
    receivePrice int,
    description varchar(270),
    foreign key (receiveNoteID) references receiveNote(id),
    foreign key (materialID) references material(id)
);

create table deliveryNoteDetail(
    id int primary key ,
    deliveryNoteID int,
    materialID int,
    deliveryQuantity int,
    deliveryPrice int,
    description varchar(270),
    foreign key (deliveryNoteID) references deliveryNote(id),
    foreign key (materialID) references material(id)
)