use material_manager;

delimiter //
create procedure getTotalQuantity(materialCode varchar(50))
begin
    select m.materialCode, s.quantity + s.importQuantity - s.exportQuantity + rnd.receiveQuantity - dnd.deliveryQuantity as total
    from stock s join material m on s.materialID = m.id join receivenotedetail rnd on m.id = rnd.materialID join deliverynotedetail dnd on m.id = dnd.materialID;
end //
// delimiter ;
call getTotalQuantity('1');
