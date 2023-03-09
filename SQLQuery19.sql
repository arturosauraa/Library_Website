Delete from item where Id = 9;
alter table ReservationItem drop constraint FK__Reservati__BookI__1BC821DD;

alter table ReservationItem 
add constraint FK_Item_ReservationItem_Cascade_Delete
foreign key (BookId) references Item (Id) on delete cascade;

