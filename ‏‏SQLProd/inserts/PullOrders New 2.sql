Select * from [PullOrders]
Select * from [PullMedOrders]
Select * from [Medicines]

Select * from [PushOrders]
Select * from [PushMedOrders]
Select * from [Medicines]
Select * from [Departments]
Select * from Users

Select * from [PullOrders]
where year(lastUpdate) = 2023 and depId = 3 and MONTH(lastUpdate) = 7

INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (1345, 4, 2.0, 0.0, 'M1191304')

Select * from [PullMedOrders]
where orderId between 433 and 434 and medId = 4

Select * from [PushMedOrders]
where orderId = 675 or orderId = 688 and medId = 4

UPDATE [PushMedOrders]
SET [supQty] = 0.0
WHERE [orderId] = 687 and [medId] = 4

UPDATE [PushMedOrders]
SET [poQty] = 12.0
WHERE [orderId] = 361 and [medId] = 4

UPDATE [PushOrders]
SET [reportNum] = 11797
WHERE [pushId] = 688

UPDATE [PushMedOrders]
SET [supQty] = 0.0
WHERE [orderId] = 433


Select * from [Usages]
where year(lastUpdate) =2023 and depId = 3 and MONTH(lastUpdate) = 3

Select * from [MedUsages]
where [usageId] = 721

Select * from [MedUsages]
where [usageId] = 38


INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,12, 3, '11111', 'I', '2022-01-11 22:15:34', '2022-01-13 22:15:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,12, 3, '11112', 'I', '2022-01-25 11:33:27', '2022-01-27 11:33:27');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11113', 'I', '2022-01-07 20:51:43', '2022-01-09 20:51:43');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11114', 'I', '2022-01-03 11:21:53', '2022-01-05 11:21:53');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,4, 4, '11115', 'I', '2022-01-21 00:27:07', '2022-01-23 00:27:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,4, 4, '11116', 'I', '2022-01-05 01:17:31', '2022-01-07 01:17:31');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11117', 'I', '2022-01-19 06:40:20', '2022-01-21 06:40:20');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11118', 'I', '2022-01-11 11:47:08', '2022-01-13 11:47:08');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '11119', 'I', '2022-01-09 19:49:19', '2022-01-11 19:49:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,15, 5, '11120', 'I', '2022-01-30 16:59:56', '2022-02-01 16:59:56');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11121', 'I', '2022-01-20 07:44:48', '2022-01-22 07:44:48');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,15, 5, '11122', 'I', '2022-01-08 01:29:10', '2022-01-10 01:29:10');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,17, 6, '11123', 'I', '2022-01-28 14:21:44', '2022-01-30 14:21:44');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,14, 6, '11124', 'I', '2022-01-26 07:11:42', '2022-01-28 07:11:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,17, 6, '11125', 'I', '2022-01-22 20:29:56', '2022-01-24 20:29:56');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,14, 6, '11126', 'I', '2022-01-18 19:34:10', '2022-01-20 19:34:10');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11127', 'I', '2022-02-11 13:33:14', '2022-02-13 13:33:14');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11128', 'I', '2022-02-09 09:29:47', '2022-02-11 09:29:47');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,3, 3, '11129', 'I', '2022-02-03 15:27:27', '2022-02-05 15:27:27');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,12, 3, '11130', 'I', '2022-01-31 09:07:37', '2022-02-02 09:07:37');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11131', 'I', '2022-02-28 10:55:35', '2022-03-02 10:55:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,4, 4, '11132', 'I', '2022-02-12 01:36:46', '2022-02-14 01:36:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,11, 4, '11133', 'I', '2022-02-20 20:06:49', '2022-02-22 20:06:49');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,4, 4, '11134', 'I', '2022-02-20 03:44:55', '2022-02-22 03:44:55');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,15, 5, '11135', 'I', '2022-02-26 19:33:42', '2022-02-28 19:33:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11136', 'I', '2022-02-23 22:09:46', '2022-02-25 22:09:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,15, 5, '11137', 'I', '2022-01-31 16:02:47', '2022-02-02 16:02:47');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,15, 5, '11138', 'I', '2022-02-16 05:36:20', '2022-02-18 05:36:20');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,17, 6, '11139', 'I', '2022-02-01 10:57:17', '2022-02-03 10:57:17');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,17, 6, '11140', 'I', '2022-02-11 17:49:20', '2022-02-13 17:49:20');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,13, 6, '11141', 'I', '2022-02-17 06:45:53', '2022-02-19 06:45:53');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,14, 6, '11142', 'I', '2022-02-22 05:51:42', '2022-02-24 05:51:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,3, 3, '11143', 'I', '2022-03-12 06:47:07', '2022-03-14 06:47:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11144', 'I', '2022-03-17 16:34:37', '2022-03-19 16:34:37');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11145', 'I', '2022-03-30 05:49:36', '2022-04-01 05:49:36');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11146', 'I', '2022-03-24 11:11:28', '2022-03-26 11:11:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,11, 4, '11147', 'I', '2022-03-31 23:48:37', '2022-04-02 23:48:37');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,11, 4, '11148', 'I', '2022-03-30 13:23:39', '2022-04-01 13:23:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,11, 4, '11149', 'I', '2022-03-04 21:34:31', '2022-03-06 21:34:31');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,11, 4, '11150', 'I', '2022-03-26 19:30:45', '2022-03-28 19:30:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,15, 5, '11151', 'I', '2022-03-14 02:23:25', '2022-03-16 02:23:25');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,15, 5, '11152', 'I', '2022-03-14 01:17:49', '2022-03-16 01:17:49');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11153', 'I', '2022-03-17 11:59:49', '2022-03-19 11:59:49');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,15, 5, '11154', 'I', '2022-03-05 21:56:34', '2022-03-07 21:56:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,17, 6, '11155', 'I', '2022-03-02 02:52:39', '2022-03-04 02:52:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,17, 6, '11156', 'I', '2022-03-29 18:32:35', '2022-03-31 18:32:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,17, 6, '11157', 'I', '2022-03-08 13:35:41', '2022-03-10 13:35:41');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,14, 6, '11158', 'I', '2022-03-07 01:03:26', '2022-03-09 01:03:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11159', 'I', '2022-04-18 19:10:43', '2022-04-20 19:10:43');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11160', 'I', '2022-04-26 16:32:58', '2022-04-28 16:32:58');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11161', 'I', '2022-04-21 00:19:56', '2022-04-23 00:19:56');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11162', 'I', '2022-04-23 09:16:39', '2022-04-25 09:16:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11163', 'I', '2022-04-15 21:00:39', '2022-04-17 21:00:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,11, 4, '11164', 'I', '2022-04-10 07:27:46', '2022-04-12 07:27:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,4, 4, '11165', 'I', '2022-04-28 14:12:25', '2022-04-30 14:12:25');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,11, 4, '11166', 'I', '2022-04-25 22:26:59', '2022-04-27 22:26:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11167', 'I', '2022-04-24 15:29:27', '2022-04-26 15:29:27');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,15, 5, '11168', 'I', '2022-04-27 07:10:45', '2022-04-29 07:10:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11169', 'I', '2022-04-22 04:39:58', '2022-04-24 04:39:58');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,15, 5, '11170', 'I', '2022-04-02 08:15:48', '2022-04-04 08:15:48');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,17, 6, '11171', 'I', '2022-04-20 08:59:38', '2022-04-22 08:59:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,17, 6, '11172', 'I', '2022-04-16 03:21:32', '2022-04-18 03:21:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,13, 6, '11173', 'I', '2022-04-11 23:10:08', '2022-04-13 23:10:08');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,17, 6, '11174', 'I', '2022-04-29 15:58:45', '2022-05-01 15:58:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11175', 'I', '2022-05-06 03:09:07', '2022-05-08 03:09:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,12, 3, '11176', 'I', '2022-05-25 09:36:01', '2022-05-27 09:36:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11177', 'I', '2022-05-07 19:36:06', '2022-05-09 19:36:06');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11178', 'I', '2022-05-13 11:44:00', '2022-05-15 11:44:00');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,4, 4, '11179', 'I', '2022-05-01 14:28:46', '2022-05-03 14:28:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,11, 4, '11180', 'I', '2022-05-24 07:34:47', '2022-05-26 07:34:47');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11181', 'I', '2022-05-05 14:39:39', '2022-05-07 14:39:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,11, 4, '11182', 'I', '2022-05-07 20:58:05', '2022-05-09 20:58:05');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,10, 5, '11183', 'I', '2022-05-06 04:03:40', '2022-05-08 04:03:40');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11184', 'I', '2022-05-08 03:52:47', '2022-05-10 03:52:47');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '11185', 'I', '2022-05-23 00:30:08', '2022-05-25 00:30:08');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,15, 5, '11186', 'I', '2022-05-30 01:14:04', '2022-06-01 01:14:04');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,17, 6, '11187', 'I', '2022-05-20 17:01:40', '2022-05-22 17:01:40');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,13, 6, '11188', 'I', '2022-05-10 08:26:55', '2022-05-12 08:26:55');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,13, 6, '11189', 'I', '2022-05-16 19:53:24', '2022-05-18 19:53:24');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,14, 6, '11190', 'I', '2022-05-02 09:19:26', '2022-05-04 09:19:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,12, 3, '11191', 'I', '2022-06-14 08:54:39', '2022-06-16 08:54:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11192', 'I', '2022-06-03 21:49:33', '2022-06-05 21:49:33');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11193', 'I', '2022-06-09 15:12:48', '2022-06-11 15:12:48');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11194', 'I', '2022-06-04 10:14:49', '2022-06-06 10:14:49');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,11, 4, '11195', 'I', '2022-06-26 16:42:19', '2022-06-28 16:42:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,11, 4, '11196', 'I', '2022-06-01 14:53:39', '2022-06-03 14:53:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,11, 4, '11197', 'I', '2022-06-28 21:27:40', '2022-06-30 21:27:40');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,4, 4, '11198', 'I', '2022-06-23 18:08:55', '2022-06-25 18:08:55');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11199', 'I', '2022-05-31 10:33:05', '2022-06-02 10:33:05');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '11200', 'I', '2022-06-19 06:43:05', '2022-06-21 06:43:05');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11201', 'I', '2022-06-11 17:41:02', '2022-06-13 17:41:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11202', 'I', '2022-06-26 10:34:05', '2022-06-28 10:34:05');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,14, 6, '11203', 'I', '2022-06-22 14:15:35', '2022-06-24 14:15:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,14, 6, '11204', 'I', '2022-06-26 10:34:54', '2022-06-28 10:34:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,14, 6, '11205', 'I', '2022-06-09 03:10:30', '2022-06-11 03:10:30');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,17, 6, '11206', 'I', '2022-06-02 23:22:38', '2022-06-04 23:22:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11207', 'I', '2022-07-08 20:17:03', '2022-07-10 20:17:03');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,3, 3, '11208', 'I', '2022-07-14 17:27:00', '2022-07-16 17:27:00');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11209', 'I', '2022-07-24 09:23:12', '2022-07-26 09:23:12');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11210', 'I', '2022-07-05 14:25:23', '2022-07-07 14:25:23');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,4, 4, '11211', 'I', '2022-07-28 15:57:08', '2022-07-30 15:57:08');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,4, 4, '11212', 'I', '2022-07-11 02:27:09', '2022-07-13 02:27:09');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,11, 4, '11213', 'I', '2022-07-07 16:51:20', '2022-07-09 16:51:20');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,11, 4, '11214', 'I', '2022-07-29 13:07:15', '2022-07-31 13:07:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,15, 5, '11215', 'I', '2022-07-28 23:40:39', '2022-07-30 23:40:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11216', 'I', '2022-07-29 07:58:38', '2022-07-31 07:58:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,10, 5, '11217', 'I', '2022-07-17 02:59:16', '2022-07-19 02:59:16');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,15, 5, '11218', 'I', '2022-07-28 09:46:54', '2022-07-30 09:46:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,14, 6, '11219', 'I', '2022-07-11 05:31:43', '2022-07-13 05:31:43');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,13, 6, '11220', 'I', '2022-07-01 13:06:25', '2022-07-03 13:06:25');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,14, 6, '11221', 'I', '2022-07-08 01:01:51', '2022-07-10 01:01:51');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,17, 6, '11222', 'I', '2022-07-07 05:17:35', '2022-07-09 05:17:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11223', 'I', '2022-08-23 23:11:34', '2022-08-25 23:11:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11224', 'I', '2022-08-09 22:15:52', '2022-08-11 22:15:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,3, 3, '11225', 'I', '2022-08-22 04:28:32', '2022-08-24 04:28:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,12, 3, '11226', 'I', '2022-08-21 00:47:21', '2022-08-23 00:47:21');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,11, 4, '11227', 'I', '2022-08-03 08:48:54', '2022-08-05 08:48:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11228', 'I', '2022-08-07 16:36:57', '2022-08-09 16:36:57');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11229', 'I', '2022-08-10 12:14:25', '2022-08-12 12:14:25');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,4, 4, '11230', 'I', '2022-08-20 18:48:13', '2022-08-22 18:48:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11231', 'I', '2022-08-23 03:40:57', '2022-08-25 03:40:57');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,15, 5, '11232', 'I', '2022-08-01 01:56:27', '2022-08-03 01:56:27');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11233', 'I', '2022-08-24 03:24:27', '2022-08-26 03:24:27');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '11234', 'I', '2022-08-25 09:19:13', '2022-08-27 09:19:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,17, 6, '11235', 'I', '2022-08-16 23:38:56', '2022-08-18 23:38:56');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,14, 6, '11236', 'I', '2022-08-21 18:31:38', '2022-08-23 18:31:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,14, 6, '11237', 'I', '2022-08-26 13:59:02', '2022-08-28 13:59:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,13, 6, '11238', 'I', '2022-08-23 23:42:58', '2022-08-25 23:42:58');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11239', 'I', '2022-09-03 21:16:08', '2022-09-05 21:16:08');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11240', 'I', '2022-09-19 09:49:26', '2022-09-21 09:49:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11241', 'I', '2022-09-24 11:46:18', '2022-09-26 11:46:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11242', 'I', '2022-09-27 07:19:45', '2022-09-29 07:19:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,11, 4, '11243', 'I', '2022-09-17 23:55:39', '2022-09-19 23:55:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,4, 4, '11244', 'I', '2022-09-07 03:50:50', '2022-09-09 03:50:50');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,4, 4, '11245', 'I', '2022-09-02 17:36:08', '2022-09-04 17:36:08');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,4, 4, '11246', 'I', '2022-09-16 09:44:46', '2022-09-18 09:44:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,15, 5, '11247', 'I', '2022-09-01 07:19:18', '2022-09-03 07:19:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11248', 'I', '2022-09-01 14:27:22', '2022-09-03 14:27:22');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,15, 5, '11249', 'I', '2022-09-16 19:18:10', '2022-09-18 19:18:10');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11250', 'I', '2022-09-27 03:34:02', '2022-09-29 03:34:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,17, 6, '11251', 'I', '2022-09-21 16:08:27', '2022-09-23 16:08:27');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,14, 6, '11252', 'I', '2022-09-22 07:25:57', '2022-09-24 07:25:57');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,14, 6, '11253', 'I', '2022-09-26 22:02:27', '2022-09-28 22:02:27');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,17, 6, '11254', 'I', '2022-09-25 11:42:46', '2022-09-27 11:42:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11255', 'I', '2022-10-25 00:28:33', '2022-10-27 00:28:33');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,12, 3, '11256', 'I', '2022-09-30 22:39:49', '2022-10-02 22:39:49');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11257', 'I', '2022-10-24 10:27:28', '2022-10-26 10:27:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11258', 'I', '2022-10-23 14:07:54', '2022-10-25 14:07:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11259', 'I', '2022-10-11 22:39:00', '2022-10-13 22:39:00');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11260', 'I', '2022-10-10 15:04:09', '2022-10-12 15:04:09');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,11, 4, '11261', 'I', '2022-10-20 14:08:20', '2022-10-22 14:08:20');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,11, 4, '11262', 'I', '2022-10-08 05:57:28', '2022-10-10 05:57:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '11263', 'I', '2022-10-11 10:44:58', '2022-10-13 10:44:58');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,15, 5, '11264', 'I', '2022-10-19 04:40:04', '2022-10-21 04:40:04');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,10, 5, '11265', 'I', '2022-10-02 10:47:37', '2022-10-04 10:47:37');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,15, 5, '11266', 'I', '2022-10-14 02:48:15', '2022-10-16 02:48:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,14, 6, '11267', 'I', '2022-10-26 15:42:40', '2022-10-28 15:42:40');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,17, 6, '11268', 'I', '2022-10-18 20:47:19', '2022-10-20 20:47:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,14, 6, '11269', 'I', '2022-10-25 12:24:43', '2022-10-27 12:24:43');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,14, 6, '11270', 'I', '2022-10-18 07:31:00', '2022-10-20 07:31:00');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11271', 'I', '2022-11-21 14:23:31', '2022-11-23 14:23:31');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11272', 'I', '2022-11-15 06:10:19', '2022-11-17 06:10:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,12, 3, '11273', 'I', '2022-10-30 15:04:10', '2022-11-01 15:04:10');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,12, 3, '11274', 'I', '2022-11-05 00:00:19', '2022-11-07 00:00:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,4, 4, '11275', 'I', '2022-11-18 09:25:35', '2022-11-20 09:25:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,4, 4, '11276', 'I', '2022-11-19 23:15:15', '2022-11-21 23:15:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,4, 4, '11277', 'I', '2022-11-25 09:00:51', '2022-11-27 09:00:51');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,4, 4, '11278', 'I', '2022-11-21 06:53:07', '2022-11-23 06:53:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,15, 5, '11279', 'I', '2022-11-16 01:01:59', '2022-11-18 01:01:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '11280', 'I', '2022-11-24 02:25:32', '2022-11-26 02:25:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,15, 5, '11281', 'I', '2022-11-18 14:22:58', '2022-11-20 14:22:58');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11282', 'I', '2022-11-02 22:10:36', '2022-11-04 22:10:36');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,14, 6, '11283', 'I', '2022-11-18 18:08:59', '2022-11-20 18:08:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,17, 6, '11284', 'I', '2022-10-31 21:55:15', '2022-11-02 21:55:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,17, 6, '11285', 'I', '2022-11-18 10:42:48', '2022-11-20 10:42:48');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,17, 6, '11286', 'I', '2022-10-28 09:59:42', '2022-10-30 09:59:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,3, 3, '11287', 'I', '2022-12-24 23:17:44', '2022-12-26 23:17:44');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11288', 'I', '2022-12-22 08:51:33', '2022-12-24 08:51:33');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,12, 3, '11289', 'I', '2022-12-15 12:28:48', '2022-12-17 12:28:48');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11290', 'I', '2022-12-04 12:02:11', '2022-12-06 12:02:11');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,4, 4, '11291', 'I', '2022-12-19 21:09:34', '2022-12-21 21:09:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,11, 4, '11292', 'I', '2022-12-12 01:16:43', '2022-12-14 01:16:43');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,11, 4, '11293', 'I', '2022-12-20 09:58:31', '2022-12-22 09:58:31');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,4, 4, '11294', 'I', '2022-12-13 22:48:56', '2022-12-15 22:48:56');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11295', 'I', '2022-12-24 13:33:26', '2022-12-26 13:33:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,10, 5, '11296', 'I', '2022-12-01 18:19:22', '2022-12-03 18:19:22');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,15, 5, '11297', 'I', '2022-12-23 14:01:28', '2022-12-25 14:01:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,10, 5, '11298', 'I', '2022-12-20 08:53:10', '2022-12-22 08:53:10');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,14, 6, '11299', 'I', '2022-11-27 09:49:52', '2022-11-29 09:49:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,14, 6, '11300', 'I', '2022-12-20 23:44:42', '2022-12-22 23:44:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,17, 6, '11301', 'I', '2022-12-17 02:51:38', '2022-12-19 02:51:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,13, 6, '11302', 'I', '2022-12-10 17:10:13', '2022-12-12 17:10:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,12, 3, '11303', 'I', '2023-01-07 10:16:53', '2023-01-09 10:16:53');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,12, 3, '11304', 'I', '2023-01-13 12:38:51', '2023-01-15 12:38:51');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,12, 3, '11305', 'I', '2023-01-03 18:25:11', '2023-01-05 18:25:11');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11306', 'I', '2023-01-02 09:40:18', '2023-01-04 09:40:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,4, 4, '11307', 'I', '2023-01-09 18:30:08', '2023-01-11 18:30:08');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11308', 'I', '2023-01-10 14:01:15', '2023-01-12 14:01:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,11, 4, '11309', 'I', '2022-12-30 12:54:46', '2023-01-01 12:54:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,4, 4, '11310', 'I', '2022-12-27 19:34:19', '2022-12-29 19:34:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11311', 'I', '2023-01-16 03:21:54', '2023-01-18 03:21:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,15, 5, '11312', 'I', '2023-01-24 00:10:19', '2023-01-26 00:10:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,15, 5, '11313', 'I', '2023-01-03 22:07:13', '2023-01-05 22:07:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11314', 'I', '2023-01-14 01:10:11', '2023-01-16 01:10:11');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,17, 6, '11315', 'I', '2023-01-25 07:52:18', '2023-01-27 07:52:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,17, 6, '11316', 'I', '2023-01-22 10:11:33', '2023-01-24 10:11:33');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,17, 6, '11317', 'I', '2022-12-31 11:07:16', '2023-01-02 11:07:16');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,13, 6, '11318', 'I', '2023-01-17 21:31:23', '2023-01-19 21:31:23');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11319', 'I', '2023-01-30 21:16:15', '2023-02-01 21:16:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11320', 'I', '2023-02-14 06:23:39', '2023-02-16 06:23:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11321', 'I', '2023-02-03 22:38:29', '2023-02-05 22:38:29');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,3, 3, '11322', 'I', '2023-02-11 15:08:44', '2023-02-13 15:08:44');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,11, 4, '11323', 'I', '2023-02-13 09:51:17', '2023-02-15 09:51:17');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11324', 'I', '2023-02-15 12:14:56', '2023-02-17 12:14:56');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,4, 4, '11325', 'I', '2023-02-21 18:26:03', '2023-02-23 18:26:03');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,4, 4, '11326', 'I', '2023-02-17 07:02:51', '2023-02-19 07:02:51');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,15, 5, '11327', 'I', '2023-02-11 23:05:52', '2023-02-13 23:05:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,15, 5, '11328', 'I', '2023-02-06 13:09:33', '2023-02-08 13:09:33');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,15, 5, '11329', 'I', '2023-02-08 11:11:18', '2023-02-10 11:11:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,10, 5, '11330', 'I', '2023-02-06 23:27:45', '2023-02-08 23:27:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,17, 6, '11331', 'I', '2023-02-08 18:15:03', '2023-02-10 18:15:03');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,14, 6, '11332', 'I', '2023-01-27 22:19:00', '2023-01-29 22:19:00');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,13, 6, '11333', 'I', '2023-02-18 03:38:23', '2023-02-20 03:38:23');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,13, 6, '11334', 'I', '2023-02-02 20:17:33', '2023-02-04 20:17:33');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11335', 'I', '2023-02-26 23:37:54', '2023-02-28 23:37:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11336', 'I', '2023-03-16 17:17:35', '2023-03-18 17:17:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11337', 'I', '2023-03-14 23:23:50', '2023-03-16 23:23:50');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11338', 'I', '2023-03-06 05:59:25', '2023-03-08 05:59:25');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,11, 4, '11339', 'I', '2023-03-23 22:49:42', '2023-03-25 22:49:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11340', 'I', '2023-03-23 22:36:29', '2023-03-25 22:36:29');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11341', 'I', '2023-03-06 11:03:45', '2023-03-08 11:03:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,11, 4, '11342', 'I', '2023-03-01 16:55:59', '2023-03-03 16:55:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '11343', 'I', '2023-03-14 05:52:44', '2023-03-16 05:52:44');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '11344', 'I', '2023-03-10 19:17:56', '2023-03-12 19:17:56');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,15, 5, '11345', 'I', '2023-02-25 14:38:52', '2023-02-27 14:38:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,15, 5, '11346', 'I', '2023-02-26 18:39:25', '2023-02-28 18:39:25');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,14, 6, '11347', 'I', '2023-03-09 17:09:19', '2023-03-11 17:09:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,13, 6, '11348', 'I', '2023-03-23 07:55:22', '2023-03-25 07:55:22');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,13, 6, '11349', 'I', '2023-03-04 23:08:01', '2023-03-06 23:08:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,13, 6, '11350', 'I', '2023-02-26 20:40:58', '2023-02-28 20:40:58');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11351', 'I', '2023-04-19 21:09:21', '2023-04-21 21:09:21');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11352', 'I', '2023-04-05 01:04:31', '2023-04-07 01:04:31');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11353', 'I', '2023-03-29 10:48:32', '2023-03-31 10:48:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11354', 'I', '2023-04-15 20:24:59', '2023-04-17 20:24:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,4, 4, '11355', 'I', '2023-04-20 16:39:17', '2023-04-22 16:39:17');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11356', 'I', '2023-04-13 23:04:04', '2023-04-15 23:04:04');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,4, 4, '11357', 'I', '2023-04-16 06:16:58', '2023-04-18 06:16:58');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,11, 4, '11358', 'I', '2023-04-06 18:37:38', '2023-04-08 18:37:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11359', 'I', '2023-03-31 00:10:44', '2023-04-02 00:10:44');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11360', 'I', '2023-04-23 05:40:19', '2023-04-25 05:40:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '11361', 'I', '2023-04-11 01:56:29', '2023-04-13 01:56:29');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,15, 5, '11362', 'I', '2023-03-28 12:45:02', '2023-03-30 12:45:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,13, 6, '11363', 'I', '2023-04-24 07:45:49', '2023-04-26 07:45:49');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,14, 6, '11364', 'I', '2023-04-20 19:34:15', '2023-04-22 19:34:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,14, 6, '11365', 'I', '2023-04-02 02:58:34', '2023-04-04 02:58:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,14, 6, '11366', 'I', '2023-04-14 17:23:04', '2023-04-16 17:23:04');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,12, 3, '11367', 'I', '2023-05-15 15:02:54', '2023-05-17 15:02:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11368', 'I', '2023-05-20 03:10:04', '2023-05-22 03:10:04');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,3, 3, '11369', 'I', '2023-05-03 02:15:51', '2023-05-05 02:15:51');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,12, 3, '11370', 'I', '2023-05-24 06:11:44', '2023-05-26 06:11:44');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,11, 4, '11371', 'I', '2023-05-18 16:46:46', '2023-05-20 16:46:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,11, 4, '11372', 'I', '2023-05-06 07:31:40', '2023-05-08 07:31:40');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11373', 'I', '2023-04-28 03:17:52', '2023-04-30 03:17:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11374', 'I', '2023-05-12 04:08:32', '2023-05-14 04:08:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11375', 'I', '2023-05-07 11:12:33', '2023-05-09 11:12:33');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '11376', 'I', '2023-05-24 09:44:49', '2023-05-26 09:44:49');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11377', 'I', '2023-04-26 12:31:33', '2023-04-28 12:31:33');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,15, 5, '11378', 'I', '2023-04-26 03:17:59', '2023-04-28 03:17:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,13, 6, '11379', 'I', '2023-05-04 13:42:35', '2023-05-06 13:42:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,13, 6, '11380', 'I', '2023-04-27 10:14:42', '2023-04-29 10:14:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,14, 6, '11381', 'I', '2023-04-27 03:23:40', '2023-04-29 03:23:40');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,17, 6, '11382', 'I', '2023-05-14 03:35:36', '2023-05-16 03:35:36');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11383', 'I', '2023-06-10 16:27:37', '2023-06-12 16:27:37');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,12, 3, '11384', 'I', '2023-06-04 02:54:01', '2023-06-06 02:54:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,12, 3, '11385', 'I', '2023-06-11 22:58:49', '2023-06-13 22:58:49');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11386', 'I', '2023-06-14 05:33:56', '2023-06-16 05:33:56');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11387', 'I', '2023-05-28 13:53:57', '2023-05-30 13:53:57');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,4, 4, '11388', 'I', '2023-06-23 20:42:05', '2023-06-25 20:42:05');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,11, 4, '11389', 'I', '2023-06-23 03:43:41', '2023-06-25 03:43:41');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,11, 4, '11390', 'I', '2023-06-08 22:59:46', '2023-06-10 22:59:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,15, 5, '11391', 'I', '2023-05-31 22:58:46', '2023-06-02 22:58:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,10, 5, '11392', 'I', '2023-06-16 01:19:52', '2023-06-18 01:19:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,15, 5, '11393', 'I', '2023-05-26 16:45:18', '2023-05-28 16:45:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11394', 'I', '2023-05-31 12:49:14', '2023-06-02 12:49:14');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,17, 6, '11395', 'I', '2023-06-05 08:57:13', '2023-06-07 08:57:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,17, 6, '11396', 'I', '2023-06-16 00:21:54', '2023-06-18 00:21:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,17, 6, '11397', 'I', '2023-06-13 16:44:28', '2023-06-15 16:44:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,17, 6, '11398', 'I', '2023-06-03 02:02:50', '2023-06-05 02:02:50');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11399', 'I', '2023-07-20 02:46:42', '2023-07-22 02:46:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,3, 3, '11400', 'I', '2023-07-16 22:11:17', '2023-07-18 22:11:17');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,3, 3, '11401', 'I', '2023-07-02 14:23:10', '2023-07-04 14:23:10');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,3, 3, '11402', 'I', '2023-07-02 03:23:44', '2023-07-04 03:23:44');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,11, 4, '11403', 'I', '2023-07-22 21:57:29', '2023-07-24 21:57:29');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,11, 4, '11404', 'I', '2023-07-04 17:13:28', '2023-07-06 17:13:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,11, 4, '11405', 'I', '2023-07-02 07:46:37', '2023-07-04 07:46:37');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,11, 4, '11406', 'I', '2023-07-11 06:56:26', '2023-07-13 06:56:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,15, 5, '11407', 'I', '2023-07-07 11:07:13', '2023-07-09 11:07:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '11408', 'I', '2023-07-07 04:31:20', '2023-07-09 04:31:20');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,15, 5, '11409', 'I', '2023-06-30 13:16:37', '2023-07-02 13:16:37');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,10, 5, '11410', 'I', '2023-07-03 15:53:12', '2023-07-05 15:53:12');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,17, 6, '11411', 'I', '2023-07-20 08:06:46', '2023-07-22 08:06:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,17, 6, '11412', 'I', '2023-07-07 11:23:48', '2023-07-09 11:23:48');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,13, 6, '11413', 'I', '2023-07-13 21:19:21', '2023-07-15 21:19:21');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,17, 6, '11414', 'I', '2023-07-20 04:58:11', '2023-07-22 04:58:11');



INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (1, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (2, 2, 3.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (3, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (4, 4, 3.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (5, 8, 4.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (6, 1, 4.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (7, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (8, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (9, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (10, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (11, 5, 3.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (12, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (13, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (14, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (15, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (16, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (17, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (18, 2, 4.0, 4.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (19, 7, 3.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (20, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (21, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (22, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (23, 7, 2.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (24, 4, 4.0, 4.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (25, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (26, 4, 4.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (27, 1, 4.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (28, 1, 4.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (29, 7, 2.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (30, 8, 4.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (31, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (32, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (33, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (34, 4, 2.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (35, 4, 4.0, 4.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (36, 8, 4.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (37, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (38, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (39, 1, 4.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (40, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (41, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (42, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (43, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (44, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (45, 1, 4.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (46, 4, 4.0, 4.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (47, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (48, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (49, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (50, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (51, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (52, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (53, 5, 4.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (54, 5, 4.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (55, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (56, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (57, 7, 2.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (58, 7, 4.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (59, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (60, 2, 3.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (61, 2, 4.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (62, 5, 2.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (63, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (64, 2, 4.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (65, 5, 3.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (66, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (67, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (68, 7, 3.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (69, 5, 3.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (70, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (71, 7, 3.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (72, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (73, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (74, 7, 3.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (75, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (76, 5, 3.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (77, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (78, 2, 3.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (79, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (80, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (81, 2, 4.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (82, 4, 4.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (83, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (84, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (85, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (86, 8, 4.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (87, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (88, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (89, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (90, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (91, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (92, 2, 2.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (93, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (94, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (95, 4, 4.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (96, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (97, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (98, 2, 3.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (99, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (100, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (101, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (102, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (103, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (104, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (105, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (106, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (107, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (108, 7, 3.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (109, 1, 3.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (110, 2, 2.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (111, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (112, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (113, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (114, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (115, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (116, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (117, 8, 2.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (118, 5, 3.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (119, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (120, 8, 4.0, 4.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (121, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (122, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (123, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (124, 2, 4.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (125, 4, 4.0, 4.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (126, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (127, 7, 3.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (128, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (129, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (130, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (131, 1, 4.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (132, 2, 3.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (133, 8, 3.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (134, 1, 3.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (135, 1, 4.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (136, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (137, 2, 4.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (138, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (139, 2, 4.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (140, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (141, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (142, 7, 4.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (143, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (144, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (145, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (146, 4, 4.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (147, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (148, 5, 4.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (149, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (150, 7, 4.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (151, 7, 4.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (152, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (153, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (154, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (155, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (156, 4, 4.0, 4.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (157, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (158, 5, 4.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (159, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (160, 8, 4.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (161, 7, 4.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (162, 8, 4.0, 4.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (163, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (164, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (165, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (166, 5, 4.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (167, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (168, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (169, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (170, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (171, 1, 4.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (172, 4, 2.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (173, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (174, 5, 4.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (175, 8, 4.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (176, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (177, 2, 4.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (178, 8, 4.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (179, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (180, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (181, 2, 2.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (182, 4, 2.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (183, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (184, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (185, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (186, 8, 4.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (187, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (188, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (189, 2, 4.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (190, 1, 4.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (191, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (192, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (193, 8, 4.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (194, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (195, 4, 2.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (196, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (197, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (198, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (199, 8, 4.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (200, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (201, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (202, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (203, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (204, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (205, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (206, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (207, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (208, 4, 3.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (209, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (210, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (211, 2, 3.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (212, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (213, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (214, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (215, 7, 4.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (216, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (217, 7, 3.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (218, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (219, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (220, 7, 2.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (221, 7, 4.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (222, 4, 3.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (223, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (224, 5, 3.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (225, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (226, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (227, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (228, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (229, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (230, 4, 2.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (231, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (232, 5, 3.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (233, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (234, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (235, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (236, 2, 4.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (237, 1, 3.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (238, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (239, 1, 4.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (240, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (241, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (242, 8, 4.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (243, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (244, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (245, 7, 4.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (246, 5, 3.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (247, 2, 4.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (248, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (249, 8, 2.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (250, 5, 3.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (251, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (252, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (253, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (254, 2, 4.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (255, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (256, 7, 4.0, 4.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (257, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (258, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (259, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (260, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (261, 2, 3.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (262, 4, 4.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (263, 4, 4.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (264, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (265, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (266, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (267, 4, 2.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (268, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (269, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (270, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (271, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (272, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (273, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (274, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (275, 8, 2.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (276, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (277, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (278, 1, 3.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (279, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (280, 7, 3.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (281, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (282, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (283, 2, 4.0, 4.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (284, 8, 4.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (285, 7, 4.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (286, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (287, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (288, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (289, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (290, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (291, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (292, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (293, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (294, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (295, 1, 4.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (296, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (297, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (298, 7, 4.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (299, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (300, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (301, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (302, 5, 4.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (303, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (304, 2, 3.0, 3.0, 'M1191301')


INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (1, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (2, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (3, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (4, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (5, 7, 3.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (6, 4, 4.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (7, 8, 3.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (8, 5, 2.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (9, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (10, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (11, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (12, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (13, 8, 3.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (14, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (15, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (16, 8, 3.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (17, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (18, 2, 2.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (19, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (20, 2, 2.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (21, 2, 2.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (22, 7, 4.0, 4.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (23, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (24, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (25, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (26, 4, 4.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (27, 7, 4.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (28, 8, 4.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (29, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (30, 4, 4.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (31, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (32, 2, 2.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (33, 2, 4.0, 4.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (34, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (35, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (36, 2, 4.0, 4.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (37, 8, 4.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (38, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (39, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (40, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (41, 5, 3.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (42, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (43, 5, 3.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (44, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (45, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (46, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (47, 8, 4.0, 4.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (48, 1, 3.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (49, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (50, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (51, 5, 4.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (52, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (53, 4, 4.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (54, 8, 4.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (55, 5, 4.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (56, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (57, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (58, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (59, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (60, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (61, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (62, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (63, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (64, 4, 4.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (65, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (66, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (67, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (68, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (69, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (70, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (71, 5, 3.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (72, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (73, 8, 4.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (74, 2, 2.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (75, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (76, 2, 4.0, 4.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (77, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (78, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (79, 1, 4.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (80, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (81, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (82, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (83, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (84, 5, 3.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (85, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (86, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (87, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (88, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (89, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (90, 4, 3.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (91, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (92, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (93, 4, 4.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (94, 5, 3.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (95, 4, 3.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (96, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (97, 4, 2.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (98, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (99, 4, 4.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (100, 5, 4.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (101, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (102, 2, 3.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (103, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (104, 4, 4.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (105, 1, 3.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (106, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (107, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (108, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (109, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (110, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (111, 2, 4.0, 4.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (112, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (113, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (114, 1, 3.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (115, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (116, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (117, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (118, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (119, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (120, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (121, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (122, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (123, 5, 4.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (124, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (125, 2, 2.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (126, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (127, 4, 4.0, 4.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (128, 5, 2.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (129, 5, 4.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (130, 1, 4.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (131, 8, 3.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (132, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (133, 1, 4.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (134, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (135, 7, 3.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (136, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (137, 1, 4.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (138, 2, 3.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (139, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (140, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (141, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (142, 5, 4.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (143, 7, 4.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (144, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (145, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (146, 7, 4.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (147, 4, 4.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (148, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (149, 4, 4.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (150, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (151, 1, 4.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (152, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (153, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (154, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (155, 5, 4.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (156, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (157, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (158, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (159, 2, 3.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (160, 1, 4.0, 4.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (161, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (162, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (163, 2, 3.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (164, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (165, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (166, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (167, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (168, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (169, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (170, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (171, 2, 2.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (172, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (173, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (174, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (175, 5, 2.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (176, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (177, 1, 4.0, 4.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (178, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (179, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (180, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (181, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (182, 8, 4.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (183, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (184, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (185, 7, 2.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (186, 8, 4.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (187, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (188, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (189, 4, 3.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (190, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (191, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (192, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (193, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (194, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (195, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (196, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (197, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (198, 2, 3.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (199, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (200, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (201, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (202, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (203, 8, 3.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (204, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (205, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (206, 7, 4.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (207, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (208, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (209, 4, 4.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (210, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (211, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (212, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (213, 5, 4.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (214, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (215, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (216, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (217, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (218, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (219, 4, 3.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (220, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (221, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (222, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (223, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (224, 8, 4.0, 4.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (225, 7, 3.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (226, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (227, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (228, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (229, 8, 4.0, 4.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (230, 7, 3.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (231, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (232, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (233, 1, 4.0, 4.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (234, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (235, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (236, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (237, 4, 4.0, 4.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (238, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (239, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (240, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (241, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (242, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (243, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (244, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (245, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (246, 2, 3.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (247, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (248, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (249, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (250, 2, 4.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (251, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (252, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (253, 5, 4.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (254, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (255, 7, 3.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (256, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (257, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (258, 1, 4.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (259, 8, 4.0, 4.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (260, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (261, 2, 3.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (262, 7, 4.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (263, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (264, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (265, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (266, 4, 4.0, 4.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (267, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (268, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (269, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (270, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (271, 7, 3.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (272, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (273, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (274, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (275, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (276, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (277, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (278, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (279, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (280, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (281, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (282, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (283, 8, 2.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (284, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (285, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (286, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (287, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (288, 2, 4.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (289, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (290, 4, 2.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (291, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (292, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (293, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (294, 1, 4.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (295, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (296, 5, 4.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (297, 1, 3.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (298, 5, 2.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (299, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (300, 8, 3.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (301, 5, 2.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (302, 4, 4.0, 4.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (303, 7, 4.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (304, 5, 1.0, 1.0, 'M1191304')

INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (1, 5, 2.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (2, 2, 3.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (3, 5, 3.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (4, 5, 4.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (5, 8, 3.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (6, 4, 3.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (7, 5, 4.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (8, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (9, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (10, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (11, 7, 3.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (12, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (13, 2, 3.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (14, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (15, 8, 4.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (16, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (17, 4, 2.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (18, 5, 3.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (19, 8, 4.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (20, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (21, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (22, 8, 4.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (23, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (24, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (25, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (26, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (27, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (28, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (29, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (30, 1, 4.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (31, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (32, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (33, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (34, 2, 3.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (35, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (36, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (37, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (38, 1, 4.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (39, 8, 4.0, 4.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (40, 2, 4.0, 4.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (41, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (42, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (43, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (44, 4, 2.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (45, 8, 4.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (46, 8, 4.0, 4.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (47, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (48, 4, 3.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (49, 7, 2.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (50, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (51, 7, 2.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (52, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (53, 5, 4.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (54, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (55, 1, 4.0, 4.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (56, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (57, 5, 3.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (58, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (59, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (60, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (61, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (62, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (63, 5, 4.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (64, 1, 3.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (65, 4, 3.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (66, 7, 4.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (67, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (68, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (69, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (70, 1, 4.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (71, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (72, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (73, 5, 4.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (74, 4, 3.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (75, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (76, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (77, 2, 3.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (78, 2, 3.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (79, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (80, 4, 2.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (81, 4, 3.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (82, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (83, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (84, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (85, 7, 4.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (86, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (87, 4, 3.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (88, 1, 4.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (89, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (90, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (91, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (92, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (93, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (94, 4, 2.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (95, 5, 3.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (96, 8, 4.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (97, 7, 2.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (98, 8, 3.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (99, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (100, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (101, 8, 3.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (102, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (103, 1, 4.0, 4.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (104, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (105, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (106, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (107, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (108, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (109, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (110, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (111, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (112, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (113, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (114, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (115, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (116, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (117, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (118, 2, 4.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (119, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (120, 5, 4.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (121, 8, 4.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (122, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (123, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (124, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (125, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (126, 8, 3.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (127, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (128, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (129, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (130, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (131, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (132, 4, 3.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (133, 8, 4.0, 4.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (134, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (135, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (136, 1, 4.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (137, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (138, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (139, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (140, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (141, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (142, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (143, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (144, 4, 4.0, 4.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (145, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (146, 7, 3.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (147, 5, 4.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (148, 4, 3.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (149, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (150, 8, 4.0, 4.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (151, 1, 4.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (152, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (153, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (154, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (155, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (156, 4, 3.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (157, 7, 2.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (158, 4, 2.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (159, 4, 4.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (160, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (161, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (162, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (163, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (164, 8, 2.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (165, 5, 4.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (166, 7, 4.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (167, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (168, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (169, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (170, 5, 3.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (171, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (172, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (173, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (174, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (175, 2, 4.0, 4.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (176, 1, 4.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (177, 4, 4.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (178, 7, 2.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (179, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (180, 7, 3.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (181, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (182, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (183, 1, 4.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (184, 8, 4.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (185, 8, 4.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (186, 1, 3.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (187, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (188, 5, 4.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (189, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (190, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (191, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (192, 8, 4.0, 4.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (193, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (194, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (195, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (196, 8, 2.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (197, 2, 3.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (198, 1, 3.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (199, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (200, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (201, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (202, 7, 2.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (203, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (204, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (205, 7, 2.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (206, 1, 4.0, 4.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (207, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (208, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (209, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (210, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (211, 4, 2.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (212, 2, 2.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (213, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (214, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (215, 1, 4.0, 4.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (216, 8, 2.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (217, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (218, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (219, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (220, 7, 4.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (221, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (222, 4, 4.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (223, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (224, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (225, 2, 4.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (226, 4, 3.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (227, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (228, 8, 3.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (229, 4, 4.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (230, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (231, 2, 3.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (232, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (233, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (234, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (235, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (236, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (237, 8, 3.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (238, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (239, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (240, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (241, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (242, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (243, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (244, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (245, 8, 4.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (246, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (247, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (248, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (249, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (250, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (251, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (252, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (253, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (254, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (255, 1, 4.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (256, 8, 4.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (257, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (258, 2, 4.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (259, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (260, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (261, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (262, 8, 3.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (263, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (264, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (265, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (266, 8, 2.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (267, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (268, 2, 4.0, 4.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (269, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (270, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (271, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (272, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (273, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (274, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (275, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (276, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (277, 4, 4.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (278, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (279, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (280, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (281, 2, 3.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (282, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (283, 7, 4.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (284, 5, 4.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (285, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (286, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (287, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (288, 2, 4.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (289, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (290, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (291, 4, 3.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (292, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (293, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (294, 2, 4.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (295, 4, 3.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (296, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (297, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (298, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (299, 2, 4.0, 4.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (300, 7, 4.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (301, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (302, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (303, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (304, 5, 4.0, 4.0, 'M1191304')

INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (1, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (2, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (3, 8, 2.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (4, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (5, 4, 4.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (6, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (7, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (8, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (9, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (10, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (11, 8, 2.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (12, 4, 4.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (13, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (14, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (15, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (16, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (17, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (18, 8, 4.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (19, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (20, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (21, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (22, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (23, 7, 4.0, 4.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (24, 1, 4.0, 4.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (25, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (26, 2, 4.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (27, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (28, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (29, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (30, 2, 3.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (31, 4, 4.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (32, 8, 2.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (33, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (34, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (35, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (36, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (37, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (38, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (39, 7, 4.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (40, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (41, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (42, 4, 4.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (43, 1, 4.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (44, 8, 3.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (45, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (46, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (47, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (48, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (49, 8, 4.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (50, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (51, 4, 3.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (52, 4, 2.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (53, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (54, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (55, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (56, 5, 3.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (57, 5, 3.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (58, 7, 4.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (59, 4, 3.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (60, 1, 4.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (61, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (62, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (63, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (64, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (65, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (66, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (67, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (68, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (69, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (70, 8, 2.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (71, 5, 3.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (72, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (73, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (74, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (75, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (76, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (77, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (78, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (79, 2, 4.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (80, 7, 2.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (81, 2, 3.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (82, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (83, 5, 3.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (84, 7, 4.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (85, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (86, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (87, 1, 4.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (88, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (89, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (90, 5, 3.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (91, 8, 4.0, 4.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (92, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (93, 2, 3.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (94, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (95, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (96, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (97, 7, 3.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (98, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (99, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (100, 2, 3.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (101, 1, 4.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (102, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (103, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (104, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (105, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (106, 4, 4.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (107, 1, 3.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (108, 8, 2.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (109, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (110, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (111, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (112, 7, 4.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (113, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (114, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (115, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (116, 4, 4.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (117, 5, 4.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (118, 1, 4.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (119, 2, 4.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (120, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (121, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (122, 2, 4.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (123, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (124, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (125, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (126, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (127, 1, 3.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (128, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (129, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (130, 5, 3.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (131, 5, 3.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (132, 8, 3.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (133, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (134, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (135, 1, 4.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (136, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (137, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (138, 5, 4.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (139, 2, 2.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (140, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (141, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (142, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (143, 8, 4.0, 4.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (144, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (145, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (146, 2, 2.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (147, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (148, 5, 3.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (149, 4, 2.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (150, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (151, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (152, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (153, 7, 3.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (154, 1, 3.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (155, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (156, 8, 3.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (157, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (158, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (159, 7, 3.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (160, 4, 4.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (161, 1, 4.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (162, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (163, 7, 3.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (164, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (165, 8, 4.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (166, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (167, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (168, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (169, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (170, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (171, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (172, 2, 4.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (173, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (174, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (175, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (176, 8, 3.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (177, 5, 4.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (178, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (179, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (180, 4, 4.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (181, 2, 2.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (182, 8, 3.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (183, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (184, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (185, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (186, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (187, 1, 4.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (188, 5, 3.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (189, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (190, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (191, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (192, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (193, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (194, 8, 3.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (195, 7, 4.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (196, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (197, 7, 4.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (198, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (199, 2, 3.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (200, 7, 3.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (201, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (202, 7, 4.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (203, 8, 4.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (204, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (205, 2, 4.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (206, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (207, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (208, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (209, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (210, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (211, 5, 4.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (212, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (213, 8, 2.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (214, 2, 4.0, 4.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (215, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (216, 5, 4.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (217, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (218, 2, 4.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (219, 8, 2.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (220, 7, 4.0, 4.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (221, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (222, 4, 3.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (223, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (224, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (225, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (226, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (227, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (228, 7, 2.0, 2.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (229, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (230, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (231, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (232, 5, 4.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (233, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (234, 4, 3.0, 3.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (235, 8, 4.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (236, 4, 3.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (237, 2, 3.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (238, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (239, 4, 2.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (240, 5, 4.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (241, 8, 3.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (242, 5, 2.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (243, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (244, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (245, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (246, 2, 4.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (247, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (248, 2, 3.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (249, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (250, 4, 4.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (251, 5, 4.0, 4.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (252, 8, 3.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (253, 7, 4.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (254, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (255, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (256, 1, 3.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (257, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (258, 4, 3.0, 2.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (259, 8, 4.0, 4.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (260, 7, 4.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (261, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (262, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (263, 5, 2.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (264, 5, 3.0, 3.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (265, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (266, 2, 1.0, 1.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (267, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (268, 2, 3.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (269, 4, 1.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (270, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (271, 8, 1.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (272, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (273, 2, 4.0, 4.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (274, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (275, 1, 2.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (276, 1, 4.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (277, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (278, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (279, 1, 4.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (280, 1, 2.0, 2.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (281, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (282, 2, 4.0, 3.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (283, 8, 4.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (284, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (285, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (286, 1, 3.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (287, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (288, 8, 2.0, 2.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (289, 7, 4.0, 4.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (290, 8, 2.0, 1.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (291, 5, 1.0, 1.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (292, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (293, 5, 2.0, 2.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (294, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (295, 7, 3.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (296, 7, 3.0, 3.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (297, 8, 3.0, 3.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (298, 1, 1.0, 1.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (299, 4, 4.0, 1.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (300, 2, 2.0, 2.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (301, 7, 4.0, 4.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (302, 7, 1.0, 1.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (303, 1, 4.0, 3.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (304, 4, 2.0, 2.0, 'M1191303')


INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11415', 'W', '2022-01-20 18:29:50', '2022-01-22 18:29:50');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11416', 'W', '2022-01-16 15:23:56', '2022-01-18 15:23:56');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11417', 'W', '2022-01-29 11:31:46', '2022-01-31 11:31:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11418', 'W', '2022-01-22 19:12:00', '2022-01-24 19:12:00');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11419', 'W', '2022-01-03 08:46:32', '2022-01-05 08:46:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11420', 'W', '2022-01-06 07:21:54', '2022-01-08 07:21:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11421', 'W', '2022-01-14 03:18:53', '2022-01-16 03:18:53');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11422', 'W', '2022-01-21 20:41:45', '2022-01-23 20:41:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11423', 'W', '2022-01-15 08:49:38', '2022-01-17 08:49:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11424', 'W', '2022-01-20 12:53:51', '2022-01-22 12:53:51');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11425', 'W', '2022-01-03 17:16:18', '2022-01-05 17:16:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11426', 'W', '2022-01-16 18:39:37', '2022-01-18 18:39:37');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11427', 'W', '2022-01-10 07:46:58', '2022-01-12 07:46:58');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11428', 'W', '2022-01-27 15:34:21', '2022-01-29 15:34:21');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11429', 'W', '2022-01-03 03:26:17', '2022-01-05 03:26:17');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11430', 'W', '2022-01-30 11:43:44', '2022-02-01 11:43:44');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11431', 'W', '2022-02-03 05:33:08', '2022-02-05 05:33:08');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11432', 'W', '2022-02-18 07:07:07', '2022-02-20 07:07:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11433', 'W', '2022-02-27 13:31:07', '2022-03-01 13:31:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11434', 'W', '2022-01-31 19:07:07', '2022-02-02 19:07:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11435', 'W', '2022-02-12 23:45:26', '2022-02-14 23:45:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11436', 'W', '2022-03-01 19:06:28', '2022-03-03 19:06:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11437', 'W', '2022-02-12 03:31:33', '2022-02-14 03:31:33');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11438', 'W', '2022-02-14 16:08:53', '2022-02-16 16:08:53');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11439', 'W', '2022-02-20 23:37:38', '2022-02-22 23:37:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11440', 'W', '2022-02-05 06:09:20', '2022-02-07 06:09:20');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11441', 'W', '2022-02-12 11:21:48', '2022-02-14 11:21:48');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11442', 'W', '2022-02-03 08:48:39', '2022-02-05 08:48:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11443', 'W', '2022-02-19 08:58:05', '2022-02-21 08:58:05');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11444', 'W', '2022-02-22 08:37:32', '2022-02-24 08:37:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11445', 'W', '2022-02-19 14:42:42', '2022-02-21 14:42:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11446', 'W', '2022-02-03 14:36:26', '2022-02-05 14:36:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11447', 'W', '2022-03-17 00:51:50', '2022-03-19 00:51:50');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11448', 'W', '2022-03-10 05:52:43', '2022-03-12 05:52:43');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11449', 'W', '2022-03-03 17:05:02', '2022-03-05 17:05:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11450', 'W', '2022-03-20 07:12:02', '2022-03-22 07:12:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11451', 'W', '2022-03-29 23:16:02', '2022-03-31 23:16:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11452', 'W', '2022-03-09 05:41:52', '2022-03-11 05:41:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11453', 'W', '2022-03-20 02:37:24', '2022-03-22 02:37:24');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11454', 'W', '2022-03-02 11:08:33', '2022-03-04 11:08:33');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11455', 'W', '2022-03-04 06:40:03', '2022-03-06 06:40:03');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11456', 'W', '2022-03-22 19:51:28', '2022-03-24 19:51:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11457', 'W', '2022-03-22 10:42:45', '2022-03-24 10:42:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11458', 'W', '2022-03-12 12:40:05', '2022-03-14 12:40:05');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11459', 'W', '2022-03-18 14:31:45', '2022-03-20 14:31:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11460', 'W', '2022-03-11 14:58:21', '2022-03-13 14:58:21');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11461', 'W', '2022-03-28 01:53:54', '2022-03-30 01:53:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11462', 'W', '2022-03-09 10:27:24', '2022-03-11 10:27:24');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11463', 'W', '2022-04-29 18:35:34', '2022-05-01 18:35:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11464', 'W', '2022-04-30 05:51:03', '2022-05-02 05:51:03');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11465', 'W', '2022-04-09 15:53:57', '2022-04-11 15:53:57');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11466', 'W', '2022-04-25 13:42:18', '2022-04-27 13:42:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11467', 'W', '2022-04-19 11:34:14', '2022-04-21 11:34:14');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11468', 'W', '2022-04-05 19:53:35', '2022-04-07 19:53:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11469', 'W', '2022-04-20 03:34:11', '2022-04-22 03:34:11');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11470', 'W', '2022-04-23 08:29:52', '2022-04-25 08:29:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11471', 'W', '2022-04-16 01:48:54', '2022-04-18 01:48:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11472', 'W', '2022-04-18 03:27:49', '2022-04-20 03:27:49');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11473', 'W', '2022-04-28 16:11:57', '2022-04-30 16:11:57');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11474', 'W', '2022-04-15 21:12:24', '2022-04-17 21:12:24');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11475', 'W', '2022-04-29 07:13:48', '2022-05-01 07:13:48');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11476', 'W', '2022-04-02 10:26:09', '2022-04-04 10:26:09');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11477', 'W', '2022-04-04 19:50:51', '2022-04-06 19:50:51');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11478', 'W', '2022-04-12 15:25:15', '2022-04-14 15:25:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11479', 'W', '2022-05-25 16:38:29', '2022-05-27 16:38:29');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11480', 'W', '2022-05-21 14:42:55', '2022-05-23 14:42:55');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11481', 'W', '2022-05-28 11:47:17', '2022-05-30 11:47:17');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11482', 'W', '2022-05-11 20:14:27', '2022-05-13 20:14:27');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11483', 'W', '2022-05-18 20:11:07', '2022-05-20 20:11:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11484', 'W', '2022-05-05 03:20:05', '2022-05-07 03:20:05');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11485', 'W', '2022-05-16 12:43:09', '2022-05-18 12:43:09');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11486', 'W', '2022-05-11 12:58:01', '2022-05-13 12:58:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11487', 'W', '2022-05-23 03:20:29', '2022-05-25 03:20:29');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11488', 'W', '2022-05-26 06:20:36', '2022-05-28 06:20:36');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11489', 'W', '2022-05-17 17:31:22', '2022-05-19 17:31:22');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11490', 'W', '2022-05-29 07:32:02', '2022-05-31 07:32:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11491', 'W', '2022-05-01 00:08:45', '2022-05-03 00:08:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11492', 'W', '2022-05-09 00:38:27', '2022-05-11 00:38:27');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11493', 'W', '2022-05-15 11:23:17', '2022-05-17 11:23:17');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11494', 'W', '2022-05-29 04:47:46', '2022-05-31 04:47:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11495', 'W', '2022-06-12 12:28:20', '2022-06-14 12:28:20');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11496', 'W', '2022-06-05 22:13:14', '2022-06-07 22:13:14');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11497', 'W', '2022-06-04 01:14:34', '2022-06-06 01:14:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11498', 'W', '2022-06-08 08:13:35', '2022-06-10 08:13:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11499', 'W', '2022-06-03 15:42:13', '2022-06-05 15:42:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11500', 'W', '2022-06-24 14:47:32', '2022-06-26 14:47:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11501', 'W', '2022-06-01 01:15:36', '2022-06-03 01:15:36');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11502', 'W', '2022-06-11 00:28:19', '2022-06-13 00:28:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11503', 'W', '2022-06-24 00:16:20', '2022-06-26 00:16:20');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11504', 'W', '2022-06-29 19:49:31', '2022-07-01 19:49:31');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11505', 'W', '2022-06-08 21:23:32', '2022-06-10 21:23:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11506', 'W', '2022-06-29 10:02:47', '2022-07-01 10:02:47');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11507', 'W', '2022-06-09 01:15:06', '2022-06-11 01:15:06');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11508', 'W', '2022-06-26 13:46:38', '2022-06-28 13:46:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11509', 'W', '2022-06-22 05:41:35', '2022-06-24 05:41:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11510', 'W', '2022-06-19 14:33:46', '2022-06-21 14:33:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11511', 'W', '2022-07-04 07:06:19', '2022-07-06 07:06:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11512', 'W', '2022-07-14 16:37:02', '2022-07-16 16:37:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11513', 'W', '2022-07-26 20:06:07', '2022-07-28 20:06:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11514', 'W', '2022-07-11 22:05:22', '2022-07-13 22:05:22');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11515', 'W', '2022-07-23 21:17:53', '2022-07-25 21:17:53');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11516', 'W', '2022-07-05 05:40:18', '2022-07-07 05:40:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11517', 'W', '2022-07-04 12:11:57', '2022-07-06 12:11:57');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11518', 'W', '2022-07-07 08:50:56', '2022-07-09 08:50:56');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11519', 'W', '2022-07-05 01:03:44', '2022-07-07 01:03:44');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11520', 'W', '2022-07-21 09:03:51', '2022-07-23 09:03:51');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11521', 'W', '2022-07-17 12:39:38', '2022-07-19 12:39:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11522', 'W', '2022-07-23 11:32:37', '2022-07-25 11:32:37');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11523', 'W', '2022-07-17 13:44:35', '2022-07-19 13:44:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11524', 'W', '2022-07-10 02:09:56', '2022-07-12 02:09:56');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11525', 'W', '2022-07-19 14:09:48', '2022-07-21 14:09:48');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11526', 'W', '2022-07-06 13:27:32', '2022-07-08 13:27:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11527', 'W', '2022-07-31 22:42:48', '2022-08-02 22:42:48');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11528', 'W', '2022-08-25 11:01:42', '2022-08-27 11:01:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11529', 'W', '2022-08-06 11:32:19', '2022-08-08 11:32:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11530', 'W', '2022-08-07 00:16:28', '2022-08-09 00:16:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11531', 'W', '2022-08-11 02:42:24', '2022-08-13 02:42:24');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11532', 'W', '2022-08-27 15:02:23', '2022-08-29 15:02:23');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11533', 'W', '2022-08-25 04:35:38', '2022-08-27 04:35:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11534', 'W', '2022-08-23 18:08:51', '2022-08-25 18:08:51');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11535', 'W', '2022-07-30 00:12:26', '2022-08-01 00:12:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11536', 'W', '2022-08-05 12:23:40', '2022-08-07 12:23:40');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11537', 'W', '2022-08-15 19:06:18', '2022-08-17 19:06:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11538', 'W', '2022-08-17 09:07:43', '2022-08-19 09:07:43');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11539', 'W', '2022-08-07 21:45:32', '2022-08-09 21:45:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11540', 'W', '2022-08-18 12:21:20', '2022-08-20 12:21:20');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11541', 'W', '2022-08-20 23:59:33', '2022-08-22 23:59:33');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11542', 'W', '2022-07-31 08:26:06', '2022-08-02 08:26:06');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11543', 'W', '2022-09-27 08:41:42', '2022-09-29 08:41:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11544', 'W', '2022-09-25 00:42:38', '2022-09-27 00:42:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11545', 'W', '2022-09-19 09:21:17', '2022-09-21 09:21:17');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11546', 'W', '2022-09-12 03:18:57', '2022-09-14 03:18:57');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11547', 'W', '2022-08-31 15:30:01', '2022-09-02 15:30:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11548', 'W', '2022-09-17 09:13:20', '2022-09-19 09:13:20');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11549', 'W', '2022-09-12 15:42:54', '2022-09-14 15:42:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11550', 'W', '2022-09-15 10:55:21', '2022-09-17 10:55:21');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11551', 'W', '2022-09-23 18:37:01', '2022-09-25 18:37:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11552', 'W', '2022-09-25 15:42:28', '2022-09-27 15:42:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11553', 'W', '2022-09-16 08:15:25', '2022-09-18 08:15:25');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11554', 'W', '2022-09-26 18:37:07', '2022-09-28 18:37:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11555', 'W', '2022-09-18 13:52:04', '2022-09-20 13:52:04');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11556', 'W', '2022-08-30 13:58:17', '2022-09-01 13:58:17');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11557', 'W', '2022-09-01 05:52:08', '2022-09-03 05:52:08');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11558', 'W', '2022-09-14 15:59:12', '2022-09-16 15:59:12');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11559', 'W', '2022-10-16 01:49:01', '2022-10-18 01:49:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11560', 'W', '2022-10-17 18:32:55', '2022-10-19 18:32:55');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11561', 'W', '2022-09-30 21:06:53', '2022-10-02 21:06:53');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11562', 'W', '2022-10-18 19:49:38', '2022-10-20 19:49:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11563', 'W', '2022-09-28 19:01:22', '2022-09-30 19:01:22');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11564', 'W', '2022-09-28 23:38:36', '2022-09-30 23:38:36');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11565', 'W', '2022-10-19 21:45:41', '2022-10-21 21:45:41');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11566', 'W', '2022-10-11 21:25:53', '2022-10-13 21:25:53');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11567', 'W', '2022-10-17 09:36:35', '2022-10-19 09:36:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11568', 'W', '2022-10-05 01:27:27', '2022-10-07 01:27:27');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11569', 'W', '2022-10-04 07:24:18', '2022-10-06 07:24:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11570', 'W', '2022-10-26 03:17:56', '2022-10-28 03:17:56');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11571', 'W', '2022-10-11 15:02:59', '2022-10-13 15:02:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11572', 'W', '2022-10-04 23:54:45', '2022-10-06 23:54:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11573', 'W', '2022-10-12 23:48:30', '2022-10-14 23:48:30');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11574', 'W', '2022-10-10 15:07:29', '2022-10-12 15:07:29');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11575', 'W', '2022-11-20 20:55:28', '2022-11-22 20:55:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11576', 'W', '2022-11-10 20:20:13', '2022-11-12 20:20:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11577', 'W', '2022-11-02 13:34:07', '2022-11-04 13:34:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11578', 'W', '2022-11-13 18:02:21', '2022-11-15 18:02:21');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11579', 'W', '2022-11-07 14:09:29', '2022-11-09 14:09:29');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11580', 'W', '2022-11-22 04:14:55', '2022-11-24 04:14:55');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11581', 'W', '2022-10-30 10:03:45', '2022-11-01 10:03:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11582', 'W', '2022-11-20 10:10:13', '2022-11-22 10:10:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11583', 'W', '2022-11-18 19:29:59', '2022-11-20 19:29:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11584', 'W', '2022-11-03 02:40:26', '2022-11-05 02:40:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11585', 'W', '2022-11-23 01:59:22', '2022-11-25 01:59:22');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11586', 'W', '2022-11-15 15:34:37', '2022-11-17 15:34:37');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11587', 'W', '2022-10-30 06:22:30', '2022-11-01 06:22:30');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11588', 'W', '2022-11-14 06:57:51', '2022-11-16 06:57:51');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11589', 'W', '2022-10-31 05:52:35', '2022-11-02 05:52:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11590', 'W', '2022-11-22 22:12:13', '2022-11-24 22:12:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11591', 'W', '2022-12-22 04:00:59', '2022-12-24 04:00:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11592', 'W', '2022-12-03 12:05:21', '2022-12-05 12:05:21');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11593', 'W', '2022-12-05 14:19:17', '2022-12-07 14:19:17');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11594', 'W', '2022-11-28 02:58:02', '2022-11-30 02:58:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11595', 'W', '2022-12-18 21:40:52', '2022-12-20 21:40:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11596', 'W', '2022-12-02 01:43:30', '2022-12-04 01:43:30');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11597', 'W', '2022-12-16 01:22:10', '2022-12-18 01:22:10');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11598', 'W', '2022-12-04 06:33:07', '2022-12-06 06:33:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11599', 'W', '2022-12-23 00:38:02', '2022-12-25 00:38:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11600', 'W', '2022-12-18 19:52:54', '2022-12-20 19:52:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11601', 'W', '2022-12-20 05:11:45', '2022-12-22 05:11:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11602', 'W', '2022-12-12 13:46:35', '2022-12-14 13:46:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11603', 'W', '2022-12-12 09:47:37', '2022-12-14 09:47:37');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11604', 'W', '2022-12-21 16:00:10', '2022-12-23 16:00:10');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11605', 'W', '2022-12-22 05:00:14', '2022-12-24 05:00:14');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11606', 'W', '2022-12-19 22:07:25', '2022-12-21 22:07:25');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11607', 'W', '2022-12-30 18:19:04', '2023-01-01 18:19:04');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11608', 'W', '2022-12-29 04:10:22', '2022-12-31 04:10:22');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11609', 'W', '2023-01-03 21:11:18', '2023-01-05 21:11:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11610', 'W', '2023-01-06 17:24:43', '2023-01-08 17:24:43');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11611', 'W', '2023-01-10 19:11:40', '2023-01-12 19:11:40');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11612', 'W', '2023-01-11 08:49:35', '2023-01-13 08:49:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11613', 'W', '2023-01-23 01:01:16', '2023-01-25 01:01:16');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11614', 'W', '2023-01-17 00:04:18', '2023-01-19 00:04:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11615', 'W', '2023-01-15 16:22:15', '2023-01-17 16:22:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11616', 'W', '2023-01-15 16:16:23', '2023-01-17 16:16:23');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11617', 'W', '2023-01-20 07:28:20', '2023-01-22 07:28:20');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11618', 'W', '2023-01-24 04:18:17', '2023-01-26 04:18:17');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11619', 'W', '2023-01-23 17:33:17', '2023-01-25 17:33:17');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11620', 'W', '2023-01-12 17:30:41', '2023-01-14 17:30:41');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11621', 'W', '2023-01-01 15:00:05', '2023-01-03 15:00:05');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11622', 'W', '2023-01-18 06:57:13', '2023-01-20 06:57:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11623', 'W', '2023-02-24 13:21:42', '2023-02-26 13:21:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11624', 'W', '2023-02-17 19:21:41', '2023-02-19 19:21:41');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11625', 'W', '2023-02-09 16:14:50', '2023-02-11 16:14:50');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11626', 'W', '2023-02-16 01:04:15', '2023-02-18 01:04:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11627', 'W', '2023-02-08 17:02:47', '2023-02-10 17:02:47');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11628', 'W', '2023-01-30 06:37:39', '2023-02-01 06:37:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11629', 'W', '2023-01-26 08:40:10', '2023-01-28 08:40:10');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11630', 'W', '2023-01-29 15:26:16', '2023-01-31 15:26:16');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11631', 'W', '2023-02-23 20:11:35', '2023-02-25 20:11:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11632', 'W', '2023-01-31 00:12:33', '2023-02-02 00:12:33');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11633', 'W', '2023-02-22 22:49:31', '2023-02-24 22:49:31');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11634', 'W', '2023-01-30 08:56:26', '2023-02-01 08:56:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11635', 'W', '2023-02-04 17:42:31', '2023-02-06 17:42:31');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11636', 'W', '2023-02-16 21:46:31', '2023-02-18 21:46:31');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11637', 'W', '2023-01-29 14:02:20', '2023-01-31 14:02:20');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11638', 'W', '2023-02-23 04:38:03', '2023-02-25 04:38:03');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11639', 'W', '2023-03-18 16:22:09', '2023-03-20 16:22:09');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11640', 'W', '2023-03-10 20:48:19', '2023-03-12 20:48:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11641', 'W', '2023-03-17 23:24:01', '2023-03-19 23:24:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11642', 'W', '2023-03-26 17:08:32', '2023-03-28 17:08:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11643', 'W', '2023-02-28 08:05:51', '2023-03-02 08:05:51');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11644', 'W', '2023-03-22 13:00:25', '2023-03-24 13:00:25');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11645', 'W', '2023-03-17 21:39:21', '2023-03-19 21:39:21');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11646', 'W', '2023-03-02 18:56:46', '2023-03-04 18:56:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11647', 'W', '2023-03-06 06:06:53', '2023-03-08 06:06:53');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11648', 'W', '2023-03-01 10:47:24', '2023-03-03 10:47:24');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11649', 'W', '2023-02-25 07:12:46', '2023-02-27 07:12:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11650', 'W', '2023-03-14 18:32:18', '2023-03-16 18:32:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11651', 'W', '2023-03-16 19:19:57', '2023-03-18 19:19:57');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11652', 'W', '2023-03-06 07:36:59', '2023-03-08 07:36:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11653', 'W', '2023-03-11 05:20:04', '2023-03-13 05:20:04');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11654', 'W', '2023-03-12 00:13:03', '2023-03-14 00:13:03');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11655', 'W', '2023-04-08 22:37:09', '2023-04-10 22:37:09');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11656', 'W', '2023-03-27 11:57:32', '2023-03-29 11:57:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11657', 'W', '2023-04-18 10:24:37', '2023-04-20 10:24:37');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11658', 'W', '2023-04-10 06:19:16', '2023-04-12 06:19:16');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11659', 'W', '2023-04-25 10:56:36', '2023-04-27 10:56:36');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11660', 'W', '2023-04-04 13:12:53', '2023-04-06 13:12:53');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11661', 'W', '2023-04-24 05:44:28', '2023-04-26 05:44:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11662', 'W', '2023-03-28 01:15:09', '2023-03-30 01:15:09');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11663', 'W', '2023-04-10 14:01:00', '2023-04-12 14:01:00');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11664', 'W', '2023-04-16 02:28:13', '2023-04-18 02:28:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11665', 'W', '2023-03-29 14:42:47', '2023-03-31 14:42:47');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11666', 'W', '2023-03-29 01:17:18', '2023-03-31 01:17:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11667', 'W', '2023-04-05 05:12:24', '2023-04-07 05:12:24');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11668', 'W', '2023-04-14 08:49:09', '2023-04-16 08:49:09');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11669', 'W', '2023-04-21 19:07:16', '2023-04-23 19:07:16');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11670', 'W', '2023-03-31 15:45:59', '2023-04-02 15:45:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11671', 'W', '2023-05-15 18:56:17', '2023-05-17 18:56:17');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11672', 'W', '2023-05-18 15:17:29', '2023-05-20 15:17:29');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11673', 'W', '2023-05-20 15:20:05', '2023-05-22 15:20:05');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11674', 'W', '2023-05-23 03:07:36', '2023-05-25 03:07:36');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11675', 'W', '2023-05-06 21:52:46', '2023-05-08 21:52:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11676', 'W', '2023-05-05 09:02:22', '2023-05-07 09:02:22');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11677', 'W', '2023-05-11 00:21:46', '2023-05-13 00:21:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11678', 'W', '2023-05-09 11:18:07', '2023-05-11 11:18:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11679', 'W', '2023-04-26 23:24:50', '2023-04-28 23:24:50');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11680', 'W', '2023-05-06 16:17:19', '2023-05-08 16:17:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11681', 'W', '2023-05-05 15:05:25', '2023-05-07 15:05:25');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11682', 'W', '2023-05-03 19:50:42', '2023-05-05 19:50:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11683', 'W', '2023-05-25 02:55:02', '2023-05-27 02:55:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11684', 'W', '2023-05-21 05:26:57', '2023-05-23 05:26:57');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11685', 'W', '2023-05-18 04:44:32', '2023-05-20 04:44:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11686', 'W', '2023-04-29 02:16:28', '2023-05-01 02:16:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11687', 'W', '2023-06-03 09:26:39', '2023-06-05 09:26:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11688', 'W', '2023-06-16 15:45:37', '2023-06-18 15:45:37');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11689', 'W', '2023-06-23 06:02:30', '2023-06-25 06:02:30');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11690', 'W', '2023-05-29 06:03:31', '2023-05-31 06:03:31');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11691', 'W', '2023-06-12 23:03:59', '2023-06-14 23:03:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11692', 'W', '2023-06-17 13:30:30', '2023-06-19 13:30:30');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11693', 'W', '2023-06-15 13:24:08', '2023-06-17 13:24:08');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11694', 'W', '2023-06-06 19:04:34', '2023-06-08 19:04:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11695', 'W', '2023-06-09 16:48:36', '2023-06-11 16:48:36');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11696', 'W', '2023-06-24 15:01:24', '2023-06-26 15:01:24');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11697', 'W', '2023-06-09 11:55:33', '2023-06-11 11:55:33');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11698', 'W', '2023-06-07 08:11:52', '2023-06-09 08:11:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,14, 6, '11699', 'W', '2023-05-26 18:48:02', '2023-05-28 18:48:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11700', 'W', '2023-06-04 09:45:11', '2023-06-06 09:45:11');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11701', 'W', '2023-05-29 17:13:58', '2023-05-31 17:13:58');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11702', 'W', '2023-06-21 02:29:18', '2023-06-23 02:29:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11703', 'W', '2023-07-08 00:04:21', '2023-07-10 00:04:21');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,3, 3, '11704', 'W', '2023-07-24 18:45:32', '2023-07-26 18:45:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11705', 'W', '2023-06-28 22:03:12', '2023-06-30 22:03:12');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,12, 3, '11706', 'W', '2023-07-01 09:57:59', '2023-07-03 09:57:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11707', 'W', '2023-07-05 04:56:15', '2023-07-07 04:56:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11708', 'W', '2023-07-19 10:55:47', '2023-07-21 10:55:47');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,4, 4, '11709', 'W', '2023-06-27 14:30:12', '2023-06-29 14:30:12');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,11, 4, '11710', 'W', '2023-07-13 16:37:26', '2023-07-15 16:37:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11711', 'W', '2023-06-26 16:49:06', '2023-06-28 16:49:06');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,10, 5, '11712', 'W', '2023-06-30 02:40:20', '2023-07-02 02:40:20');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11713', 'W', '2023-07-12 20:46:37', '2023-07-14 20:46:37');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,15, 5, '11714', 'W', '2023-07-21 14:30:48', '2023-07-23 14:30:48');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11715', 'W', '2023-07-14 22:14:58', '2023-07-16 22:14:58');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11716', 'W', '2023-07-12 14:03:22', '2023-07-14 14:03:22');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,17, 6, '11717', 'W', '2023-07-06 01:28:25', '2023-07-08 01:28:25');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (0,13, 6, '11718', 'W', '2023-07-12 17:56:08', '2023-07-14 17:56:08');


INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11718', 'T', '2022-01-17 19:14:50', '2022-01-19 19:14:50');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,12, 3, '11719', 'T', '2022-01-11 21:58:45', '2022-01-13 21:58:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11720', 'T', '2022-01-18 08:44:45', '2022-01-20 08:44:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,3, 3, '11721', 'T', '2022-01-12 11:30:36', '2022-01-14 11:30:36');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,4, 4, '11722', 'T', '2022-01-30 20:47:13', '2022-02-01 20:47:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,11, 4, '11723', 'T', '2022-01-26 10:59:08', '2022-01-28 10:59:08');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,4, 4, '11724', 'T', '2022-01-13 13:54:50', '2022-01-15 13:54:50');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,4, 4, '11725', 'T', '2022-01-02 09:07:03', '2022-01-04 09:07:03');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11726', 'T', '2022-01-19 00:10:45', '2022-01-21 00:10:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,15, 5, '11727', 'T', '2022-01-26 15:09:18', '2022-01-28 15:09:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,15, 5, '11728', 'T', '2022-01-01 05:57:37', '2022-01-03 05:57:37');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11729', 'T', '2022-01-07 20:49:35', '2022-01-09 20:49:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,13, 6, '11730', 'T', '2022-01-22 00:49:44', '2022-01-24 00:49:44');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,17, 6, '11731', 'T', '2022-01-08 13:48:15', '2022-01-10 13:48:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,17, 6, '11732', 'T', '2022-01-09 20:17:06', '2022-01-11 20:17:06');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,17, 6, '11733', 'T', '2022-01-05 18:52:01', '2022-01-07 18:52:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11734', 'T', '2022-02-27 14:44:43', '2022-03-01 14:44:43');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11735', 'T', '2022-02-22 17:02:10', '2022-02-24 17:02:10');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11736', 'T', '2022-02-16 14:27:04', '2022-02-18 14:27:04');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11737', 'T', '2022-02-17 04:05:52', '2022-02-19 04:05:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,11, 4, '11738', 'T', '2022-02-15 10:03:59', '2022-02-17 10:03:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,4, 4, '11739', 'T', '2022-02-16 22:50:11', '2022-02-18 22:50:11');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,11, 4, '11740', 'T', '2022-02-14 06:42:50', '2022-02-16 06:42:50');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11741', 'T', '2022-02-23 00:15:39', '2022-02-25 00:15:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,15, 5, '11742', 'T', '2022-02-13 13:49:38', '2022-02-15 13:49:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,15, 5, '11743', 'T', '2022-02-06 18:18:19', '2022-02-08 18:18:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11744', 'T', '2022-02-19 16:56:57', '2022-02-21 16:56:57');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '11745', 'T', '2022-02-13 12:32:46', '2022-02-15 12:32:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,13, 6, '11746', 'T', '2022-02-25 23:13:41', '2022-02-27 23:13:41');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,13, 6, '11747', 'T', '2022-02-16 18:28:24', '2022-02-18 18:28:24');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,17, 6, '11748', 'T', '2022-02-18 09:06:12', '2022-02-20 09:06:12');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,14, 6, '11749', 'T', '2022-02-26 01:18:28', '2022-02-28 01:18:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11750', 'T', '2022-03-19 18:18:33', '2022-03-21 18:18:33');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11751', 'T', '2022-03-15 10:44:50', '2022-03-17 10:44:50');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,3, 3, '11752', 'T', '2022-03-31 10:36:37', '2022-04-02 10:36:37');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11753', 'T', '2022-03-09 01:00:07', '2022-03-11 01:00:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11754', 'T', '2022-03-23 02:31:00', '2022-03-25 02:31:00');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,4, 4, '11755', 'T', '2022-03-03 11:55:20', '2022-03-05 11:55:20');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,4, 4, '11756', 'T', '2022-03-29 21:41:00', '2022-03-31 21:41:00');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,4, 4, '11757', 'T', '2022-03-23 08:24:15', '2022-03-25 08:24:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11758', 'T', '2022-03-29 05:33:03', '2022-03-31 05:33:03');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,15, 5, '11759', 'T', '2022-03-30 08:29:26', '2022-04-01 08:29:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,10, 5, '11760', 'T', '2022-03-31 18:45:13', '2022-04-02 18:45:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11761', 'T', '2022-03-10 20:24:55', '2022-03-12 20:24:55');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,17, 6, '11762', 'T', '2022-03-19 12:25:18', '2022-03-21 12:25:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,14, 6, '11763', 'T', '2022-03-26 18:56:43', '2022-03-28 18:56:43');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,17, 6, '11764', 'T', '2022-03-12 15:19:53', '2022-03-14 15:19:53');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,17, 6, '11765', 'T', '2022-03-05 16:58:50', '2022-03-07 16:58:50');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,12, 3, '11766', 'T', '2022-04-13 22:47:50', '2022-04-15 22:47:50');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,12, 3, '11767', 'T', '2022-04-03 05:08:26', '2022-04-05 05:08:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11768', 'T', '2022-04-23 02:29:35', '2022-04-25 02:29:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,3, 3, '11769', 'T', '2022-04-25 07:27:44', '2022-04-27 07:27:44');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,11, 4, '11770', 'T', '2022-04-20 06:38:22', '2022-04-22 06:38:22');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,4, 4, '11771', 'T', '2022-04-11 10:26:27', '2022-04-13 10:26:27');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,4, 4, '11772', 'T', '2022-04-05 04:11:06', '2022-04-07 04:11:06');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,11, 4, '11773', 'T', '2022-04-24 13:31:00', '2022-04-26 13:31:00');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11774', 'T', '2022-04-14 17:01:17', '2022-04-16 17:01:17');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,15, 5, '11775', 'T', '2022-04-16 08:20:24', '2022-04-18 08:20:24');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11776', 'T', '2022-04-29 11:20:54', '2022-05-01 11:20:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11777', 'T', '2022-04-16 01:58:44', '2022-04-18 01:58:44');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,17, 6, '11778', 'T', '2022-04-12 14:10:11', '2022-04-14 14:10:11');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,14, 6, '11779', 'T', '2022-04-06 13:37:31', '2022-04-08 13:37:31');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,14, 6, '11780', 'T', '2022-04-02 07:50:58', '2022-04-04 07:50:58');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,17, 6, '11781', 'T', '2022-04-02 10:57:47', '2022-04-04 10:57:47');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11782', 'T', '2022-05-14 16:13:42', '2022-05-16 16:13:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11783', 'T', '2022-05-16 01:27:16', '2022-05-18 01:27:16');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11784', 'T', '2022-05-29 19:52:31', '2022-05-31 19:52:31');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,3, 3, '11785', 'T', '2022-05-18 18:14:27', '2022-05-20 18:14:27');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11786', 'T', '2022-05-05 21:25:14', '2022-05-07 21:25:14');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11787', 'T', '2022-05-02 13:46:19', '2022-05-04 13:46:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,4, 4, '11788', 'T', '2022-05-11 07:23:24', '2022-05-13 07:23:24');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,11, 4, '11789', 'T', '2022-05-29 05:00:53', '2022-05-31 05:00:53');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,15, 5, '11790', 'T', '2022-05-02 13:39:25', '2022-05-04 13:39:25');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,15, 5, '11791', 'T', '2022-05-28 19:07:34', '2022-05-30 19:07:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11792', 'T', '2022-05-06 20:51:42', '2022-05-08 20:51:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11793', 'T', '2022-05-21 13:17:52', '2022-05-23 13:17:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,14, 6, '11794', 'T', '2022-05-12 21:09:28', '2022-05-14 21:09:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,13, 6, '11795', 'T', '2022-05-14 03:56:36', '2022-05-16 03:56:36');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,13, 6, '11796', 'T', '2022-05-03 19:33:38', '2022-05-05 19:33:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,17, 6, '11797', 'T', '2022-05-05 08:03:31', '2022-05-07 08:03:31');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,3, 3, '11798', 'T', '2022-06-24 02:29:02', '2022-06-26 02:29:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11799', 'T', '2022-06-18 17:07:34', '2022-06-20 17:07:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11800', 'T', '2022-06-26 12:16:32', '2022-06-28 12:16:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11801', 'T', '2022-06-28 09:08:59', '2022-06-30 09:08:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11802', 'T', '2022-06-29 07:54:38', '2022-07-01 07:54:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11803', 'T', '2022-06-01 21:54:14', '2022-06-03 21:54:14');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,4, 4, '11804', 'T', '2022-06-24 22:32:52', '2022-06-26 22:32:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,11, 4, '11805', 'T', '2022-06-07 05:33:26', '2022-06-09 05:33:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11806', 'T', '2022-06-07 18:15:03', '2022-06-09 18:15:03');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,15, 5, '11807', 'T', '2022-06-27 14:26:07', '2022-06-29 14:26:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,15, 5, '11808', 'T', '2022-06-18 20:59:14', '2022-06-20 20:59:14');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11809', 'T', '2022-06-11 08:31:59', '2022-06-13 08:31:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,17, 6, '11810', 'T', '2022-06-22 07:21:00', '2022-06-24 07:21:00');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,13, 6, '11811', 'T', '2022-06-22 09:48:55', '2022-06-24 09:48:55');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,14, 6, '11812', 'T', '2022-06-05 13:11:50', '2022-06-07 13:11:50');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,17, 6, '11813', 'T', '2022-06-07 22:01:28', '2022-06-09 22:01:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,3, 3, '11814', 'T', '2022-07-03 01:12:16', '2022-07-05 01:12:16');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,12, 3, '11815', 'T', '2022-07-07 20:01:07', '2022-07-09 20:01:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11816', 'T', '2022-07-28 19:44:59', '2022-07-30 19:44:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,12, 3, '11817', 'T', '2022-07-21 02:48:25', '2022-07-23 02:48:25');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11818', 'T', '2022-07-14 17:29:34', '2022-07-16 17:29:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,4, 4, '11819', 'T', '2022-07-04 21:59:56', '2022-07-06 21:59:56');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11820', 'T', '2022-07-01 02:37:58', '2022-07-03 02:37:58');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,11, 4, '11821', 'T', '2022-06-30 05:47:01', '2022-07-02 05:47:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,15, 5, '11822', 'T', '2022-07-12 10:42:41', '2022-07-14 10:42:41');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,10, 5, '11823', 'T', '2022-07-28 00:09:27', '2022-07-30 00:09:27');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,15, 5, '11824', 'T', '2022-07-14 01:48:57', '2022-07-16 01:48:57');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,10, 5, '11825', 'T', '2022-07-19 01:33:52', '2022-07-21 01:33:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,14, 6, '11826', 'T', '2022-07-06 17:27:45', '2022-07-08 17:27:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,17, 6, '11827', 'T', '2022-07-29 05:07:29', '2022-07-31 05:07:29');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,13, 6, '11828', 'T', '2022-07-17 21:11:17', '2022-07-19 21:11:17');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,13, 6, '11829', 'T', '2022-07-05 23:26:45', '2022-07-07 23:26:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,12, 3, '11830', 'T', '2022-08-04 06:25:58', '2022-08-06 06:25:58');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11831', 'T', '2022-08-09 14:48:38', '2022-08-11 14:48:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11832', 'T', '2022-08-18 07:04:19', '2022-08-20 07:04:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,12, 3, '11833', 'T', '2022-08-02 00:00:19', '2022-08-04 00:00:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,4, 4, '11834', 'T', '2022-08-05 04:20:04', '2022-08-07 04:20:04');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,11, 4, '11835', 'T', '2022-08-10 05:36:21', '2022-08-12 05:36:21');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,4, 4, '11836', 'T', '2022-08-04 08:56:36', '2022-08-06 08:56:36');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,11, 4, '11837', 'T', '2022-08-07 13:57:07', '2022-08-09 13:57:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,15, 5, '11838', 'T', '2022-08-17 04:34:09', '2022-08-19 04:34:09');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11839', 'T', '2022-08-22 05:23:49', '2022-08-24 05:23:49');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11840', 'T', '2022-08-20 04:22:54', '2022-08-22 04:22:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,15, 5, '11841', 'T', '2022-08-13 05:56:43', '2022-08-15 05:56:43');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,17, 6, '11842', 'T', '2022-07-31 14:50:00', '2022-08-02 14:50:00');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,14, 6, '11843', 'T', '2022-08-09 19:04:54', '2022-08-11 19:04:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,14, 6, '11844', 'T', '2022-08-22 10:10:39', '2022-08-24 10:10:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,17, 6, '11845', 'T', '2022-08-24 20:54:01', '2022-08-26 20:54:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11846', 'T', '2022-09-13 07:01:16', '2022-09-15 07:01:16');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11847', 'T', '2022-09-15 13:26:16', '2022-09-17 13:26:16');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11848', 'T', '2022-09-17 12:05:49', '2022-09-19 12:05:49');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11849', 'T', '2022-09-18 19:26:52', '2022-09-20 19:26:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,11, 4, '11850', 'T', '2022-09-13 02:55:38', '2022-09-15 02:55:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11851', 'T', '2022-09-06 18:31:21', '2022-09-08 18:31:21');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11852', 'T', '2022-09-02 05:29:53', '2022-09-04 05:29:53');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,11, 4, '11853', 'T', '2022-09-10 03:46:57', '2022-09-12 03:46:57');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11854', 'T', '2022-09-26 03:04:05', '2022-09-28 03:04:05');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11855', 'T', '2022-09-17 14:19:42', '2022-09-19 14:19:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11856', 'T', '2022-08-30 06:11:09', '2022-09-01 06:11:09');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11857', 'T', '2022-09-25 04:15:01', '2022-09-27 04:15:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,13, 6, '11858', 'T', '2022-08-29 06:57:01', '2022-08-31 06:57:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,13, 6, '11859', 'T', '2022-09-21 05:49:03', '2022-09-23 05:49:03');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,13, 6, '11860', 'T', '2022-09-24 00:24:12', '2022-09-26 00:24:12');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,13, 6, '11861', 'T', '2022-09-04 23:11:59', '2022-09-06 23:11:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11862', 'T', '2022-10-27 05:04:26', '2022-10-29 05:04:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,12, 3, '11863', 'T', '2022-10-09 14:17:24', '2022-10-11 14:17:24');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,12, 3, '11864', 'T', '2022-10-02 09:23:27', '2022-10-04 09:23:27');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,3, 3, '11865', 'T', '2022-10-26 04:14:19', '2022-10-28 04:14:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11866', 'T', '2022-10-03 15:33:13', '2022-10-05 15:33:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,11, 4, '11867', 'T', '2022-10-16 23:06:53', '2022-10-18 23:06:53');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,4, 4, '11868', 'T', '2022-10-26 03:24:01', '2022-10-28 03:24:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,11, 4, '11869', 'T', '2022-10-25 12:46:05', '2022-10-27 12:46:05');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11870', 'T', '2022-10-05 19:35:42', '2022-10-07 19:35:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,15, 5, '11871', 'T', '2022-10-14 20:08:14', '2022-10-16 20:08:14');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11872', 'T', '2022-10-13 12:08:31', '2022-10-15 12:08:31');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,15, 5, '11873', 'T', '2022-10-23 17:33:07', '2022-10-25 17:33:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,17, 6, '11874', 'T', '2022-10-20 11:27:34', '2022-10-22 11:27:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,17, 6, '11875', 'T', '2022-10-21 07:15:39', '2022-10-23 07:15:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,13, 6, '11876', 'T', '2022-10-06 22:35:45', '2022-10-08 22:35:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,14, 6, '11877', 'T', '2022-10-09 09:42:18', '2022-10-11 09:42:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11878', 'T', '2022-11-26 08:32:13', '2022-11-28 08:32:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11879', 'T', '2022-11-16 05:29:26', '2022-11-18 05:29:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,12, 3, '11880', 'T', '2022-11-11 18:31:25', '2022-11-13 18:31:25');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,3, 3, '11881', 'T', '2022-11-10 23:42:28', '2022-11-12 23:42:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,11, 4, '11882', 'T', '2022-11-13 02:36:11', '2022-11-15 02:36:11');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11883', 'T', '2022-11-25 01:47:45', '2022-11-27 01:47:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11884', 'T', '2022-11-03 08:52:43', '2022-11-05 08:52:43');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,11, 4, '11885', 'T', '2022-11-03 19:06:40', '2022-11-05 19:06:40');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,15, 5, '11886', 'T', '2022-11-08 04:59:08', '2022-11-10 04:59:08');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11887', 'T', '2022-11-16 10:06:48', '2022-11-18 10:06:48');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,15, 5, '11888', 'T', '2022-11-20 01:33:13', '2022-11-22 01:33:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '11889', 'T', '2022-11-17 02:49:40', '2022-11-19 02:49:40');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,13, 6, '11890', 'T', '2022-11-07 11:54:10', '2022-11-09 11:54:10');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,14, 6, '11891', 'T', '2022-11-10 07:28:23', '2022-11-12 07:28:23');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,14, 6, '11892', 'T', '2022-11-14 11:17:39', '2022-11-16 11:17:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,13, 6, '11893', 'T', '2022-11-08 19:47:28', '2022-11-10 19:47:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,12, 3, '11894', 'T', '2022-12-08 13:15:06', '2022-12-10 13:15:06');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11895', 'T', '2022-12-15 21:38:56', '2022-12-17 21:38:56');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11896', 'T', '2022-12-23 17:41:31', '2022-12-25 17:41:31');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11897', 'T', '2022-12-07 06:34:09', '2022-12-09 06:34:09');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11898', 'T', '2022-12-06 00:13:06', '2022-12-08 00:13:06');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,11, 4, '11899', 'T', '2022-12-18 00:27:23', '2022-12-20 00:27:23');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,4, 4, '11900', 'T', '2022-12-01 17:18:15', '2022-12-03 17:18:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,11, 4, '11901', 'T', '2022-12-11 23:31:10', '2022-12-13 23:31:10');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11902', 'T', '2022-12-19 16:41:42', '2022-12-21 16:41:42');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11903', 'T', '2022-12-19 06:14:15', '2022-12-21 06:14:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,15, 5, '11904', 'T', '2022-12-01 10:18:07', '2022-12-03 10:18:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '11905', 'T', '2022-12-12 13:27:02', '2022-12-14 13:27:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,13, 6, '11906', 'T', '2022-12-04 21:08:24', '2022-12-06 21:08:24');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,14, 6, '11907', 'T', '2022-12-18 06:08:55', '2022-12-20 06:08:55');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,17, 6, '11908', 'T', '2022-11-27 08:55:19', '2022-11-29 08:55:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,14, 6, '11909', 'T', '2022-12-11 13:37:31', '2022-12-13 13:37:31');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11910', 'T', '2022-12-29 22:38:45', '2022-12-31 22:38:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11911', 'T', '2023-01-06 08:10:39', '2023-01-08 08:10:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,12, 3, '11912', 'T', '2023-01-06 08:51:23', '2023-01-08 08:51:23');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '11913', 'T', '2023-01-24 20:26:18', '2023-01-26 20:26:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11914', 'T', '2023-01-12 09:17:09', '2023-01-14 09:17:09');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11915', 'T', '2023-01-19 08:46:56', '2023-01-21 08:46:56');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11916', 'T', '2023-01-23 05:54:00', '2023-01-25 05:54:00');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,4, 4, '11917', 'T', '2023-01-19 18:19:59', '2023-01-21 18:19:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,15, 5, '11918', 'T', '2023-01-15 04:41:55', '2023-01-17 04:41:55');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,15, 5, '11919', 'T', '2023-01-15 14:01:34', '2023-01-17 14:01:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,15, 5, '11920', 'T', '2023-01-23 16:23:17', '2023-01-25 16:23:17');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,15, 5, '11921', 'T', '2023-01-17 12:41:52', '2023-01-19 12:41:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,14, 6, '11922', 'T', '2023-01-22 17:24:43', '2023-01-24 17:24:43');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,13, 6, '11923', 'T', '2023-01-10 01:03:34', '2023-01-12 01:03:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,13, 6, '11924', 'T', '2023-01-10 10:57:09', '2023-01-12 10:57:09');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,14, 6, '11925', 'T', '2022-12-31 00:24:49', '2023-01-02 00:24:49');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,3, 3, '11926', 'T', '2023-02-14 08:22:54', '2023-02-16 08:22:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11927', 'T', '2023-02-03 18:28:25', '2023-02-05 18:28:25');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,12, 3, '11928', 'T', '2023-01-31 18:08:00', '2023-02-02 18:08:00');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11929', 'T', '2023-01-28 20:01:01', '2023-01-30 20:01:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11930', 'T', '2023-02-23 21:06:49', '2023-02-25 21:06:49');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,4, 4, '11931', 'T', '2023-02-24 14:54:35', '2023-02-26 14:54:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,11, 4, '11932', 'T', '2023-02-16 03:45:13', '2023-02-18 03:45:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,11, 4, '11933', 'T', '2023-02-15 23:53:58', '2023-02-17 23:53:58');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11934', 'T', '2023-02-13 23:19:34', '2023-02-15 23:19:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,15, 5, '11935', 'T', '2023-02-16 02:38:30', '2023-02-18 02:38:30');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11936', 'T', '2023-02-13 16:01:46', '2023-02-15 16:01:46');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,15, 5, '11937', 'T', '2023-02-19 05:30:43', '2023-02-21 05:30:43');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,13, 6, '11938', 'T', '2023-02-22 23:27:34', '2023-02-24 23:27:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,14, 6, '11939', 'T', '2023-02-04 17:05:10', '2023-02-06 17:05:10');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,14, 6, '11940', 'T', '2023-02-16 07:21:43', '2023-02-18 07:21:43');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,17, 6, '11941', 'T', '2023-01-28 10:59:39', '2023-01-30 10:59:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11942', 'T', '2023-03-14 11:06:53', '2023-03-16 11:06:53');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,3, 3, '11943', 'T', '2023-03-01 04:40:41', '2023-03-03 04:40:41');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11944', 'T', '2023-02-26 18:10:36', '2023-02-28 18:10:36');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,3, 3, '11945', 'T', '2023-03-03 07:26:13', '2023-03-05 07:26:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,4, 4, '11946', 'T', '2023-03-17 15:38:15', '2023-03-19 15:38:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11947', 'T', '2023-03-04 16:48:07', '2023-03-06 16:48:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,4, 4, '11948', 'T', '2023-03-11 22:47:32', '2023-03-13 22:47:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,11, 4, '11949', 'T', '2023-03-08 20:51:10', '2023-03-10 20:51:10');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,15, 5, '11950', 'T', '2023-03-09 00:37:32', '2023-03-11 00:37:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11951', 'T', '2023-03-06 10:19:29', '2023-03-08 10:19:29');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,10, 5, '11952', 'T', '2023-03-22 19:15:35', '2023-03-24 19:15:35');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,10, 5, '11953', 'T', '2023-03-09 00:59:03', '2023-03-11 00:59:03');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,17, 6, '11954', 'T', '2023-03-19 13:28:04', '2023-03-21 13:28:04');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,14, 6, '11955', 'T', '2023-03-19 18:47:45', '2023-03-21 18:47:45');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,13, 6, '11956', 'T', '2023-02-26 16:58:40', '2023-02-28 16:58:40');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,17, 6, '11957', 'T', '2023-03-19 17:35:51', '2023-03-21 17:35:51');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11958', 'T', '2023-04-19 12:01:09', '2023-04-21 12:01:09');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11959', 'T', '2023-04-08 07:21:52', '2023-04-10 07:21:52');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11960', 'T', '2023-04-25 15:52:16', '2023-04-27 15:52:16');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,12, 3, '11961', 'T', '2023-04-19 06:05:18', '2023-04-21 06:05:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,4, 4, '11962', 'T', '2023-03-30 10:11:44', '2023-04-01 10:11:44');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,11, 4, '11963', 'T', '2023-04-22 18:53:38', '2023-04-24 18:53:38');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,11, 4, '11964', 'T', '2023-04-04 04:06:13', '2023-04-06 04:06:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,4, 4, '11965', 'T', '2023-04-19 13:36:12', '2023-04-21 13:36:12');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,10, 5, '11966', 'T', '2023-03-31 18:51:54', '2023-04-02 18:51:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,10, 5, '11967', 'T', '2023-04-24 19:29:13', '2023-04-26 19:29:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,15, 5, '11968', 'T', '2023-04-08 02:53:05', '2023-04-10 02:53:05');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,10, 5, '11969', 'T', '2023-04-22 08:18:40', '2023-04-24 08:18:40');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,13, 6, '11970', 'T', '2023-04-15 09:35:53', '2023-04-17 09:35:53');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,13, 6, '11971', 'T', '2023-04-14 01:51:33', '2023-04-16 01:51:33');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,13, 6, '11972', 'T', '2023-04-05 09:58:02', '2023-04-07 09:58:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,14, 6, '11973', 'T', '2023-04-06 23:50:19', '2023-04-08 23:50:19');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,3, 3, '11974', 'T', '2023-05-09 21:36:40', '2023-05-11 21:36:40');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,3, 3, '11975', 'T', '2023-05-22 18:15:15', '2023-05-24 18:15:15');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11976', 'T', '2023-05-17 09:38:50', '2023-05-19 09:38:50');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '11977', 'T', '2023-05-19 12:22:02', '2023-05-21 12:22:02');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,11, 4, '11978', 'T', '2023-05-12 02:44:07', '2023-05-14 02:44:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,4, 4, '11979', 'T', '2023-05-08 23:42:51', '2023-05-10 23:42:51');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,4, 4, '11980', 'T', '2023-04-26 16:40:04', '2023-04-28 16:40:04');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,11, 4, '11981', 'T', '2023-05-18 11:47:59', '2023-05-20 11:47:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,15, 5, '11982', 'T', '2023-04-27 00:59:34', '2023-04-29 00:59:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,15, 5, '11983', 'T', '2023-05-02 09:51:09', '2023-05-04 09:51:09');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '11984', 'T', '2023-05-17 12:22:33', '2023-05-19 12:22:33');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '11985', 'T', '2023-05-23 23:37:04', '2023-05-25 23:37:04');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,14, 6, '11986', 'T', '2023-04-26 09:07:26', '2023-04-28 09:07:26');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,14, 6, '11987', 'T', '2023-05-22 00:11:13', '2023-05-24 00:11:13');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,17, 6, '11988', 'T', '2023-05-20 09:21:22', '2023-05-22 09:21:22');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,14, 6, '11989', 'T', '2023-05-10 12:49:01', '2023-05-12 12:49:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11990', 'T', '2023-06-01 20:53:55', '2023-06-03 20:53:55');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,12, 3, '11991', 'T', '2023-06-12 12:49:39', '2023-06-14 12:49:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,3, 3, '11992', 'T', '2023-06-18 04:59:58', '2023-06-20 04:59:58');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,3, 3, '11993', 'T', '2023-06-14 04:37:18', '2023-06-16 04:37:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,11, 4, '11994', 'T', '2023-06-18 18:46:59', '2023-06-20 18:46:59');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (6,4, 4, '11995', 'T', '2023-06-18 13:25:24', '2023-06-20 13:25:24');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,11, 4, '11996', 'T', '2023-06-21 00:22:09', '2023-06-23 00:22:09');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '11997', 'T', '2023-06-16 17:21:11', '2023-06-18 17:21:11');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,15, 5, '11998', 'T', '2023-06-12 01:29:25', '2023-06-14 01:29:25');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,15, 5, '11999', 'T', '2023-06-13 21:50:54', '2023-06-15 21:50:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,10, 5, '12000', 'T', '2023-05-31 06:48:51', '2023-06-02 06:48:51');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '12001', 'T', '2023-06-16 03:05:28', '2023-06-18 03:05:28');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,13, 6, '12002', 'T', '2023-06-22 02:53:05', '2023-06-24 02:53:05');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,13, 6, '12003', 'T', '2023-06-21 14:29:34', '2023-06-23 14:29:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,13, 6, '12004', 'T', '2023-05-29 16:11:54', '2023-05-31 16:11:54');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,17, 6, '12005', 'T', '2023-06-12 01:44:01', '2023-06-14 01:44:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,12, 3, '12006', 'T', '2023-07-18 04:52:32', '2023-07-20 04:52:32');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '12007', 'T', '2023-07-14 23:40:51', '2023-07-16 23:40:51');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,3, 3, '12008', 'T', '2023-07-17 20:12:39', '2023-07-19 20:12:39');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,12, 3, '12009', 'T', '2023-07-10 20:35:49', '2023-07-12 20:35:49');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,4, 4, '12010', 'T', '2023-06-28 14:59:07', '2023-06-30 14:59:07');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,11, 4, '12011', 'T', '2023-07-04 20:41:44', '2023-07-06 20:41:44');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,4, 4, '12012', 'T', '2023-07-02 13:22:18', '2023-07-04 13:22:18');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,4, 4, '12013', 'T', '2023-07-20 00:45:47', '2023-07-22 00:45:47');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,15, 5, '12014', 'T', '2023-07-13 12:15:01', '2023-07-15 12:15:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '12015', 'T', '2023-07-17 18:23:50', '2023-07-19 18:23:50');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,15, 5, '12016', 'T', '2023-06-26 22:39:56', '2023-06-28 22:39:56');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (5,10, 5, '12017', 'T', '2023-07-23 18:44:58', '2023-07-25 18:44:58');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (8,13, 6, '12018', 'T', '2023-07-06 18:27:34', '2023-07-08 18:27:34');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,14, 6, '12019', 'T', '2023-07-15 04:16:04', '2023-07-17 04:16:04');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (9,14, 6, '12020', 'T', '2023-07-04 22:26:01', '2023-07-06 22:26:01');
INSERT INTO [PullOrders] ([pUser], [nUser], [depId], [reportNum], [pullStatus], [pullDate], [lastUpdate]) VALUES (7,14, 6, '12021', 'T', '2023-07-02 13:36:02', '2023-07-04 13:36:02');




INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (305, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (306, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (307, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (308, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (309, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (310, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (311, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (312, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (313, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (314, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (315, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (316, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (317, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (318, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (319, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (320, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (321, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (322, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (323, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (324, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (325, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (326, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (327, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (328, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (329, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (330, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (331, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (332, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (333, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (334, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (335, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (336, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (337, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (338, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (339, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (340, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (341, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (342, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (343, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (344, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (345, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (346, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (347, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (348, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (349, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (350, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (351, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (352, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (353, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (354, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (355, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (356, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (357, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (358, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (359, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (360, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (361, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (362, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (363, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (364, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (365, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (366, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (367, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (368, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (369, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (370, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (371, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (372, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (373, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (374, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (375, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (376, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (377, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (378, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (379, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (380, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (381, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (382, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (383, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (384, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (385, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (386, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (387, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (388, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (389, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (390, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (391, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (392, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (393, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (394, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (395, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (396, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (397, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (398, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (399, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (400, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (401, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (402, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (403, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (404, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (405, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (406, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (407, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (408, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (409, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (410, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (411, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (412, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (413, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (414, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (415, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (416, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (417, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (418, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (419, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (420, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (421, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (422, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (423, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (424, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (425, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (426, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (427, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (428, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (429, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (430, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (431, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (432, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (433, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (434, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (435, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (436, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (437, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (438, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (439, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (440, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (441, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (442, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (443, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (444, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (445, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (446, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (447, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (448, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (449, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (450, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (451, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (452, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (453, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (454, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (455, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (456, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (457, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (458, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (459, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (460, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (461, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (462, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (463, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (464, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (465, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (466, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (467, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (468, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (469, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (470, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (471, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (472, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (473, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (474, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (475, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (476, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (477, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (478, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (479, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (480, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (481, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (482, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (483, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (484, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (485, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (486, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (487, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (488, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (489, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (490, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (491, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (492, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (493, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (494, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (495, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (496, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (497, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (498, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (499, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (500, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (501, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (502, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (503, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (504, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (505, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (506, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (507, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (508, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (509, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (510, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (511, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (512, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (513, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (514, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (515, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (516, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (517, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (518, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (519, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (520, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (521, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (522, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (523, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (524, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (525, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (526, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (527, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (528, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (529, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (530, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (531, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (532, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (533, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (534, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (535, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (536, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (537, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (538, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (539, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (540, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (541, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (542, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (543, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (544, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (545, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (546, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (547, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (548, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (549, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (550, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (551, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (552, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (553, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (554, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (555, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (556, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (557, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (558, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (559, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (560, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (561, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (562, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (563, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (564, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (565, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (566, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (567, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (568, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (569, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (570, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (571, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (572, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (573, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (574, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (575, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (576, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (577, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (578, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (579, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (580, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (581, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (582, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (583, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (584, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (585, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (586, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (587, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (588, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (589, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (590, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (591, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (592, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (593, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (594, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (595, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (596, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (597, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (598, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (599, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (600, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (601, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (602, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (603, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (604, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (605, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (606, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (607, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (608, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (609, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (610, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (611, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (612, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (613, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (614, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (615, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (616, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (617, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (618, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (619, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (620, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (621, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (622, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (623, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (624, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (625, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (626, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (627, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (628, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (629, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (630, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (631, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (632, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (633, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (634, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (635, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (636, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (637, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (638, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (639, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (640, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (641, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (642, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (643, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (644, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (645, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (646, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (647, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (648, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (649, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (650, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (651, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (652, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (653, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (654, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (655, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (656, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (657, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (658, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (659, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (660, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (661, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (662, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (663, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (664, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (665, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (666, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (667, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (668, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (669, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (670, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (671, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (672, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (673, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (674, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (675, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (676, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (677, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (678, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (679, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (680, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (681, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (682, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (683, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (684, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (685, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (686, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (687, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (688, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (689, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (690, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (691, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (692, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (693, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (694, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (695, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (696, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (697, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (698, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (699, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (700, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (701, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (702, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (703, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (704, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (705, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (706, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (707, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (708, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (709, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (710, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (711, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (712, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (713, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (714, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (715, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (716, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (717, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (718, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (719, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (720, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (721, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (722, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (723, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (724, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (725, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (726, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (727, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (728, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (729, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (730, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (731, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (732, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (733, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (734, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (735, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (736, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (737, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (738, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (739, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (740, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (741, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (742, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (743, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (744, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (745, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (746, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (747, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (748, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (749, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (750, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (751, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (752, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (753, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (754, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (755, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (756, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (757, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (758, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (759, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (760, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (761, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (762, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (763, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (764, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (765, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (766, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (767, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (768, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (769, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (770, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (771, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (772, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (773, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (774, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (775, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (776, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (777, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (778, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (779, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (780, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (781, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (782, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (783, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (784, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (785, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (786, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (787, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (788, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (789, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (790, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (791, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (792, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (793, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (794, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (795, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (796, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (797, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (798, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (799, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (800, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (801, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (802, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (803, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (804, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (805, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (806, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (807, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (808, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (809, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (810, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (811, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (812, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (813, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (814, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (815, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (816, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (817, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (818, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (819, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (820, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (821, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (822, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (823, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (824, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (825, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (826, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (827, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (828, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (829, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (830, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (831, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (832, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (833, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (834, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (835, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (836, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (837, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (838, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (839, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (840, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (841, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (842, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (843, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (844, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (845, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (846, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (847, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (848, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (849, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (850, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (851, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (852, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (853, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (854, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (855, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (856, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (857, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (858, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (859, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (860, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (861, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (862, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (863, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (864, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (865, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (866, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (867, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (868, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (869, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (870, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (871, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (872, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (873, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (874, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (875, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (876, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (877, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (878, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (879, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (880, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (881, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (882, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (883, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (884, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (885, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (886, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (887, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (888, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (889, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (890, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (891, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (892, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (893, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (894, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (895, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (896, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (897, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (898, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (899, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (900, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (901, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (902, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (903, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (904, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (905, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (906, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (907, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (908, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (909, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (910, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (911, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (912, 2, 2.0, 0.0, 'M1191301')

INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (305, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (306, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (307, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (308, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (309, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (310, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (311, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (312, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (313, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (314, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (315, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (316, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (317, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (318, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (319, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (320, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (321, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (322, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (323, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (324, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (325, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (326, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (327, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (328, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (329, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (330, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (331, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (332, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (333, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (334, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (335, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (336, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (337, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (338, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (339, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (340, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (341, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (342, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (343, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (344, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (345, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (346, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (347, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (348, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (349, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (350, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (351, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (352, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (353, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (354, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (355, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (356, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (357, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (358, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (359, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (360, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (361, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (362, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (363, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (364, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (365, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (366, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (367, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (368, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (369, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (370, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (371, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (372, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (373, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (374, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (375, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (376, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (377, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (378, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (379, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (380, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (381, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (382, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (383, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (384, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (385, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (386, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (387, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (388, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (389, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (390, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (391, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (392, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (393, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (394, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (395, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (396, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (397, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (398, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (399, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (400, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (401, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (402, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (403, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (404, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (405, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (406, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (407, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (408, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (409, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (410, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (411, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (412, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (413, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (414, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (415, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (416, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (417, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (418, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (419, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (420, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (421, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (422, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (423, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (424, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (425, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (426, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (427, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (428, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (429, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (430, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (431, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (432, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (433, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (434, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (435, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (436, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (437, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (438, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (439, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (440, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (441, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (442, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (443, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (444, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (445, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (446, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (447, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (448, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (449, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (450, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (451, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (452, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (453, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (454, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (455, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (456, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (457, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (458, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (459, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (460, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (461, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (462, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (463, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (464, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (465, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (466, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (467, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (468, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (469, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (470, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (471, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (472, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (473, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (474, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (475, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (476, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (477, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (478, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (479, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (480, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (481, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (482, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (483, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (484, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (485, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (486, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (487, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (488, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (489, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (490, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (491, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (492, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (493, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (494, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (495, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (496, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (497, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (498, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (499, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (500, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (501, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (502, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (503, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (504, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (505, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (506, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (507, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (508, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (509, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (510, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (511, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (512, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (513, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (514, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (515, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (516, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (517, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (518, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (519, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (520, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (521, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (522, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (523, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (524, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (525, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (526, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (527, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (528, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (529, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (530, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (531, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (532, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (533, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (534, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (535, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (536, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (537, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (538, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (539, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (540, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (541, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (542, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (543, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (544, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (545, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (546, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (547, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (548, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (549, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (550, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (551, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (552, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (553, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (554, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (555, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (556, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (557, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (558, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (559, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (560, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (561, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (562, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (563, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (564, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (565, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (566, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (567, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (568, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (569, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (570, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (571, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (572, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (573, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (574, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (575, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (576, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (577, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (578, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (579, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (580, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (581, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (582, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (583, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (584, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (585, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (586, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (587, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (588, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (589, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (590, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (591, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (592, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (593, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (594, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (595, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (596, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (597, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (598, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (599, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (600, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (601, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (602, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (603, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (604, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (605, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (606, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (607, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (608, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (609, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (610, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (611, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (612, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (613, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (614, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (615, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (616, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (617, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (618, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (619, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (620, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (621, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (622, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (623, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (624, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (625, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (626, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (627, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (628, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (629, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (630, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (631, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (632, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (633, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (634, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (635, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (636, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (637, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (638, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (639, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (640, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (641, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (642, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (643, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (644, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (645, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (646, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (647, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (648, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (649, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (650, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (651, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (652, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (653, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (654, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (655, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (656, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (657, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (658, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (659, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (660, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (661, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (662, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (663, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (664, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (665, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (666, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (667, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (668, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (669, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (670, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (671, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (672, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (673, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (674, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (675, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (676, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (677, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (678, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (679, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (680, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (681, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (682, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (683, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (684, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (685, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (686, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (687, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (688, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (689, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (690, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (691, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (692, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (693, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (694, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (695, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (696, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (697, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (698, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (699, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (700, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (701, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (702, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (703, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (704, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (705, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (706, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (707, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (708, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (709, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (710, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (711, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (712, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (713, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (714, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (715, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (716, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (717, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (718, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (719, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (720, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (721, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (722, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (723, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (724, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (725, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (726, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (727, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (728, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (729, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (730, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (731, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (732, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (733, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (734, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (735, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (736, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (737, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (738, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (739, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (740, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (741, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (742, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (743, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (744, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (745, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (746, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (747, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (748, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (749, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (750, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (751, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (752, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (753, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (754, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (755, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (756, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (757, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (758, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (759, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (760, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (761, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (762, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (763, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (764, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (765, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (766, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (767, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (768, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (769, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (770, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (771, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (772, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (773, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (774, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (775, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (776, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (777, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (778, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (779, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (780, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (781, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (782, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (783, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (784, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (785, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (786, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (787, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (788, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (789, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (790, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (791, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (792, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (793, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (794, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (795, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (796, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (797, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (798, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (799, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (800, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (801, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (802, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (803, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (804, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (805, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (806, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (807, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (808, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (809, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (810, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (811, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (812, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (813, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (814, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (815, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (816, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (817, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (818, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (819, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (820, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (821, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (822, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (823, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (824, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (825, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (826, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (827, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (828, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (829, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (830, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (831, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (832, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (833, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (834, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (835, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (836, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (837, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (838, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (839, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (840, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (841, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (842, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (843, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (844, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (845, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (846, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (847, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (848, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (849, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (850, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (851, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (852, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (853, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (854, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (855, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (856, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (857, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (858, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (859, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (860, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (861, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (862, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (863, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (864, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (865, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (866, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (867, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (868, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (869, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (870, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (871, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (872, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (873, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (874, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (875, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (876, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (877, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (878, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (879, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (880, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (881, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (882, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (883, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (884, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (885, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (886, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (887, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (888, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (889, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (890, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (891, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (892, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (893, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (894, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (895, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (896, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (897, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (898, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (899, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (900, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (901, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (902, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (903, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (904, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (905, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (906, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (907, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (908, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (909, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (910, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (911, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (912, 2, 2.0, 0.0, 'M1191301')


INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (305, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (306, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (307, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (308, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (309, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (310, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (311, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (312, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (313, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (314, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (315, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (316, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (317, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (318, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (319, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (320, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (321, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (322, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (323, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (324, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (325, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (326, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (327, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (328, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (329, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (330, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (331, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (332, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (333, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (334, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (335, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (336, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (337, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (338, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (339, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (340, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (341, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (342, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (343, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (344, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (345, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (346, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (347, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (348, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (349, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (350, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (351, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (352, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (353, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (354, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (355, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (356, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (357, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (358, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (359, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (360, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (361, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (362, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (363, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (364, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (365, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (366, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (367, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (368, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (369, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (370, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (371, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (372, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (373, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (374, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (375, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (376, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (377, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (378, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (379, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (380, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (381, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (382, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (383, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (384, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (385, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (386, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (387, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (388, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (389, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (390, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (391, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (392, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (393, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (394, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (395, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (396, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (397, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (398, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (399, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (400, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (401, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (402, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (403, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (404, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (405, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (406, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (407, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (408, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (409, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (410, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (411, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (412, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (413, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (414, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (415, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (416, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (417, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (418, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (419, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (420, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (421, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (422, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (423, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (424, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (425, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (426, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (427, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (428, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (429, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (430, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (431, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (432, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (433, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (434, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (435, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (436, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (437, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (438, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (439, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (440, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (441, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (442, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (443, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (444, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (445, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (446, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (447, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (448, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (449, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (450, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (451, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (452, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (453, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (454, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (455, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (456, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (457, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (458, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (459, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (460, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (461, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (462, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (463, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (464, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (465, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (466, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (467, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (468, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (469, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (470, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (471, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (472, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (473, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (474, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (475, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (476, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (477, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (478, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (479, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (480, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (481, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (482, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (483, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (484, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (485, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (486, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (487, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (488, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (489, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (490, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (491, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (492, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (493, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (494, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (495, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (496, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (497, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (498, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (499, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (500, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (501, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (502, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (503, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (504, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (505, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (506, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (507, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (508, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (509, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (510, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (511, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (512, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (513, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (514, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (515, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (516, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (517, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (518, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (519, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (520, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (521, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (522, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (523, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (524, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (525, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (526, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (527, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (528, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (529, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (530, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (531, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (532, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (533, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (534, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (535, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (536, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (537, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (538, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (539, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (540, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (541, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (542, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (543, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (544, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (545, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (546, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (547, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (548, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (549, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (550, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (551, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (552, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (553, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (554, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (555, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (556, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (557, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (558, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (559, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (560, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (561, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (562, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (563, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (564, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (565, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (566, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (567, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (568, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (569, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (570, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (571, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (572, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (573, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (574, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (575, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (576, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (577, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (578, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (579, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (580, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (581, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (582, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (583, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (584, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (585, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (586, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (587, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (588, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (589, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (590, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (591, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (592, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (593, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (594, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (595, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (596, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (597, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (598, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (599, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (600, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (601, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (602, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (603, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (604, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (605, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (606, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (607, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (608, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (609, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (610, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (611, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (612, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (613, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (614, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (615, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (616, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (617, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (618, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (619, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (620, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (621, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (622, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (623, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (624, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (625, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (626, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (627, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (628, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (629, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (630, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (631, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (632, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (633, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (634, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (635, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (636, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (637, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (638, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (639, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (640, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (641, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (642, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (643, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (644, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (645, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (646, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (647, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (648, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (649, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (650, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (651, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (652, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (653, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (654, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (655, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (656, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (657, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (658, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (659, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (660, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (661, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (662, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (663, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (664, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (665, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (666, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (667, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (668, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (669, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (670, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (671, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (672, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (673, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (674, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (675, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (676, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (677, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (678, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (679, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (680, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (681, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (682, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (683, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (684, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (685, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (686, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (687, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (688, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (689, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (690, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (691, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (692, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (693, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (694, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (695, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (696, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (697, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (698, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (699, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (700, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (701, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (702, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (703, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (704, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (705, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (706, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (707, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (708, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (709, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (710, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (711, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (712, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (713, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (714, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (715, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (716, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (717, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (718, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (719, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (720, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (721, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (722, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (723, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (724, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (725, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (726, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (727, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (728, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (729, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (730, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (731, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (732, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (733, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (734, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (735, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (736, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (737, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (738, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (739, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (740, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (741, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (742, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (743, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (744, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (745, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (746, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (747, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (748, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (749, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (750, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (751, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (752, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (753, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (754, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (755, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (756, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (757, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (758, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (759, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (760, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (761, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (762, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (763, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (764, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (765, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (766, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (767, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (768, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (769, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (770, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (771, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (772, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (773, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (774, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (775, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (776, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (777, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (778, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (779, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (780, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (781, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (782, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (783, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (784, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (785, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (786, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (787, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (788, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (789, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (790, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (791, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (792, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (793, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (794, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (795, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (796, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (797, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (798, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (799, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (800, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (801, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (802, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (803, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (804, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (805, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (806, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (807, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (808, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (809, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (810, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (811, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (812, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (813, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (814, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (815, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (816, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (817, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (818, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (819, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (820, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (821, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (822, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (823, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (824, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (825, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (826, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (827, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (828, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (829, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (830, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (831, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (832, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (833, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (834, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (835, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (836, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (837, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (838, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (839, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (840, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (841, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (842, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (843, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (844, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (845, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (846, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (847, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (848, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (849, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (850, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (851, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (852, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (853, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (854, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (855, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (856, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (857, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (858, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (859, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (860, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (861, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (862, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (863, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (864, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (865, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (866, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (867, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (868, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (869, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (870, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (871, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (872, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (873, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (874, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (875, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (876, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (877, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (878, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (879, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (880, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (881, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (882, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (883, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (884, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (885, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (886, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (887, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (888, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (889, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (890, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (891, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (892, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (893, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (894, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (895, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (896, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (897, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (898, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (899, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (900, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (901, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (902, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (903, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (904, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (905, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (906, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (907, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (908, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (909, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (910, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (911, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (912, 4, 3.0, 0.0, 'M1191303')


INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (305, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (306, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (307, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (308, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (309, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (310, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (311, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (312, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (313, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (314, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (315, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (316, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (317, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (318, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (319, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (320, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (321, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (322, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (323, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (324, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (325, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (326, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (327, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (328, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (329, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (330, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (331, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (332, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (333, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (334, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (335, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (336, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (337, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (338, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (339, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (340, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (341, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (342, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (343, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (344, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (345, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (346, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (347, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (348, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (349, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (350, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (351, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (352, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (353, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (354, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (355, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (356, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (357, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (358, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (359, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (360, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (361, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (362, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (363, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (364, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (365, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (366, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (367, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (368, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (369, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (370, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (371, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (372, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (373, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (374, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (375, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (376, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (377, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (378, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (379, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (380, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (381, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (382, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (383, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (384, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (385, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (386, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (387, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (388, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (389, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (390, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (391, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (392, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (393, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (394, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (395, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (396, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (397, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (398, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (399, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (400, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (401, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (402, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (403, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (404, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (405, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (406, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (407, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (408, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (409, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (410, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (411, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (412, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (413, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (414, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (415, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (416, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (417, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (418, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (419, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (420, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (421, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (422, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (423, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (424, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (425, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (426, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (427, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (428, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (429, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (430, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (431, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (432, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (433, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (434, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (435, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (436, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (437, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (438, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (439, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (440, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (441, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (442, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (443, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (444, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (445, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (446, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (447, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (448, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (449, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (450, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (451, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (452, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (453, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (454, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (455, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (456, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (457, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (458, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (459, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (460, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (461, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (462, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (463, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (464, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (465, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (466, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (467, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (468, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (469, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (470, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (471, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (472, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (473, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (474, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (475, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (476, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (477, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (478, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (479, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (480, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (481, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (482, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (483, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (484, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (485, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (486, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (487, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (488, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (489, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (490, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (491, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (492, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (493, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (494, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (495, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (496, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (497, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (498, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (499, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (500, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (501, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (502, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (503, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (504, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (505, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (506, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (507, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (508, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (509, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (510, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (511, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (512, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (513, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (514, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (515, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (516, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (517, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (518, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (519, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (520, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (521, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (522, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (523, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (524, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (525, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (526, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (527, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (528, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (529, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (530, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (531, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (532, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (533, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (534, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (535, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (536, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (537, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (538, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (539, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (540, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (541, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (542, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (543, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (544, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (545, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (546, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (547, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (548, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (549, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (550, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (551, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (552, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (553, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (554, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (555, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (556, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (557, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (558, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (559, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (560, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (561, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (562, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (563, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (564, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (565, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (566, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (567, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (568, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (569, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (570, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (571, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (572, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (573, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (574, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (575, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (576, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (577, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (578, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (579, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (580, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (581, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (582, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (583, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (584, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (585, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (586, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (587, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (588, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (589, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (590, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (591, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (592, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (593, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (594, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (595, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (596, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (597, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (598, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (599, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (600, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (601, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (602, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (603, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (604, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (605, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (606, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (607, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (608, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (609, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (610, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (611, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (612, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (613, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (614, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (615, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (616, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (617, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (618, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (619, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (620, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (621, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (622, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (623, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (624, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (625, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (626, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (627, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (628, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (629, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (630, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (631, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (632, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (633, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (634, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (635, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (636, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (637, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (638, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (639, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (640, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (641, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (642, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (643, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (644, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (645, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (646, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (647, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (648, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (649, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (650, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (651, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (652, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (653, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (654, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (655, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (656, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (657, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (658, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (659, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (660, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (661, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (662, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (663, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (664, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (665, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (666, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (667, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (668, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (669, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (670, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (671, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (672, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (673, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (674, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (675, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (676, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (677, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (678, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (679, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (680, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (681, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (682, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (683, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (684, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (685, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (686, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (687, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (688, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (689, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (690, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (691, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (692, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (693, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (694, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (695, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (696, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (697, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (698, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (699, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (700, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (701, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (702, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (703, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (704, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (705, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (706, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (707, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (708, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (709, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (710, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (711, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (712, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (713, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (714, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (715, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (716, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (717, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (718, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (719, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (720, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (721, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (722, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (723, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (724, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (725, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (726, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (727, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (728, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (729, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (730, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (731, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (732, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (733, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (734, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (735, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (736, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (737, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (738, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (739, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (740, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (741, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (742, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (743, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (744, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (745, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (746, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (747, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (748, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (749, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (750, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (751, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (752, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (753, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (754, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (755, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (756, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (757, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (758, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (759, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (760, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (761, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (762, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (763, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (764, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (765, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (766, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (767, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (768, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (769, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (770, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (771, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (772, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (773, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (774, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (775, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (776, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (777, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (778, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (779, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (780, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (781, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (782, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (783, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (784, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (785, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (786, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (787, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (788, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (789, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (790, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (791, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (792, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (793, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (794, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (795, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (796, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (797, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (798, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (799, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (800, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (801, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (802, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (803, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (804, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (805, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (806, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (807, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (808, 7, 2.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (809, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (810, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (811, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (812, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (813, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (814, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (815, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (816, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (817, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (818, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (819, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (820, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (821, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (822, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (823, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (824, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (825, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (826, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (827, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (828, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (829, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (830, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (831, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (832, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (833, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (834, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (835, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (836, 4, 2.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (837, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (838, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (839, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (840, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (841, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (842, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (843, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (844, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (845, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (846, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (847, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (848, 5, 3.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (849, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (850, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (851, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (852, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (853, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (854, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (855, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (856, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (857, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (858, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (859, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (860, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (861, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (862, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (863, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (864, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (865, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (866, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (867, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (868, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (869, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (870, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (871, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (872, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (873, 8, 1.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (874, 7, 1.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (875, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (876, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (877, 4, 3.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (878, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (879, 2, 4.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (880, 4, 1.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (881, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (882, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (883, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (884, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (885, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (886, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (887, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (888, 5, 2.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (889, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (890, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (891, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (892, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (893, 7, 3.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (894, 8, 3.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (895, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (896, 1, 3.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (897, 2, 1.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (898, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (899, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (900, 1, 4.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (901, 5, 4.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (902, 8, 4.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (903, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (904, 2, 2.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (905, 1, 2.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (906, 2, 3.0, 0.0, 'M1191301')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (907, 4, 4.0, 0.0, 'M1191303')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (908, 8, 2.0, 0.0, 'M1191307')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (909, 7, 4.0, 0.0, 'M1191306')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (910, 5, 1.0, 0.0, 'M1191304')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (911, 1, 1.0, 0.0, 'M1191300')
INSERT INTO [PullMedOrders] ([orderId],[medId],[poQty],[supQty],[mazNum]) VALUES (912, 4, 1.0, 0.0, 'M1191303')


