insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (5,3,'11111','R', '2023-02-22 12:30:29','2023-03-22 12:30:29');
insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (6,4,'11112','I', '2023-02-15 12:30:29','2023-04-22 12:30:29');
insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (5,6,'11113','R', '2023-01-22 12:30:29','2023-02-22 12:30:29');
insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (7,4,'11114','I', '2023-03-14 12:30:29','2023-06-22 12:30:29');
insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (8,3,'11115','R', '2023-04-22 12:30:29','2023-05-22 12:30:29');
insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (6,7,'11116','R', '2023-03-01 12:30:29','2023-04-22 12:30:29');
insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (9,9,'11117','I', '2023-02-22 12:30:29','2023-05-22 12:30:29');
insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (5,3,'11118','I', '2023-07-16 12:30:29','2023-07-16 12:30:29');
insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (6,4,'11119','R', '2023-02-15 12:30:29','2023-04-15 12:30:29');
insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (5,4,'11120','I', '2023-07-16 15:30:29','2023-07-16 17:00:29');
insert into [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) values (5,4,'11121','R', '2023-04-15 12:30:29','2023-04-15 12:30:29');

INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7,5,'11121','R','2023-04-01 04:09:18','2023-04-02 19:38:57');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5,5,'11122','I','2023-04-01 18:13:06','2023-04-04 14:49:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8,10,'11123','I','2023-04-06 06:53:19','2023-04-09 05:55:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5,3,'11124','R','2023-04-01 06:58:30','2023-04-04 20:39:07');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7,4,'11125','I','2023-04-07 13:57:37','2023-04-14 21:19:49');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8,4,'11126','I','2023-04-09 07:24:38','2023-04-12 06:23:26');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6,13,'11127','I','2023-04-02 07:28:02','2023-04-05 13:40:46');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9,9,'11128','R','2023-04-07 23:16:41','2023-04-13 13:58:54');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8,4,'11129','I','2023-04-03 04:41:18','2023-04-05 13:24:41');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7,13,'11130','R','2023-04-03 12:39:06','2023-04-04 05:53:12');


UPDATE [PushOrders]
SET [reportNum] = '11119'
WHERE [pushId] = 9 


Select * from [PushOrders]
Select * from [PushMedOrders]
Select * from [Medicines]


insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (1, 1, 2.0,0,'M1191300') 
insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (1, 2, 1.0,0,'M1191301') 

insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (2, 4, 3.0, 3.0,'M1191303') 
insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (2, 1, 1.0, 1.0,'M1191300') 

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

insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (8, 1, 7.0,7.0,'M1191300') 

insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (9, 2, 7.0,7.0,'M1191301') 
insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (9, 1, 8.0,7.0,'M1191300') 

insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (10, 4, 7.0,7.0,'M1191301') 
insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (10, 5, 19.0,19.0,'M1191304') 

insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (11, 2, 14.0,14.0,'M1191301') 
insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (11, 8, 6.0,4.0,'M1191307') 
insert Into [PushMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) values (11, 4, 20.0,20.0,'M1191303')

UPDATE [PushMedOrders]
SET [supQty] = 7.0
WHERE [orderId] = 7 and [medId] = 1

