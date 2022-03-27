use material_manager;
create view view_ctpNhap as
select rn.receiveNoteCode, m.materialCode, rnd.receiveQuantity,rnd.receivePrice,rnd.receiveQuantity * rnd.receivePrice as amount
from receivenote rn join receivenotedetail rnd on rn.id = rnd.receiveNoteID join material m on rnd.materialID = m.id;

select * from view_ctpNhap;

create view view_ctpNhap_VT as
select rn.receiveNoteCode, m.materialCode, m.materialName, rnd.receiveQuantity,rnd.receivePrice,rnd.receiveQuantity * rnd.receivePrice as amount
from receivenote rn join receivenotedetail rnd on rn.id = rnd.receiveNoteID join material m on rnd.materialID = m.id;
select * from view_ctpNhap_VT;

create view view_ctpNhap_VT_PN as
select rn.receiveNoteCode, rn.receiveNoteDate, o.orderCode, m.materialCode, m.materialName, rnd.receiveQuantity,rnd.receivePrice,rnd.receiveQuantity * rnd.receivePrice as amount
from receivenote rn join receivenotedetail rnd on rn.id = rnd.receiveNoteID join material m on rnd.materialID = m.id join orders o on o.id = rn.orderID;
select * from view_ctpNhap_VT_PN;


create view view_ctpNhap_VT_PN_DH as
select rn.receiveNoteCode, rn.receiveNoteDate, o.orderCode, s.supplierCode, m.materialCode, m.materialName, rnd.receiveQuantity,rnd.receivePrice,rnd.receiveQuantity * rnd.receivePrice as amount
from receivenote rn join receivenotedetail rnd on rn.id = rnd.receiveNoteID join material m on rnd.materialID = m.id join orders o on o.id = rn.orderID join supplier s on o.supplierID = s.id;
select * from view_ctpNhap_VT_PN_DH;

create view view_ctpNhap_loc as
select rn.receiveNoteCode, rnd.receiveQuantity, rnd.receivePrice, rnd.receiveQuantity * rnd.receivePrice as amount
from receivenote rn join receivenotedetail rnd on rn.id = rnd.receiveNoteID
where rnd.receiveQuantity > 5;
select * from view_ctpNhap_loc;

create view view_ctpNhap_VT_loc as
select rn.receiveNoteCode, m.materialCode, m.materialName, rnd.receiveQuantity, rnd.receivePrice, rnd.receiveQuantity * rnd.receivePrice as amount
from receivenote rn join receivenotedetail rnd on rn.id = rnd.receiveNoteID join material m on rnd.materialID = m.id
where m.materialCalculationUnit = 'Bộ';
select * from view_ctpNhap_VT_loc;

create view view_ctpXuat as
select dn.deliveryNoteCode, m.materialCode, dnd.deliveryQuantity, dnd.deliveryPrice, dnd.deliveryQuantity * dnd.deliveryPrice as amount
from deliverynote dn join deliverynotedetail dnd on dn.id = dnd.deliveryNoteID join material m on dnd.materialID = m.id;
select * from view_ctpXuat;


create view view_ctpXuat_VT as
select dn.deliveryNoteCode, m.materialCode, m.materialName, dnd.deliveryQuantity, dnd.deliveryPrice
from deliverynote dn join deliverynotedetail dnd on dn.id = dnd.deliveryNoteID join material m on dnd.materialID = m.id;
select * from view_ctpXuat_VT;


create view view_ctpXuat_VT_PX as
select dn.deliveryNoteCode, dn.deliveryClientName, m.materialCode, m.materialName, dnd.deliveryQuantity, dnd.deliveryPrice
from deliverynote dn join deliverynotedetail dnd on dn.id = dnd.deliveryNoteID join material m on dnd.materialID = m.id;
select * from view_ctpXuat_VT_PX;