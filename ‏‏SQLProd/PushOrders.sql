insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (5,3,'11111','R', '2023-02-22 12:30:29','2023-03-22 12:30:29');
insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (6,4,'11112','I', '2023-02-15 12:30:29','2023-04-22 12:30:29');
insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (5,6,'11113','R', '2023-01-22 12:30:29','2023-02-22 12:30:29');
insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (7,4,'11114','I', '2023-03-14 12:30:29','2023-06-22 12:30:29');
insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (8,3,'11115','R', '2023-04-22 12:30:29','2023-05-22 12:30:29');
insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (6,7,'11116','R', '2023-03-01 12:30:29','2023-04-22 12:30:29');
insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (9,9,'11117','I', '2023-02-22 12:30:29','2023-05-22 12:30:29');

Select * from [PushOrders]
Select * from [PushMedOrders]
Select * from [Medicines]


insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (1, 1, 2.0,0,'M1191300') 
insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (1, 2, 1.0,0,'M1191301') 

insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (2, 4, 3.0, 0,'M1191303') 
insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (2, 1, 1.0, 0,'M1191300') 

insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (3, 5, 1.0, 0,'M1191304')

insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (4, 5, 2.0,0,'M1191304') 
insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (4, 7, 2.0,0,'M1191306') 
insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (4, 8, 1.0,0,'M1191307') 

insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (5, 4, 1.0, 0,'M1191303') 
insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (5, 1, 1.0, 0,'M1191300') 

insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (6, 5, 4.0, 0,'M1191304') 

insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (7, 1, 7.0,0,'M1191300') 
insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (7, 2, 8.0,0,'M1191301') 
insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (7, 8, 8.0,0,'M1191307') 
