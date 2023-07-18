Select * from [PushOrders]
Select * from [PushMedOrders]
Select * from [Medicines]
Select * from [Departments]

Select * from [PushOrders]
where year(lastUpdate) = 2023 and depId = 3 and MONTH(lastUpdate) = 7


Select * from [PushMedOrders]
where orderId between 675 and 688 and medId = 4

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
WHERE [orderId] = 688


Select * from [Usages]
where year(lastUpdate) =2023 and depId = 3 and MONTH(lastUpdate) = 3

Select * from [MedUsages]
where [usageId] = 721

Select * from [MedUsages]
where [usageId] = 38

INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 3, '11798', 'I', '2023-02-02 11:25:58', '2023-02-04 11:25:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 3, '11569', 'I', '2022-07-02 11:25:58', '2022-07-04 11:25:58');
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (689, 4, 12.0, 10.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (689, 4, 34.0, 31.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (689, 2, 33.0, 31.0, 'M1191301')


INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 3, '11112', 'I', '2022-01-29 11:25:58', '2022-01-31 11:25:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 3, '11113', 'I', '2022-01-07 17:46:41', '2022-01-09 17:46:41');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 4, '11114', 'I', '2022-01-04 20:59:18', '2022-01-06 20:59:18');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 4, '11115', 'I', '2022-01-10 22:31:08', '2022-01-12 22:31:08');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 5, '11116', 'I', '2022-01-10 19:55:05', '2022-01-12 19:55:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 5, '11117', 'I', '2022-01-30 10:00:27', '2022-02-01 10:00:27');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 6, '11118', 'I', '2022-01-17 02:41:13', '2022-01-19 02:41:13');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 6, '11119', 'I', '2022-01-14 01:15:07', '2022-01-16 01:15:07');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 7, '11120', 'I', '2022-01-13 02:21:00', '2022-01-15 02:21:00');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 7, '11121', 'I', '2022-01-20 03:41:18', '2022-01-22 03:41:18');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 8, '11122', 'I', '2022-01-27 09:41:50', '2022-01-29 09:41:50');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 8, '11123', 'I', '2022-01-04 14:00:36', '2022-01-06 14:00:36');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 9, '11124', 'I', '2022-01-15 21:39:08', '2022-01-17 21:39:08');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 9, '11125', 'I', '2022-01-06 14:25:57', '2022-01-08 14:25:57');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 10, '11126', 'I', '2022-01-23 09:58:13', '2022-01-25 09:58:13');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 10, '11127', 'I', '2022-01-05 00:19:13', '2022-01-07 00:19:13');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 11, '11128', 'I', '2022-01-23 18:26:44', '2022-01-25 18:26:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 11, '11129', 'I', '2022-01-21 18:27:17', '2022-01-23 18:27:17');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 12, '11130', 'I', '2022-01-08 05:17:39', '2022-01-10 05:17:39');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11131', 'I', '2022-01-24 18:03:05', '2022-01-26 18:03:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 13, '11132', 'I', '2022-01-05 16:04:17', '2022-01-07 16:04:17');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 13, '11133', 'I', '2022-01-19 11:51:55', '2022-01-21 11:51:55');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 14, '11134', 'I', '2022-01-22 10:05:15', '2022-01-24 10:05:15');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 14, '11135', 'I', '2022-01-19 16:40:57', '2022-01-21 16:40:57');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 3, '11136', 'I', '2022-02-20 14:45:03', '2022-02-22 14:45:03');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 3, '11137', 'I', '2022-02-16 10:34:04', '2022-02-18 10:34:04');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 4, '11138', 'I', '2022-02-21 06:59:47', '2022-02-23 06:59:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 4, '11139', 'I', '2022-02-12 12:11:32', '2022-02-14 12:11:32');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 5, '11140', 'I', '2022-02-12 14:39:50', '2022-02-14 14:39:50');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 5, '11141', 'I', '2022-01-31 08:41:45', '2022-02-02 08:41:45');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 6, '11142', 'I', '2022-02-24 22:37:11', '2022-02-26 22:37:11');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 6, '11143', 'I', '2022-02-28 16:17:33', '2022-03-02 16:17:33');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 7, '11144', 'I', '2022-02-26 10:15:56', '2022-02-28 10:15:56');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 7, '11145', 'I', '2022-02-06 15:37:26', '2022-02-08 15:37:26');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 8, '11146', 'I', '2022-02-25 01:10:12', '2022-02-27 01:10:12');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 8, '11147', 'I', '2022-02-09 23:25:59', '2022-02-11 23:25:59');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 9, '11148', 'I', '2022-02-13 02:39:25', '2022-02-15 02:39:25');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 9, '11149', 'I', '2022-02-23 13:46:21', '2022-02-25 13:46:21');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 10, '11150', 'I', '2022-02-16 09:00:06', '2022-02-18 09:00:06');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 10, '11151', 'I', '2022-02-20 23:00:02', '2022-02-22 23:00:02');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 11, '11152', 'I', '2022-02-10 15:50:42', '2022-02-12 15:50:42');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 11, '11153', 'I', '2022-02-24 18:45:49', '2022-02-26 18:45:49');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 12, '11154', 'I', '2022-02-13 18:45:41', '2022-02-15 18:45:41');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 12, '11155', 'I', '2022-02-04 22:18:22', '2022-02-06 22:18:22');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 13, '11156', 'I', '2022-02-18 21:49:05', '2022-02-20 21:49:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 13, '11157', 'I', '2022-02-14 10:26:38', '2022-02-16 10:26:38');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 14, '11158', 'I', '2022-02-12 22:24:58', '2022-02-14 22:24:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 14, '11159', 'I', '2022-02-10 13:03:08', '2022-02-12 13:03:08');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 3, '11160', 'I', '2022-03-29 14:31:58', '2022-03-31 14:31:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 3, '11161', 'I', '2022-03-30 14:49:29', '2022-04-01 14:49:29');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 4, '11162', 'I', '2022-03-12 23:58:43', '2022-03-14 23:58:43');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 4, '11163', 'I', '2022-03-22 19:08:25', '2022-03-24 19:08:25');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 5, '11164', 'I', '2022-03-11 21:11:07', '2022-03-13 21:11:07');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 5, '11165', 'I', '2022-03-31 15:43:45', '2022-04-02 15:43:45');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 6, '11166', 'I', '2022-03-17 01:18:43', '2022-03-19 01:18:43');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 6, '11167', 'I', '2022-03-17 03:00:58', '2022-03-19 03:00:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 7, '11168', 'I', '2022-03-31 13:51:44', '2022-04-02 13:51:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 7, '11169', 'I', '2022-03-24 17:46:08', '2022-03-26 17:46:08');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 8, '11170', 'I', '2022-03-31 15:45:12', '2022-04-02 15:45:12');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 8, '11171', 'I', '2022-03-22 12:25:05', '2022-03-24 12:25:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 9, '11172', 'I', '2022-03-03 04:12:31', '2022-03-05 04:12:31');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 9, '11173', 'I', '2022-03-16 01:41:24', '2022-03-18 01:41:24');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 10, '11174', 'I', '2022-03-08 06:19:19', '2022-03-10 06:19:19');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 10, '11175', 'I', '2022-03-23 12:07:09', '2022-03-25 12:07:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 11, '11176', 'I', '2022-03-11 06:10:07', '2022-03-13 06:10:07');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 11, '11177', 'I', '2022-03-23 16:44:41', '2022-03-25 16:44:41');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 12, '11178', 'I', '2022-03-10 10:05:10', '2022-03-12 10:05:10');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 12, '11179', 'I', '2022-03-30 03:40:43', '2022-04-01 03:40:43');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 13, '11180', 'I', '2022-03-14 06:36:46', '2022-03-16 06:36:46');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 13, '11181', 'I', '2022-03-20 10:26:00', '2022-03-22 10:26:00');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 14, '11182', 'I', '2022-03-08 18:32:05', '2022-03-10 18:32:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 14, '11183', 'I', '2022-03-21 08:14:17', '2022-03-23 08:14:17');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 3, '11184', 'I', '2022-04-11 21:29:01', '2022-04-13 21:29:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 3, '11185', 'I', '2022-04-06 15:24:12', '2022-04-08 15:24:12');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 4, '11186', 'I', '2022-04-04 03:08:10', '2022-04-06 03:08:10');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 4, '11187', 'I', '2022-04-13 02:15:34', '2022-04-15 02:15:34');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 5, '11188', 'I', '2022-04-02 03:38:03', '2022-04-04 03:38:03');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 5, '11189', 'I', '2022-04-08 20:40:30', '2022-04-10 20:40:30');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 6, '11190', 'I', '2022-04-16 08:21:19', '2022-04-18 08:21:19');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 6, '11191', 'I', '2022-04-20 06:37:01', '2022-04-22 06:37:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 7, '11192', 'I', '2022-04-14 00:27:55', '2022-04-16 00:27:55');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 7, '11193', 'I', '2022-04-16 18:03:31', '2022-04-18 18:03:31');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 8, '11194', 'I', '2022-04-12 03:06:05', '2022-04-14 03:06:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 8, '11195', 'I', '2022-04-01 11:56:05', '2022-04-03 11:56:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 9, '11196', 'I', '2022-04-08 10:24:29', '2022-04-10 10:24:29');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 9, '11197', 'I', '2022-04-01 06:21:57', '2022-04-03 06:21:57');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 10, '11198', 'I', '2022-04-16 11:16:15', '2022-04-18 11:16:15');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 10, '11199', 'I', '2022-04-27 10:11:09', '2022-04-29 10:11:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 11, '11200', 'I', '2022-04-07 22:43:32', '2022-04-09 22:43:32');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 11, '11201', 'I', '2022-04-20 06:52:10', '2022-04-22 06:52:10');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 12, '11202', 'I', '2022-04-11 12:31:58', '2022-04-13 12:31:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11203', 'I', '2022-04-24 05:43:21', '2022-04-26 05:43:21');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 13, '11204', 'I', '2022-04-20 15:42:38', '2022-04-22 15:42:38');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 13, '11205', 'I', '2022-04-06 11:11:40', '2022-04-08 11:11:40');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 14, '11206', 'I', '2022-04-30 07:07:09', '2022-05-02 07:07:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 14, '11207', 'I', '2022-04-02 03:07:30', '2022-04-04 03:07:30');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 3, '11208', 'I', '2022-05-08 04:40:34', '2022-05-10 04:40:34');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 3, '11209', 'I', '2022-05-25 18:17:56', '2022-05-27 18:17:56');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 4, '11210', 'I', '2022-05-22 08:12:51', '2022-05-24 08:12:51');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 4, '11211', 'I', '2022-05-14 15:45:15', '2022-05-16 15:45:15');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 5, '11212', 'I', '2022-05-30 04:18:40', '2022-06-01 04:18:40');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 5, '11213', 'I', '2022-05-16 05:55:22', '2022-05-18 05:55:22');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 6, '11214', 'I', '2022-05-08 14:05:24', '2022-05-10 14:05:24');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 6, '11215', 'I', '2022-05-16 19:55:23', '2022-05-18 19:55:23');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 7, '11216', 'I', '2022-05-04 20:58:24', '2022-05-06 20:58:24');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 7, '11217', 'I', '2022-05-16 03:12:22', '2022-05-18 03:12:22');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 8, '11218', 'I', '2022-05-17 14:43:05', '2022-05-19 14:43:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 8, '11219', 'I', '2022-05-27 04:09:52', '2022-05-29 04:09:52');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 9, '11220', 'I', '2022-05-03 20:27:52', '2022-05-05 20:27:52');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 9, '11221', 'I', '2022-05-02 20:18:00', '2022-05-04 20:18:00');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 10, '11222', 'I', '2022-05-24 10:31:40', '2022-05-26 10:31:40');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 10, '11223', 'I', '2022-05-03 22:13:07', '2022-05-05 22:13:07');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 11, '11224', 'I', '2022-05-24 18:36:06', '2022-05-26 18:36:06');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 11, '11225', 'I', '2022-05-28 08:36:26', '2022-05-30 08:36:26');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 12, '11226', 'I', '2022-05-15 06:06:36', '2022-05-17 06:06:36');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 12, '11227', 'I', '2022-05-02 00:49:52', '2022-05-04 00:49:52');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 13, '11228', 'I', '2022-05-20 08:29:34', '2022-05-22 08:29:34');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 13, '11229', 'I', '2022-05-05 20:01:40', '2022-05-07 20:01:40');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 14, '11230', 'I', '2022-05-15 02:51:11', '2022-05-17 02:51:11');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 14, '11231', 'I', '2022-05-21 16:20:47', '2022-05-23 16:20:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 3, '11232', 'I', '2022-06-02 14:26:04', '2022-06-04 14:26:04');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 3, '11233', 'I', '2022-06-08 23:09:07', '2022-06-10 23:09:07');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 4, '11234', 'I', '2022-06-24 14:30:28', '2022-06-26 14:30:28');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 4, '11235', 'I', '2022-06-06 02:22:46', '2022-06-08 02:22:46');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 5, '11236', 'I', '2022-06-12 05:47:15', '2022-06-14 05:47:15');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 5, '11237', 'I', '2022-06-12 14:32:58', '2022-06-14 14:32:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 6, '11238', 'I', '2022-06-26 16:53:50', '2022-06-28 16:53:50');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 6, '11239', 'I', '2022-06-23 10:31:30', '2022-06-25 10:31:30');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 7, '11240', 'I', '2022-06-04 01:55:26', '2022-06-06 01:55:26');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 7, '11241', 'I', '2022-06-03 02:17:58', '2022-06-05 02:17:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 8, '11242', 'I', '2022-06-16 00:10:47', '2022-06-18 00:10:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 8, '11243', 'I', '2022-05-31 05:44:55', '2022-06-02 05:44:55');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 9, '11244', 'I', '2022-05-31 04:41:54', '2022-06-02 04:41:54');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 9, '11245', 'I', '2022-06-09 03:43:08', '2022-06-11 03:43:08');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 10, '11246', 'I', '2022-06-19 00:42:43', '2022-06-21 00:42:43');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 10, '11247', 'I', '2022-06-12 01:39:41', '2022-06-14 01:39:41');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 11, '11248', 'I', '2022-06-08 20:26:58', '2022-06-10 20:26:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 11, '11249', 'I', '2022-06-06 11:25:53', '2022-06-08 11:25:53');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11250', 'I', '2022-06-11 01:18:41', '2022-06-13 01:18:41');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 12, '11251', 'I', '2022-06-12 01:41:35', '2022-06-14 01:41:35');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 13, '11252', 'I', '2022-06-12 13:20:04', '2022-06-14 13:20:04');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 13, '11253', 'I', '2022-06-16 21:13:51', '2022-06-18 21:13:51');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 14, '11254', 'I', '2022-06-10 10:01:12', '2022-06-12 10:01:12');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 14, '11255', 'I', '2022-06-05 05:06:28', '2022-06-07 05:06:28');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 3, '11256', 'I', '2022-07-26 02:05:33', '2022-07-28 02:05:33');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 3, '11257', 'I', '2022-07-11 11:09:09', '2022-07-13 11:09:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 4, '11258', 'I', '2022-07-23 13:44:51', '2022-07-25 13:44:51');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 4, '11259', 'I', '2022-07-11 13:58:02', '2022-07-13 13:58:02');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 5, '11260', 'I', '2022-07-16 02:39:20', '2022-07-18 02:39:20');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 5, '11261', 'I', '2022-07-08 00:47:23', '2022-07-10 00:47:23');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 6, '11262', 'I', '2022-07-09 16:43:04', '2022-07-11 16:43:04');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 6, '11263', 'I', '2022-07-29 20:17:45', '2022-07-31 20:17:45');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 7, '11264', 'I', '2022-07-27 16:27:47', '2022-07-29 16:27:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 7, '11265', 'I', '2022-07-20 04:20:44', '2022-07-22 04:20:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 8, '11266', 'I', '2022-07-16 03:37:27', '2022-07-18 03:37:27');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 8, '11267', 'I', '2022-07-29 09:36:14', '2022-07-31 09:36:14');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 9, '11268', 'I', '2022-07-21 08:00:31', '2022-07-23 08:00:31');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 9, '11269', 'I', '2022-07-09 22:27:56', '2022-07-11 22:27:56');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 10, '11270', 'I', '2022-07-24 05:10:38', '2022-07-26 05:10:38');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 10, '11271', 'I', '2022-07-05 08:49:43', '2022-07-07 08:49:43');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 11, '11272', 'I', '2022-07-26 16:42:18', '2022-07-28 16:42:18');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 11, '11273', 'I', '2022-07-16 17:15:56', '2022-07-18 17:15:56');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11274', 'I', '2022-07-11 12:11:05', '2022-07-13 12:11:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 12, '11275', 'I', '2022-07-22 21:34:29', '2022-07-24 21:34:29');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 13, '11276', 'I', '2022-07-07 12:03:47', '2022-07-09 12:03:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 13, '11277', 'I', '2022-07-09 01:58:50', '2022-07-11 01:58:50');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 14, '11278', 'I', '2022-07-04 13:50:01', '2022-07-06 13:50:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 14, '11279', 'I', '2022-07-21 18:35:32', '2022-07-23 18:35:32');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 3, '11280', 'I', '2022-08-22 19:07:26', '2022-08-24 19:07:26');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 3, '11281', 'I', '2022-08-10 23:19:54', '2022-08-12 23:19:54');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 4, '11282', 'I', '2022-07-30 14:07:44', '2022-08-01 14:07:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 4, '11283', 'I', '2022-08-23 01:29:22', '2022-08-25 01:29:22');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 5, '11284', 'I', '2022-08-17 05:18:46', '2022-08-19 05:18:46');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 5, '11285', 'I', '2022-08-03 10:04:39', '2022-08-05 10:04:39');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 6, '11286', 'I', '2022-08-25 06:11:20', '2022-08-27 06:11:20');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 6, '11287', 'I', '2022-08-10 22:24:16', '2022-08-12 22:24:16');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 7, '11288', 'I', '2022-08-03 09:50:09', '2022-08-05 09:50:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 7, '11289', 'I', '2022-08-16 22:32:51', '2022-08-18 22:32:51');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 8, '11290', 'I', '2022-08-18 05:59:36', '2022-08-20 05:59:36');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 8, '11291', 'I', '2022-08-12 23:29:49', '2022-08-14 23:29:49');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 9, '11292', 'I', '2022-08-12 11:34:19', '2022-08-14 11:34:19');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 9, '11293', 'I', '2022-08-10 01:36:31', '2022-08-12 01:36:31');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 10, '11294', 'I', '2022-08-26 13:41:46', '2022-08-28 13:41:46');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 10, '11295', 'I', '2022-08-11 17:46:46', '2022-08-13 17:46:46');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 11, '11296', 'I', '2022-08-27 06:43:38', '2022-08-29 06:43:38');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 11, '11297', 'I', '2022-08-13 05:03:31', '2022-08-15 05:03:31');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 12, '11298', 'I', '2022-08-21 08:45:10', '2022-08-23 08:45:10');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11299', 'I', '2022-08-10 14:03:48', '2022-08-12 14:03:48');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 13, '11300', 'I', '2022-08-26 11:32:44', '2022-08-28 11:32:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 13, '11301', 'I', '2022-08-11 10:51:40', '2022-08-13 10:51:40');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 14, '11302', 'I', '2022-08-28 18:29:52', '2022-08-30 18:29:52');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 14, '11303', 'I', '2022-08-18 18:42:11', '2022-08-20 18:42:11');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 3, '11304', 'I', '2022-09-10 14:57:32', '2022-09-12 14:57:32');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 3, '11305', 'I', '2022-09-01 21:25:08', '2022-09-03 21:25:08');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 4, '11306', 'I', '2022-09-09 08:44:48', '2022-09-11 08:44:48');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 4, '11307', 'I', '2022-09-22 02:13:44', '2022-09-24 02:13:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 5, '11308', 'I', '2022-09-13 17:03:35', '2022-09-15 17:03:35');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 5, '11309', 'I', '2022-09-20 17:05:52', '2022-09-22 17:05:52');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 6, '11310', 'I', '2022-09-27 03:39:42', '2022-09-29 03:39:42');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 6, '11311', 'I', '2022-09-11 22:19:20', '2022-09-13 22:19:20');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 7, '11312', 'I', '2022-09-09 04:11:33', '2022-09-11 04:11:33');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 7, '11313', 'I', '2022-09-02 13:54:11', '2022-09-04 13:54:11');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 8, '11314', 'I', '2022-09-13 05:52:46', '2022-09-15 05:52:46');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 8, '11315', 'I', '2022-09-07 01:12:26', '2022-09-09 01:12:26');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 9, '11316', 'I', '2022-08-30 22:30:06', '2022-09-01 22:30:06');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 9, '11317', 'I', '2022-08-31 02:11:33', '2022-09-02 02:11:33');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 10, '11318', 'I', '2022-09-20 08:58:36', '2022-09-22 08:58:36');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 10, '11319', 'I', '2022-09-14 02:53:28', '2022-09-16 02:53:28');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 11, '11320', 'I', '2022-09-27 22:10:45', '2022-09-29 22:10:45');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 11, '11321', 'I', '2022-09-24 13:02:41', '2022-09-26 13:02:41');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11322', 'I', '2022-08-29 21:42:52', '2022-08-31 21:42:52');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 12, '11323', 'I', '2022-09-22 20:17:21', '2022-09-24 20:17:21');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 13, '11324', 'I', '2022-09-15 05:01:44', '2022-09-17 05:01:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 13, '11325', 'I', '2022-09-06 07:31:25', '2022-09-08 07:31:25');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 14, '11326', 'I', '2022-09-26 22:51:27', '2022-09-28 22:51:27');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 14, '11327', 'I', '2022-09-23 10:51:42', '2022-09-25 10:51:42');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 3, '11328', 'I', '2022-10-03 01:58:37', '2022-10-05 01:58:37');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 3, '11329', 'I', '2022-10-10 22:34:41', '2022-10-12 22:34:41');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 4, '11330', 'I', '2022-10-26 23:32:10', '2022-10-28 23:32:10');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 4, '11331', 'I', '2022-09-29 21:22:55', '2022-10-01 21:22:55');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 5, '11332', 'I', '2022-10-24 15:39:36', '2022-10-26 15:39:36');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 5, '11333', 'I', '2022-10-26 20:38:21', '2022-10-28 20:38:21');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 6, '11334', 'I', '2022-10-05 02:11:55', '2022-10-07 02:11:55');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 6, '11335', 'I', '2022-10-09 19:08:45', '2022-10-11 19:08:45');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 7, '11336', 'I', '2022-10-10 00:50:40', '2022-10-12 00:50:40');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 7, '11337', 'I', '2022-10-23 17:00:24', '2022-10-25 17:00:24');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 8, '11338', 'I', '2022-10-13 19:25:15', '2022-10-15 19:25:15');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 8, '11339', 'I', '2022-10-23 09:10:09', '2022-10-25 09:10:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 9, '11340', 'I', '2022-10-22 13:33:09', '2022-10-24 13:33:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 9, '11341', 'I', '2022-10-20 05:24:52', '2022-10-22 05:24:52');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 10, '11342', 'I', '2022-10-27 21:19:15', '2022-10-29 21:19:15');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 10, '11343', 'I', '2022-10-09 06:31:50', '2022-10-11 06:31:50');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 11, '11344', 'I', '2022-10-26 21:56:50', '2022-10-28 21:56:50');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 11, '11345', 'I', '2022-10-06 04:20:51', '2022-10-08 04:20:51');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11346', 'I', '2022-09-29 07:27:02', '2022-10-01 07:27:02');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 12, '11347', 'I', '2022-10-21 18:34:46', '2022-10-23 18:34:46');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 13, '11348', 'I', '2022-10-20 14:59:53', '2022-10-22 14:59:53');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 13, '11349', 'I', '2022-10-14 07:57:30', '2022-10-16 07:57:30');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 14, '11350', 'I', '2022-09-29 22:17:25', '2022-10-01 22:17:25');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 14, '11351', 'I', '2022-10-14 21:09:19', '2022-10-16 21:09:19');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 3, '11352', 'I', '2022-11-02 10:54:41', '2022-11-04 10:54:41');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 3, '11353', 'I', '2022-11-15 12:03:12', '2022-11-17 12:03:12');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 4, '11354', 'I', '2022-11-19 00:33:13', '2022-11-21 00:33:13');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 4, '11355', 'I', '2022-11-03 17:05:53', '2022-11-05 17:05:53');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 5, '11356', 'I', '2022-10-31 15:33:33', '2022-11-02 15:33:33');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 5, '11357', 'I', '2022-11-10 21:52:09', '2022-11-12 21:52:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 6, '11358', 'I', '2022-11-05 01:48:52', '2022-11-07 01:48:52');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 6, '11359', 'I', '2022-11-17 09:49:53', '2022-11-19 09:49:53');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 7, '11360', 'I', '2022-11-22 04:31:48', '2022-11-24 04:31:48');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 7, '11361', 'I', '2022-11-12 16:18:47', '2022-11-14 16:18:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 8, '11362', 'I', '2022-11-26 13:07:15', '2022-11-28 13:07:15');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 8, '11363', 'I', '2022-11-19 13:39:26', '2022-11-21 13:39:26');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 9, '11364', 'I', '2022-11-03 08:43:10', '2022-11-05 08:43:10');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 9, '11365', 'I', '2022-10-28 20:54:34', '2022-10-30 20:54:34');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 10, '11366', 'I', '2022-11-24 18:02:47', '2022-11-26 18:02:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 10, '11367', 'I', '2022-10-31 08:22:44', '2022-11-02 08:22:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 11, '11368', 'I', '2022-11-02 04:08:01', '2022-11-04 04:08:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 11, '11369', 'I', '2022-11-18 21:33:36', '2022-11-20 21:33:36');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 12, '11370', 'I', '2022-11-20 05:08:55', '2022-11-22 05:08:55');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 12, '11371', 'I', '2022-10-30 08:02:44', '2022-11-01 08:02:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 13, '11372', 'I', '2022-11-25 21:43:38', '2022-11-27 21:43:38');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 13, '11373', 'I', '2022-11-13 13:21:06', '2022-11-15 13:21:06');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 14, '11374', 'I', '2022-11-14 23:30:45', '2022-11-16 23:30:45');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 14, '11375', 'I', '2022-11-08 04:47:49', '2022-11-10 04:47:49');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 3, '11376', 'I', '2022-11-29 10:43:25', '2022-12-01 10:43:25');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 3, '11377', 'I', '2022-12-10 10:31:23', '2022-12-12 10:31:23');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 4, '11378', 'I', '2022-12-18 23:45:58', '2022-12-20 23:45:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 4, '11379', 'I', '2022-12-03 22:34:20', '2022-12-05 22:34:20');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 5, '11380', 'I', '2022-12-01 21:45:31', '2022-12-03 21:45:31');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 5, '11381', 'I', '2022-11-28 20:37:58', '2022-11-30 20:37:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 6, '11382', 'I', '2022-12-13 12:45:34', '2022-12-15 12:45:34');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 6, '11383', 'I', '2022-12-18 22:44:11', '2022-12-20 22:44:11');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 7, '11384', 'I', '2022-12-10 15:27:35', '2022-12-12 15:27:35');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 7, '11385', 'I', '2022-11-29 12:15:22', '2022-12-01 12:15:22');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 8, '11386', 'I', '2022-12-09 08:07:08', '2022-12-11 08:07:08');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 8, '11387', 'I', '2022-12-04 14:32:59', '2022-12-06 14:32:59');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 9, '11388', 'I', '2022-12-13 03:43:01', '2022-12-15 03:43:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 9, '11389', 'I', '2022-12-03 06:15:05', '2022-12-05 06:15:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 10, '11390', 'I', '2022-12-26 15:08:57', '2022-12-28 15:08:57');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 10, '11391', 'I', '2022-12-14 17:10:22', '2022-12-16 17:10:22');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 11, '11392', 'I', '2022-12-02 04:15:35', '2022-12-04 04:15:35');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 11, '11393', 'I', '2022-12-14 13:29:28', '2022-12-16 13:29:28');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11394', 'I', '2022-12-17 11:09:53', '2022-12-19 11:09:53');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 12, '11395', 'I', '2022-12-06 21:30:18', '2022-12-08 21:30:18');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 13, '11396', 'I', '2022-12-19 09:41:07', '2022-12-21 09:41:07');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 13, '11397', 'I', '2022-12-01 18:29:16', '2022-12-03 18:29:16');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 14, '11398', 'I', '2022-12-12 10:19:20', '2022-12-14 10:19:20');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 14, '11399', 'I', '2022-12-06 19:46:20', '2022-12-08 19:46:20');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 3, '11400', 'I', '2023-01-17 20:41:28', '2023-01-19 20:41:28');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 3, '11401', 'I', '2023-01-23 11:10:28', '2023-01-25 11:10:28');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 4, '11402', 'I', '2023-01-23 22:46:29', '2023-01-25 22:46:29');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 4, '11403', 'I', '2023-01-19 01:31:36', '2023-01-21 01:31:36');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 5, '11404', 'I', '2023-01-07 08:17:11', '2023-01-09 08:17:11');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 5, '11405', 'I', '2023-01-06 18:32:26', '2023-01-08 18:32:26');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 6, '11406', 'I', '2023-01-19 21:14:16', '2023-01-21 21:14:16');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 6, '11407', 'I', '2023-01-03 07:09:16', '2023-01-05 07:09:16');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 7, '11408', 'I', '2022-12-29 16:42:34', '2022-12-31 16:42:34');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 7, '11409', 'I', '2022-12-31 01:29:23', '2023-01-02 01:29:23');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 8, '11410', 'I', '2023-01-15 10:03:09', '2023-01-17 10:03:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 8, '11411', 'I', '2023-01-05 20:46:22', '2023-01-07 20:46:22');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 9, '11412', 'I', '2023-01-21 05:58:59', '2023-01-23 05:58:59');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 9, '11413', 'I', '2023-01-03 00:34:06', '2023-01-05 00:34:06');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 10, '11414', 'I', '2023-01-12 16:24:49', '2023-01-14 16:24:49');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 10, '11415', 'I', '2023-01-05 11:54:57', '2023-01-07 11:54:57');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 11, '11416', 'I', '2023-01-06 17:05:55', '2023-01-08 17:05:55');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 11, '11417', 'I', '2023-01-24 15:27:06', '2023-01-26 15:27:06');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 12, '11418', 'I', '2023-01-08 22:14:51', '2023-01-10 22:14:51');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11419', 'I', '2023-01-10 04:45:08', '2023-01-12 04:45:08');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 13, '11420', 'I', '2023-01-13 21:10:45', '2023-01-15 21:10:45');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 13, '11421', 'I', '2023-01-22 10:26:06', '2023-01-24 10:26:06');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 14, '11422', 'I', '2022-12-31 17:32:22', '2023-01-02 17:32:22');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 14, '11423', 'I', '2023-01-10 00:51:56', '2023-01-12 00:51:56');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 3, '11424', 'I', '2023-02-15 13:03:45', '2023-02-17 13:03:45');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 3, '11425', 'I', '2023-02-03 01:38:01', '2023-02-05 01:38:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 4, '11426', 'I', '2023-01-28 12:34:25', '2023-01-30 12:34:25');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 4, '11427', 'I', '2023-01-26 20:53:39', '2023-01-28 20:53:39');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 5, '11428', 'I', '2023-01-29 07:19:24', '2023-01-31 07:19:24');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 5, '11429', 'I', '2023-02-02 07:00:48', '2023-02-04 07:00:48');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 6, '11430', 'I', '2023-01-28 11:42:53', '2023-01-30 11:42:53');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 6, '11431', 'I', '2023-01-26 22:32:23', '2023-01-28 22:32:23');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 7, '11432', 'I', '2023-02-23 02:07:26', '2023-02-25 02:07:26');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 7, '11433', 'I', '2023-02-02 00:01:49', '2023-02-04 00:01:49');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 8, '11434', 'I', '2023-01-29 07:34:22', '2023-01-31 07:34:22');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 8, '11435', 'I', '2023-02-03 20:08:35', '2023-02-05 20:08:35');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 9, '11436', 'I', '2023-02-15 14:46:43', '2023-02-17 14:46:43');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 9, '11437', 'I', '2023-02-24 17:40:51', '2023-02-26 17:40:51');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 10, '11438', 'I', '2023-02-07 05:34:34', '2023-02-09 05:34:34');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 10, '11439', 'I', '2023-01-29 23:36:44', '2023-01-31 23:36:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 11, '11440', 'I', '2023-02-24 06:48:14', '2023-02-26 06:48:14');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 11, '11441', 'I', '2023-02-04 10:33:38', '2023-02-06 10:33:38');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11442', 'I', '2023-02-01 02:04:01', '2023-02-03 02:04:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11443', 'I', '2023-01-27 07:56:45', '2023-01-29 07:56:45');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 13, '11444', 'I', '2023-02-15 11:06:57', '2023-02-17 11:06:57');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 13, '11445', 'I', '2023-01-31 21:05:05', '2023-02-02 21:05:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 14, '11446', 'I', '2023-01-31 11:17:15', '2023-02-02 11:17:15');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 14, '11447', 'I', '2023-01-28 17:16:43', '2023-01-30 17:16:43');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 3, '11448', 'I', '2023-02-28 12:17:07', '2023-03-02 12:17:07');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 3, '11449', 'I', '2023-03-13 00:16:16', '2023-03-15 00:16:16');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 4, '11450', 'I', '2023-03-15 11:44:09', '2023-03-17 11:44:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 4, '11451', 'I', '2023-03-19 09:23:36', '2023-03-21 09:23:36');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 5, '11452', 'I', '2023-03-04 12:37:26', '2023-03-06 12:37:26');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 5, '11453', 'I', '2023-02-27 11:17:06', '2023-03-01 11:17:06');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 6, '11454', 'I', '2023-03-21 22:12:19', '2023-03-23 22:12:19');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 6, '11455', 'I', '2023-02-26 04:47:28', '2023-02-28 04:47:28');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 7, '11456', 'I', '2023-02-28 04:41:12', '2023-03-02 04:41:12');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 7, '11457', 'I', '2023-03-24 09:04:59', '2023-03-26 09:04:59');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 8, '11458', 'I', '2023-03-14 06:22:33', '2023-03-16 06:22:33');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 8, '11459', 'I', '2023-03-18 04:58:23', '2023-03-20 04:58:23');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 9, '11460', 'I', '2023-03-17 04:57:06', '2023-03-19 04:57:06');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 9, '11461', 'I', '2023-03-02 21:40:55', '2023-03-04 21:40:55');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 10, '11462', 'I', '2023-03-26 16:35:08', '2023-03-28 16:35:08');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 10, '11463', 'I', '2023-03-10 17:45:47', '2023-03-12 17:45:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 11, '11464', 'I', '2023-03-07 16:36:14', '2023-03-09 16:36:14');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 11, '11465', 'I', '2023-03-16 16:10:47', '2023-03-18 16:10:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 12, '11466', 'I', '2023-03-08 19:45:23', '2023-03-10 19:45:23');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 12, '11467', 'I', '2023-03-25 12:47:38', '2023-03-27 12:47:38');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 13, '11468', 'I', '2023-03-20 17:21:49', '2023-03-22 17:21:49');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 13, '11469', 'I', '2023-02-26 18:12:02', '2023-02-28 18:12:02');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 14, '11470', 'I', '2023-03-25 02:15:46', '2023-03-27 02:15:46');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 14, '11471', 'I', '2023-03-09 01:23:11', '2023-03-11 01:23:11');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 3, '11472', 'I', '2023-04-11 07:48:15', '2023-04-13 07:48:15');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 3, '11473', 'I', '2023-04-19 01:02:56', '2023-04-21 01:02:56');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 4, '11474', 'I', '2023-04-15 12:17:59', '2023-04-17 12:17:59');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 4, '11475', 'I', '2023-03-31 10:47:52', '2023-04-02 10:47:52');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 5, '11476', 'I', '2023-04-17 15:08:20', '2023-04-19 15:08:20');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 5, '11477', 'I', '2023-04-18 22:32:17', '2023-04-20 22:32:17');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 6, '11478', 'I', '2023-04-21 08:23:56', '2023-04-23 08:23:56');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 6, '11479', 'I', '2023-04-11 15:45:25', '2023-04-13 15:45:25');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 7, '11480', 'I', '2023-04-11 00:41:14', '2023-04-13 00:41:14');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 7, '11481', 'I', '2023-04-05 21:01:17', '2023-04-07 21:01:17');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 8, '11482', 'I', '2023-04-21 16:22:28', '2023-04-23 16:22:28');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 8, '11483', 'I', '2023-04-04 16:03:22', '2023-04-06 16:03:22');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 9, '11484', 'I', '2023-03-31 05:38:12', '2023-04-02 05:38:12');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 9, '11485', 'I', '2023-04-09 00:35:07', '2023-04-11 00:35:07');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 10, '11486', 'I', '2023-04-14 00:30:04', '2023-04-16 00:30:04');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 10, '11487', 'I', '2023-04-20 11:14:39', '2023-04-22 11:14:39');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 11, '11488', 'I', '2023-04-02 20:00:41', '2023-04-04 20:00:41');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 11, '11489', 'I', '2023-04-06 20:09:32', '2023-04-08 20:09:32');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 12, '11490', 'I', '2023-04-21 03:21:37', '2023-04-23 03:21:37');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 12, '11491', 'I', '2023-04-09 21:28:26', '2023-04-11 21:28:26');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 13, '11492', 'I', '2023-03-30 07:20:24', '2023-04-01 07:20:24');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 13, '11493', 'I', '2023-04-14 21:54:47', '2023-04-16 21:54:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 14, '11494', 'I', '2023-03-31 09:46:15', '2023-04-02 09:46:15');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 14, '11495', 'I', '2023-03-30 11:57:15', '2023-04-01 11:57:15');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 3, '11496', 'I', '2023-04-30 17:29:24', '2023-05-02 17:29:24');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 3, '11497', 'I', '2023-05-01 16:43:30', '2023-05-03 16:43:30');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 4, '11498', 'I', '2023-05-23 03:35:51', '2023-05-25 03:35:51');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 4, '11499', 'I', '2023-04-28 11:59:44', '2023-04-30 11:59:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 5, '11500', 'I', '2023-05-21 06:53:48', '2023-05-23 06:53:48');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 5, '11501', 'I', '2023-05-03 15:11:47', '2023-05-05 15:11:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 6, '11502', 'I', '2023-05-19 08:53:00', '2023-05-21 08:53:00');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 6, '11503', 'I', '2023-04-26 04:50:18', '2023-04-28 04:50:18');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 7, '11504', 'I', '2023-05-17 10:25:03', '2023-05-19 10:25:03');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 7, '11505', 'I', '2023-05-19 00:57:04', '2023-05-21 00:57:04');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 8, '11506', 'I', '2023-05-10 21:52:09', '2023-05-12 21:52:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 8, '11507', 'I', '2023-04-29 22:06:26', '2023-05-01 22:06:26');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 9, '11508', 'I', '2023-05-10 07:35:28', '2023-05-12 07:35:28');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 9, '11509', 'I', '2023-04-28 01:17:07', '2023-04-30 01:17:07');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 10, '11510', 'I', '2023-05-15 10:26:13', '2023-05-17 10:26:13');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 10, '11511', 'I', '2023-05-23 12:35:35', '2023-05-25 12:35:35');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 11, '11512', 'I', '2023-05-23 17:24:20', '2023-05-25 17:24:20');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 11, '11513', 'I', '2023-05-23 08:23:33', '2023-05-25 08:23:33');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 12, '11514', 'I', '2023-05-15 11:58:28', '2023-05-17 11:58:28');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 12, '11515', 'I', '2023-04-27 22:11:11', '2023-04-29 22:11:11');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 13, '11516', 'I', '2023-05-07 22:03:52', '2023-05-09 22:03:52');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 13, '11517', 'I', '2023-05-06 21:40:47', '2023-05-08 21:40:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 14, '11518', 'I', '2023-05-15 21:50:30', '2023-05-17 21:50:30');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 14, '11519', 'I', '2023-05-05 13:15:29', '2023-05-07 13:15:29');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 3, '11520', 'I', '2023-06-13 04:21:07', '2023-06-15 04:21:07');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 3, '11521', 'I', '2023-05-28 06:01:35', '2023-05-30 06:01:35');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 4, '11522', 'I', '2023-06-05 12:16:35', '2023-06-07 12:16:35');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 4, '11523', 'I', '2023-06-05 10:32:04', '2023-06-07 10:32:04');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 5, '11524', 'I', '2023-06-11 04:23:53', '2023-06-13 04:23:53');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 5, '11525', 'I', '2023-06-22 19:41:36', '2023-06-24 19:41:36');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 6, '11526', 'I', '2023-05-27 01:11:03', '2023-05-29 01:11:03');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 6, '11527', 'I', '2023-05-26 14:27:28', '2023-05-28 14:27:28');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 7, '11528', 'I', '2023-05-26 19:57:43', '2023-05-28 19:57:43');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 7, '11529', 'I', '2023-06-13 01:57:31', '2023-06-15 01:57:31');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 8, '11530', 'I', '2023-06-02 18:00:15', '2023-06-04 18:00:15');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 8, '11531', 'I', '2023-06-16 00:17:13', '2023-06-18 00:17:13');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 9, '11532', 'I', '2023-06-14 09:19:48', '2023-06-16 09:19:48');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 9, '11533', 'I', '2023-06-17 17:02:02', '2023-06-19 17:02:02');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 10, '11534', 'I', '2023-05-27 08:27:54', '2023-05-29 08:27:54');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 10, '11535', 'I', '2023-06-19 17:54:58', '2023-06-21 17:54:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 11, '11536', 'I', '2023-05-29 15:21:44', '2023-05-31 15:21:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 11, '11537', 'I', '2023-06-02 16:29:03', '2023-06-04 16:29:03');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11538', 'I', '2023-06-24 22:44:52', '2023-06-26 22:44:52');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 12, '11539', 'I', '2023-06-23 20:03:48', '2023-06-25 20:03:48');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 13, '11540', 'I', '2023-05-29 13:33:01', '2023-05-31 13:33:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 13, '11541', 'I', '2023-06-19 05:29:21', '2023-06-21 05:29:21');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 14, '11542', 'I', '2023-05-31 03:33:30', '2023-06-02 03:33:30');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 14, '11543', 'I', '2023-05-31 18:23:03', '2023-06-02 18:23:03');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 3, '11544', 'I', '2023-07-23 19:41:45', '2023-07-25 19:41:45');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 3, '11545', 'I', '2023-07-16 22:31:44', '2023-07-18 22:31:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 4, '11546', 'I', '2023-07-20 15:58:51', '2023-07-22 15:58:51');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 4, '11547', 'I', '2023-06-26 16:14:50', '2023-06-28 16:14:50');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 5, '11548', 'I', '2023-07-10 01:14:55', '2023-07-12 01:14:55');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 5, '11549', 'I', '2023-07-15 07:13:15', '2023-07-17 07:13:15');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 6, '11550', 'I', '2023-07-22 01:41:29', '2023-07-24 01:41:29');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 6, '11551', 'I', '2023-07-03 03:31:41', '2023-07-05 03:31:41');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 7, '11552', 'I', '2023-06-30 17:10:26', '2023-07-02 17:10:26');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 7, '11553', 'I', '2023-07-23 02:56:10', '2023-07-25 02:56:10');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 8, '11554', 'I', '2023-07-01 17:50:25', '2023-07-03 17:50:25');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 8, '11555', 'I', '2023-07-19 20:48:45', '2023-07-21 20:48:45');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 9, '11556', 'I', '2023-07-09 08:52:27', '2023-07-11 08:52:27');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 9, '11557', 'I', '2023-07-07 03:40:00', '2023-07-09 03:40:00');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 10, '11558', 'I', '2023-07-02 18:14:36', '2023-07-04 18:14:36');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 10, '11559', 'I', '2023-06-25 07:42:45', '2023-06-27 07:42:45');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 11, '11560', 'I', '2023-07-09 20:01:08', '2023-07-11 20:01:08');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 11, '11561', 'I', '2023-07-04 08:50:52', '2023-07-06 08:50:52');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 12, '11562', 'I', '2023-07-06 06:51:46', '2023-07-08 06:51:46');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 12, '11563', 'I', '2023-07-15 12:38:59', '2023-07-17 12:38:59');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 13, '11564', 'I', '2023-07-24 02:40:09', '2023-07-26 02:40:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 13, '11565', 'I', '2023-07-21 20:05:44', '2023-07-23 20:05:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 14, '11566', 'I', '2023-07-15 14:07:43', '2023-07-17 14:07:43');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 14, '11567', 'I', '2023-07-05 10:44:29', '2023-07-07 10:44:29');


INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (1, 7, 20.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (2, 8, 31.0, 26.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (3, 5, 29.0, 29.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (4, 7, 22.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (5, 8, 21.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (6, 8, 34.0, 32.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (7, 2, 26.0, 26.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (8, 1, 27.0, 22.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (9, 4, 31.0, 27.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (10, 7, 24.0, 21.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (11, 4, 27.0, 27.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (12, 2, 29.0, 27.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (13, 8, 24.0, 24.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (14, 2, 30.0, 30.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (15, 1, 24.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (16, 1, 23.0, 23.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (17, 2, 29.0, 29.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (18, 5, 32.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (19, 7, 32.0, 27.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (20, 1, 21.0, 21.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (21, 1, 33.0, 22.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (22, 5, 24.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (23, 5, 24.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (24, 8, 22.0, 22.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (25, 7, 30.0, 27.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (26, 7, 21.0, 21.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (27, 1, 34.0, 27.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (28, 8, 25.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (29, 7, 30.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (30, 5, 30.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (31, 1, 31.0, 31.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (32, 1, 23.0, 21.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (33, 5, 23.0, 23.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (34, 2, 23.0, 23.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (35, 8, 20.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (36, 8, 27.0, 27.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (37, 4, 29.0, 29.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (38, 4, 23.0, 23.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (39, 8, 28.0, 28.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (40, 7, 32.0, 29.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (41, 8, 34.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (42, 1, 33.0, 33.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (43, 1, 33.0, 28.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (44, 5, 20.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (45, 4, 33.0, 31.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (46, 7, 31.0, 30.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (47, 4, 33.0, 23.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (48, 8, 25.0, 25.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (49, 7, 29.0, 26.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (50, 5, 29.0, 27.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (51, 7, 32.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (52, 5, 30.0, 30.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (53, 8, 28.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (54, 2, 31.0, 22.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (55, 5, 20.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (56, 2, 34.0, 25.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (57, 2, 20.0, 20.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (58, 7, 27.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (59, 7, 28.0, 28.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (60, 1, 26.0, 26.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (61, 2, 21.0, 21.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (62, 1, 33.0, 23.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (63, 1, 32.0, 31.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (64, 8, 34.0, 33.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (65, 5, 29.0, 29.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (66, 5, 25.0, 25.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (67, 7, 30.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (68, 4, 34.0, 24.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (69, 1, 20.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (70, 8, 23.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (71, 7, 27.0, 24.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (72, 1, 32.0, 22.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (73, 1, 30.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (74, 5, 20.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (75, 7, 32.0, 32.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (76, 4, 20.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (77, 4, 25.0, 22.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (78, 5, 26.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (79, 2, 23.0, 23.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (80, 2, 32.0, 23.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (81, 2, 27.0, 20.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (82, 7, 31.0, 28.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (83, 7, 20.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (84, 4, 25.0, 23.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (85, 4, 21.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (86, 1, 29.0, 22.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (87, 8, 31.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (88, 5, 27.0, 27.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (89, 5, 32.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (90, 5, 24.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (91, 1, 27.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (92, 2, 32.0, 26.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (93, 8, 28.0, 28.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (94, 2, 31.0, 29.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (95, 2, 27.0, 22.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (96, 2, 29.0, 24.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (97, 8, 29.0, 29.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (98, 1, 20.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (99, 1, 26.0, 26.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (100, 2, 25.0, 20.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (101, 2, 27.0, 27.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (102, 7, 34.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (103, 2, 33.0, 25.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (104, 4, 34.0, 24.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (105, 4, 30.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (106, 7, 34.0, 25.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (107, 5, 27.0, 27.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (108, 5, 24.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (109, 4, 32.0, 26.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (110, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (111, 4, 30.0, 23.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (112, 2, 34.0, 27.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (113, 7, 32.0, 29.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (114, 8, 33.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (115, 1, 28.0, 28.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (116, 2, 22.0, 22.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (117, 5, 22.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (118, 5, 29.0, 29.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (119, 7, 22.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (120, 1, 20.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (121, 2, 24.0, 24.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (122, 5, 22.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (123, 4, 31.0, 31.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (124, 2, 30.0, 21.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (125, 4, 24.0, 24.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (126, 4, 25.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (127, 1, 33.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (128, 8, 27.0, 27.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (129, 7, 31.0, 21.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (130, 8, 20.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (131, 2, 23.0, 22.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (132, 2, 32.0, 22.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (133, 2, 29.0, 28.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (134, 2, 32.0, 28.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (135, 1, 32.0, 26.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (136, 5, 20.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (137, 8, 20.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (138, 8, 31.0, 24.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (139, 5, 31.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (140, 1, 23.0, 23.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (141, 7, 30.0, 25.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (142, 2, 26.0, 26.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (143, 2, 27.0, 27.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (144, 1, 30.0, 28.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (145, 8, 32.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (146, 1, 32.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (147, 1, 30.0, 30.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (148, 5, 25.0, 25.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (149, 1, 27.0, 22.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (150, 5, 26.0, 23.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (151, 5, 20.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (152, 7, 23.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (153, 5, 20.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (154, 8, 26.0, 26.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (155, 4, 29.0, 22.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (156, 7, 20.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (157, 7, 27.0, 26.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (158, 2, 34.0, 30.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (159, 5, 22.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (160, 4, 27.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (161, 5, 30.0, 27.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (162, 7, 34.0, 32.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (163, 2, 28.0, 28.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (164, 4, 29.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (165, 1, 22.0, 22.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (166, 4, 32.0, 32.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (167, 1, 30.0, 28.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (168, 4, 25.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (169, 1, 30.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (170, 4, 20.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (171, 2, 21.0, 21.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (172, 5, 29.0, 29.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (173, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (174, 8, 23.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (175, 8, 30.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (176, 7, 26.0, 26.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (177, 2, 24.0, 24.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (178, 7, 25.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (179, 7, 22.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (180, 5, 20.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (181, 1, 26.0, 26.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (182, 4, 23.0, 23.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (183, 4, 20.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (184, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (185, 8, 21.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (186, 1, 34.0, 34.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (187, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (188, 8, 34.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (189, 2, 27.0, 27.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (190, 2, 33.0, 24.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (191, 8, 25.0, 25.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (192, 5, 33.0, 28.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (193, 5, 30.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (194, 4, 25.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (195, 5, 25.0, 25.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (196, 7, 34.0, 27.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (197, 8, 23.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (198, 5, 29.0, 29.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (199, 5, 23.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (200, 4, 30.0, 30.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (201, 2, 34.0, 25.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (202, 7, 22.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (203, 8, 32.0, 28.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (204, 5, 24.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (205, 4, 33.0, 28.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (206, 5, 29.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (207, 1, 29.0, 29.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (208, 7, 24.0, 24.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (209, 1, 29.0, 25.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (210, 7, 30.0, 25.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (211, 4, 33.0, 23.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (212, 4, 30.0, 30.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (213, 7, 24.0, 24.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (214, 1, 21.0, 21.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (215, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (216, 2, 29.0, 29.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (217, 2, 21.0, 21.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (218, 4, 33.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (219, 8, 31.0, 28.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (220, 2, 21.0, 21.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (221, 7, 29.0, 29.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (222, 2, 34.0, 27.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (223, 8, 29.0, 29.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (224, 1, 28.0, 26.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (225, 8, 34.0, 32.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (226, 5, 30.0, 30.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (227, 4, 33.0, 29.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (228, 1, 25.0, 23.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (229, 1, 22.0, 22.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (230, 8, 26.0, 26.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (231, 7, 24.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (232, 7, 25.0, 25.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (233, 4, 32.0, 28.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (234, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (235, 5, 24.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (236, 2, 34.0, 26.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (237, 7, 33.0, 24.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (238, 1, 26.0, 21.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (239, 1, 32.0, 21.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (240, 1, 32.0, 28.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (241, 7, 26.0, 26.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (242, 7, 27.0, 27.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (243, 2, 21.0, 21.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (244, 8, 24.0, 22.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (245, 7, 34.0, 25.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (246, 7, 29.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (247, 2, 32.0, 22.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (248, 7, 28.0, 24.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (249, 5, 28.0, 28.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (250, 5, 28.0, 27.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (251, 7, 30.0, 27.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (252, 5, 29.0, 29.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (253, 8, 32.0, 31.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (254, 4, 30.0, 30.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (255, 2, 30.0, 29.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (256, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (257, 2, 30.0, 27.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (258, 4, 20.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (259, 8, 33.0, 22.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (260, 8, 23.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (261, 5, 26.0, 25.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (262, 8, 22.0, 22.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (263, 5, 34.0, 34.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (264, 8, 29.0, 29.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (265, 2, 20.0, 20.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (266, 7, 32.0, 27.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (267, 5, 33.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (268, 8, 27.0, 27.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (269, 4, 22.0, 22.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (270, 8, 30.0, 30.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (271, 5, 24.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (272, 8, 26.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (273, 5, 27.0, 25.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (274, 1, 31.0, 29.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (275, 5, 28.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (276, 2, 32.0, 29.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (277, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (278, 7, 33.0, 25.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (279, 2, 32.0, 32.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (280, 8, 30.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (281, 8, 32.0, 28.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (282, 2, 30.0, 26.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (283, 7, 25.0, 25.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (284, 1, 20.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (285, 7, 25.0, 25.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (286, 8, 26.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (287, 7, 31.0, 28.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (288, 5, 32.0, 28.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (289, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (290, 5, 27.0, 25.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (291, 2, 21.0, 21.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (292, 7, 25.0, 25.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (293, 4, 20.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (294, 7, 24.0, 21.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (295, 5, 29.0, 23.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (296, 7, 26.0, 26.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (297, 2, 22.0, 22.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (298, 2, 30.0, 28.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (299, 4, 28.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (300, 8, 27.0, 27.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (301, 5, 21.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (302, 1, 27.0, 27.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (303, 7, 33.0, 21.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (304, 7, 33.0, 29.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (305, 8, 28.0, 28.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (306, 1, 25.0, 25.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (307, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (308, 4, 24.0, 24.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (309, 7, 26.0, 26.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (310, 5, 26.0, 26.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (311, 7, 28.0, 24.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (312, 7, 24.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (313, 1, 20.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (314, 2, 31.0, 31.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (315, 2, 32.0, 25.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (316, 2, 20.0, 20.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (317, 7, 34.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (318, 2, 33.0, 25.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (319, 4, 21.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (320, 7, 26.0, 26.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (321, 4, 26.0, 26.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (322, 7, 29.0, 28.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (323, 2, 25.0, 25.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (324, 8, 20.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (325, 1, 30.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (326, 7, 22.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (327, 7, 33.0, 33.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (328, 8, 31.0, 28.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (329, 1, 34.0, 28.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (330, 4, 27.0, 27.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (331, 5, 30.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (332, 1, 29.0, 29.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (333, 7, 25.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (334, 1, 20.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (335, 5, 23.0, 23.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (336, 8, 26.0, 26.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (337, 2, 26.0, 25.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (338, 2, 32.0, 29.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (339, 8, 27.0, 27.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (340, 4, 26.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (341, 2, 21.0, 21.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (342, 7, 24.0, 24.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (343, 4, 31.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (344, 2, 26.0, 26.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (345, 4, 23.0, 23.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (346, 1, 29.0, 29.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (347, 5, 31.0, 25.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (348, 8, 21.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (349, 7, 31.0, 29.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (350, 2, 28.0, 28.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (351, 8, 29.0, 29.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (352, 2, 33.0, 25.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (353, 5, 22.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (354, 5, 32.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (355, 2, 21.0, 21.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (356, 1, 22.0, 22.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (357, 1, 34.0, 29.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (358, 7, 22.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (359, 2, 32.0, 23.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (360, 7, 29.0, 26.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (361, 1, 28.0, 27.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (362, 4, 32.0, 30.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (363, 4, 25.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (364, 5, 23.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (365, 7, 21.0, 21.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (366, 4, 32.0, 22.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (367, 4, 31.0, 31.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (368, 7, 28.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (369, 5, 31.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (370, 7, 22.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (371, 8, 34.0, 32.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (372, 1, 34.0, 22.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (373, 8, 31.0, 31.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (374, 5, 26.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (375, 5, 20.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (376, 8, 31.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (377, 5, 21.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (378, 5, 28.0, 28.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (379, 8, 33.0, 30.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (380, 7, 34.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (381, 8, 26.0, 26.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (382, 1, 22.0, 22.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (383, 4, 28.0, 22.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (384, 4, 24.0, 24.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (385, 1, 22.0, 22.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (386, 7, 33.0, 28.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (387, 4, 20.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (388, 2, 22.0, 21.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (389, 8, 23.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (390, 4, 21.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (391, 5, 23.0, 23.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (392, 8, 28.0, 27.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (393, 5, 31.0, 27.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (394, 4, 28.0, 28.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (395, 1, 21.0, 21.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (396, 5, 26.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (397, 7, 21.0, 21.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (398, 8, 24.0, 24.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (399, 4, 28.0, 28.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (400, 5, 21.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (401, 8, 26.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (402, 1, 28.0, 27.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (403, 8, 24.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (404, 1, 22.0, 22.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (405, 5, 24.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (406, 4, 29.0, 29.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (407, 8, 32.0, 26.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (408, 8, 31.0, 26.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (409, 5, 33.0, 29.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (410, 8, 26.0, 26.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (411, 1, 24.0, 23.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (412, 8, 27.0, 26.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (413, 1, 21.0, 21.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (414, 8, 24.0, 24.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (415, 1, 20.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (416, 4, 33.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (417, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (418, 2, 31.0, 31.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (419, 2, 27.0, 27.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (420, 2, 24.0, 24.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (421, 8, 24.0, 24.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (422, 8, 25.0, 24.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (423, 1, 27.0, 25.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (424, 4, 34.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (425, 8, 27.0, 27.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (426, 4, 21.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (427, 8, 24.0, 24.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (428, 2, 26.0, 26.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (429, 5, 22.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (430, 5, 34.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (431, 8, 33.0, 25.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (432, 5, 25.0, 25.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (433, 4, 21.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (434, 1, 24.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (435, 1, 21.0, 21.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (436, 1, 24.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (437, 8, 23.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (438, 1, 20.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (439, 4, 31.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (440, 4, 31.0, 31.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (441, 5, 33.0, 33.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (442, 2, 33.0, 31.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (443, 4, 30.0, 30.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (444, 7, 26.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (445, 1, 21.0, 21.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (446, 7, 27.0, 24.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (447, 4, 26.0, 26.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (448, 8, 28.0, 28.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (449, 4, 34.0, 31.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (450, 8, 34.0, 29.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (451, 7, 31.0, 31.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (452, 2, 33.0, 30.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (453, 8, 23.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (454, 5, 24.0, 23.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (455, 2, 20.0, 20.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (456, 1, 26.0, 26.0, 'M1191300')


INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (1, 5, 30.0, 30.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (2, 7, 25.0, 25.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (3, 5, 25.0, 25.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (4, 5, 29.0, 25.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (5, 2, 32.0, 22.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (6, 5, 23.0, 23.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (7, 2, 25.0, 25.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (8, 1, 25.0, 25.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (9, 5, 25.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (10, 5, 28.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (11, 8, 26.0, 25.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (12, 5, 29.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (13, 2, 20.0, 20.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (14, 4, 20.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (15, 1, 25.0, 25.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (16, 7, 33.0, 29.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (17, 8, 26.0, 26.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (18, 5, 25.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (19, 4, 28.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (20, 1, 32.0, 26.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (21, 4, 21.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (22, 7, 22.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (23, 2, 29.0, 27.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (24, 2, 23.0, 23.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (25, 8, 34.0, 32.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (26, 1, 33.0, 26.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (27, 7, 21.0, 21.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (28, 8, 30.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (29, 5, 23.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (30, 1, 28.0, 28.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (31, 5, 22.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (32, 8, 20.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (33, 2, 23.0, 23.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (34, 7, 22.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (35, 4, 21.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (36, 5, 20.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (37, 4, 33.0, 24.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (38, 8, 32.0, 27.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (39, 1, 29.0, 27.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (40, 7, 27.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (41, 5, 27.0, 27.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (42, 4, 28.0, 26.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (43, 7, 20.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (44, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (45, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (46, 8, 21.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (47, 7, 25.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (48, 4, 23.0, 23.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (49, 7, 22.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (50, 1, 28.0, 21.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (51, 8, 33.0, 33.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (52, 4, 25.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (53, 8, 25.0, 25.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (54, 7, 32.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (55, 1, 27.0, 27.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (56, 5, 28.0, 28.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (57, 5, 23.0, 23.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (58, 4, 33.0, 31.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (59, 1, 25.0, 25.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (60, 8, 22.0, 22.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (61, 1, 22.0, 22.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (62, 5, 23.0, 23.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (63, 1, 34.0, 32.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (64, 4, 20.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (65, 2, 32.0, 32.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (66, 2, 34.0, 20.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (67, 8, 28.0, 25.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (68, 8, 33.0, 25.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (69, 7, 31.0, 26.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (70, 1, 33.0, 23.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (71, 4, 22.0, 22.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (72, 7, 27.0, 27.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (73, 7, 30.0, 30.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (74, 7, 21.0, 21.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (75, 7, 24.0, 24.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (76, 7, 29.0, 25.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (77, 4, 33.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (78, 8, 24.0, 24.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (79, 7, 28.0, 21.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (80, 8, 27.0, 25.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (81, 8, 20.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (82, 4, 28.0, 28.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (83, 8, 28.0, 28.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (84, 7, 25.0, 25.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (85, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (86, 4, 28.0, 26.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (87, 5, 21.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (88, 4, 29.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (89, 7, 20.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (90, 4, 26.0, 26.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (91, 4, 29.0, 28.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (92, 4, 27.0, 27.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (93, 1, 25.0, 25.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (94, 5, 33.0, 30.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (95, 2, 23.0, 23.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (96, 1, 21.0, 21.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (97, 2, 20.0, 20.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (98, 4, 26.0, 26.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (99, 7, 20.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (100, 5, 31.0, 29.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (101, 1, 20.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (102, 5, 20.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (103, 5, 20.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (104, 4, 30.0, 28.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (105, 5, 33.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (106, 5, 31.0, 30.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (107, 7, 22.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (108, 2, 23.0, 23.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (109, 8, 22.0, 22.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (110, 5, 29.0, 29.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (111, 5, 29.0, 28.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (112, 2, 20.0, 20.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (113, 4, 23.0, 23.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (114, 7, 22.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (115, 8, 33.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (116, 4, 25.0, 22.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (117, 8, 28.0, 28.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (118, 1, 23.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (119, 5, 32.0, 25.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (120, 1, 29.0, 23.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (121, 4, 29.0, 29.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (122, 2, 31.0, 31.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (123, 8, 28.0, 28.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (124, 7, 20.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (125, 4, 28.0, 24.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (126, 1, 29.0, 28.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (127, 7, 24.0, 24.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (128, 5, 29.0, 29.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (129, 4, 30.0, 30.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (130, 8, 31.0, 31.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (131, 5, 33.0, 30.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (132, 4, 34.0, 28.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (133, 5, 22.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (134, 8, 23.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (135, 5, 21.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (136, 7, 20.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (137, 5, 34.0, 26.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (138, 1, 21.0, 21.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (139, 1, 30.0, 27.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (140, 5, 34.0, 27.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (141, 5, 30.0, 30.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (142, 4, 28.0, 23.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (143, 8, 28.0, 28.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (144, 1, 34.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (145, 5, 32.0, 30.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (146, 4, 25.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (147, 8, 20.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (148, 7, 32.0, 31.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (149, 2, 24.0, 24.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (150, 2, 33.0, 33.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (151, 5, 23.0, 23.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (152, 8, 25.0, 25.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (153, 5, 23.0, 23.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (154, 5, 22.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (155, 1, 29.0, 23.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (156, 1, 34.0, 23.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (157, 7, 24.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (158, 4, 25.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (159, 8, 24.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (160, 5, 33.0, 31.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (161, 4, 28.0, 23.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (162, 4, 31.0, 22.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (163, 1, 33.0, 30.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (164, 8, 22.0, 22.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (165, 5, 22.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (166, 8, 34.0, 27.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (167, 2, 30.0, 24.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (168, 4, 27.0, 23.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (169, 4, 21.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (170, 4, 34.0, 27.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (171, 8, 29.0, 24.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (172, 2, 21.0, 21.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (173, 4, 33.0, 27.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (174, 7, 32.0, 25.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (175, 8, 22.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (176, 4, 34.0, 33.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (177, 1, 23.0, 22.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (178, 2, 34.0, 26.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (179, 4, 23.0, 22.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (180, 2, 25.0, 25.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (181, 2, 33.0, 28.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (182, 4, 33.0, 32.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (183, 1, 28.0, 28.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (184, 1, 34.0, 31.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (185, 8, 31.0, 26.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (186, 1, 20.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (187, 2, 22.0, 20.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (188, 1, 31.0, 31.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (189, 8, 33.0, 33.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (190, 5, 29.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (191, 7, 32.0, 32.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (192, 1, 26.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (193, 7, 22.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (194, 5, 24.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (195, 2, 30.0, 26.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (196, 1, 32.0, 22.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (197, 5, 25.0, 25.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (198, 8, 25.0, 25.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (199, 1, 33.0, 21.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (200, 5, 22.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (201, 1, 24.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (202, 4, 34.0, 22.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (203, 1, 32.0, 31.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (204, 4, 32.0, 32.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (205, 1, 25.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (206, 8, 20.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (207, 4, 33.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (208, 8, 21.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (209, 7, 22.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (210, 8, 20.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (211, 5, 23.0, 23.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (212, 8, 24.0, 24.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (213, 4, 32.0, 32.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (214, 2, 26.0, 26.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (215, 1, 26.0, 26.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (216, 2, 32.0, 29.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (217, 5, 21.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (218, 1, 24.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (219, 1, 30.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (220, 8, 31.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (221, 5, 26.0, 26.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (222, 2, 29.0, 27.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (223, 4, 34.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (224, 8, 31.0, 27.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (225, 7, 27.0, 27.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (226, 4, 26.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (227, 1, 32.0, 32.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (228, 5, 23.0, 23.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (229, 5, 26.0, 26.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (230, 2, 22.0, 22.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (231, 8, 20.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (232, 2, 34.0, 33.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (233, 7, 20.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (234, 1, 31.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (235, 2, 34.0, 33.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (236, 5, 29.0, 29.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (237, 1, 20.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (238, 8, 22.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (239, 5, 31.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (240, 8, 34.0, 34.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (241, 5, 21.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (242, 4, 22.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (243, 7, 34.0, 21.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (244, 1, 30.0, 26.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (245, 4, 26.0, 26.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (246, 8, 32.0, 32.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (247, 2, 25.0, 25.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (248, 1, 24.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (249, 1, 32.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (250, 5, 29.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (251, 4, 21.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (252, 4, 25.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (253, 4, 33.0, 33.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (254, 7, 24.0, 24.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (255, 2, 20.0, 20.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (256, 8, 24.0, 24.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (257, 5, 20.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (258, 1, 30.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (259, 1, 34.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (260, 1, 25.0, 25.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (261, 4, 33.0, 26.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (262, 4, 29.0, 22.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (263, 2, 31.0, 22.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (264, 1, 25.0, 25.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (265, 7, 34.0, 24.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (266, 5, 26.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (267, 8, 21.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (268, 4, 24.0, 24.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (269, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (270, 2, 34.0, 34.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (271, 5, 27.0, 27.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (272, 1, 23.0, 23.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (273, 1, 28.0, 26.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (274, 7, 28.0, 28.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (275, 1, 29.0, 29.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (276, 5, 21.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (277, 5, 32.0, 26.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (278, 5, 29.0, 29.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (279, 5, 20.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (280, 4, 26.0, 26.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (281, 5, 31.0, 29.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (282, 2, 30.0, 20.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (283, 8, 21.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (284, 8, 34.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (285, 8, 21.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (286, 2, 20.0, 20.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (287, 1, 25.0, 25.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (288, 7, 32.0, 26.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (289, 4, 20.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (290, 7, 31.0, 31.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (291, 2, 21.0, 21.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (292, 4, 31.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (293, 2, 23.0, 23.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (294, 8, 29.0, 25.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (295, 5, 24.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (296, 8, 29.0, 29.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (297, 7, 20.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (298, 5, 25.0, 25.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (299, 8, 34.0, 27.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (300, 4, 25.0, 20.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (301, 2, 24.0, 24.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (302, 7, 21.0, 21.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (303, 2, 29.0, 22.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (304, 5, 21.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (305, 4, 28.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (306, 7, 23.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (307, 1, 32.0, 21.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (308, 8, 31.0, 30.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (309, 7, 30.0, 26.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (310, 4, 33.0, 33.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (311, 2, 29.0, 28.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (312, 2, 27.0, 27.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (313, 8, 22.0, 22.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (314, 8, 32.0, 28.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (315, 1, 31.0, 31.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (316, 2, 27.0, 27.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (317, 5, 25.0, 25.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (318, 8, 29.0, 29.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (319, 1, 25.0, 25.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (320, 1, 25.0, 25.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (321, 8, 32.0, 32.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (322, 8, 22.0, 22.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (323, 4, 22.0, 22.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (324, 5, 33.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (325, 1, 28.0, 25.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (326, 2, 34.0, 28.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (327, 7, 20.0, 20.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (328, 1, 29.0, 29.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (329, 1, 27.0, 27.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (330, 5, 22.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (331, 8, 32.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (332, 8, 21.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (333, 7, 22.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (334, 2, 25.0, 25.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (335, 4, 29.0, 29.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (336, 1, 29.0, 21.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (337, 7, 33.0, 24.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (338, 5, 26.0, 26.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (339, 7, 29.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (340, 5, 20.0, 20.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (341, 4, 33.0, 33.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (342, 4, 22.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (343, 7, 31.0, 24.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (344, 5, 21.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (345, 8, 24.0, 24.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (346, 5, 22.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (347, 8, 28.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (348, 1, 24.0, 23.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (349, 8, 25.0, 25.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (350, 1, 24.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (351, 4, 28.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (352, 1, 23.0, 23.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (353, 7, 26.0, 26.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (354, 8, 29.0, 29.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (355, 4, 25.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (356, 4, 25.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (357, 7, 26.0, 26.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (358, 7, 29.0, 21.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (359, 4, 24.0, 24.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (360, 4, 26.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (361, 4, 34.0, 28.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (362, 4, 25.0, 21.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (363, 4, 24.0, 24.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (364, 8, 32.0, 21.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (365, 1, 24.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (366, 4, 31.0, 27.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (367, 5, 32.0, 32.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (368, 8, 20.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (369, 4, 25.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (370, 2, 27.0, 27.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (371, 4, 31.0, 31.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (372, 5, 26.0, 25.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (373, 1, 32.0, 27.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (374, 8, 24.0, 24.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (375, 4, 31.0, 23.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (376, 8, 30.0, 30.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (377, 8, 23.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (378, 1, 32.0, 23.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (379, 8, 20.0, 20.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (380, 8, 34.0, 32.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (381, 2, 22.0, 22.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (382, 4, 30.0, 23.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (383, 8, 29.0, 29.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (384, 8, 31.0, 25.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (385, 5, 27.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (386, 8, 28.0, 28.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (387, 4, 29.0, 22.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (388, 5, 31.0, 31.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (389, 7, 30.0, 28.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (390, 5, 29.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (391, 4, 34.0, 28.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (392, 8, 31.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (393, 7, 30.0, 21.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (394, 2, 24.0, 24.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (395, 1, 27.0, 21.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (396, 5, 23.0, 22.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (397, 5, 27.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (398, 2, 27.0, 27.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (399, 4, 26.0, 26.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (400, 5, 24.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (401, 8, 22.0, 22.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (402, 5, 31.0, 29.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (403, 7, 34.0, 21.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (404, 5, 28.0, 27.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (405, 8, 31.0, 25.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (406, 1, 34.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (407, 8, 22.0, 22.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (408, 2, 29.0, 29.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (409, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (410, 1, 31.0, 27.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (411, 5, 31.0, 29.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (412, 5, 29.0, 28.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (413, 4, 34.0, 31.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (414, 7, 22.0, 22.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (415, 2, 23.0, 23.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (416, 7, 24.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (417, 4, 32.0, 32.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (418, 8, 32.0, 32.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (419, 7, 23.0, 23.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (420, 7, 25.0, 25.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (421, 4, 27.0, 27.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (422, 5, 21.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (423, 2, 34.0, 31.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (424, 4, 32.0, 27.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (425, 4, 25.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (426, 4, 30.0, 29.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (427, 2, 20.0, 20.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (428, 5, 28.0, 28.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (429, 2, 34.0, 22.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (430, 1, 26.0, 26.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (431, 5, 26.0, 26.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (432, 1, 23.0, 23.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (433, 2, 28.0, 28.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (434, 7, 28.0, 25.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (435, 5, 21.0, 21.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (436, 4, 26.0, 26.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (437, 5, 33.0, 32.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (438, 8, 27.0, 22.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (439, 5, 32.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (440, 1, 26.0, 26.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (441, 4, 24.0, 24.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (442, 1, 31.0, 31.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (443, 8, 23.0, 23.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (444, 4, 25.0, 25.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (445, 2, 28.0, 26.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (446, 1, 29.0, 24.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (447, 4, 29.0, 23.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (448, 7, 31.0, 25.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (449, 7, 23.0, 21.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (450, 8, 27.0, 26.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (451, 1, 29.0, 20.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (452, 5, 24.0, 24.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (453, 8, 30.0, 30.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (454, 8, 25.0, 25.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (455, 1, 34.0, 31.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (456, 2, 33.0, 31.0, 'M1191301')



INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 3, '11568', 'R', '2022-01-20 14:07:57', '2022-01-22 14:07:57');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 4, '11569', 'R', '2022-01-13 20:54:08', '2022-01-15 20:54:08');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 5, '11570', 'R', '2022-01-22 14:37:02', '2022-01-24 14:37:02');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 6, '11571', 'R', '2022-01-19 15:28:37', '2022-01-21 15:28:37');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 7, '11572', 'R', '2022-01-12 16:00:07', '2022-01-14 16:00:07');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 8, '11573', 'R', '2022-01-06 02:51:32', '2022-01-08 02:51:32');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 9, '11574', 'R', '2022-01-15 05:12:20', '2022-01-17 05:12:20');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 10, '11575', 'R', '2022-01-16 23:29:46', '2022-01-18 23:29:46');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 11, '11576', 'R', '2022-01-07 18:10:38', '2022-01-09 18:10:38');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11577', 'R', '2022-01-04 05:22:31', '2022-01-06 05:22:31');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 13, '11578', 'R', '2022-01-14 19:35:01', '2022-01-16 19:35:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 14, '11579', 'R', '2022-01-28 02:23:09', '2022-01-30 02:23:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 3, '11580', 'R', '2022-02-22 13:12:46', '2022-02-24 13:12:46');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 4, '11581', 'R', '2022-02-24 20:31:30', '2022-02-26 20:31:30');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 5, '11582', 'R', '2022-02-26 01:17:47', '2022-02-28 01:17:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 6, '11583', 'R', '2022-02-25 02:36:37', '2022-02-27 02:36:37');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 7, '11584', 'R', '2022-02-04 01:02:54', '2022-02-06 01:02:54');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 8, '11585', 'R', '2022-02-14 14:58:09', '2022-02-16 14:58:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 9, '11586', 'R', '2022-02-02 13:17:05', '2022-02-04 13:17:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 10, '11587', 'R', '2022-02-15 06:08:45', '2022-02-17 06:08:45');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 11, '11588', 'R', '2022-02-01 23:15:44', '2022-02-03 23:15:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 12, '11589', 'R', '2022-02-20 22:48:33', '2022-02-22 22:48:33');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 13, '11590', 'R', '2022-02-08 10:38:35', '2022-02-10 10:38:35');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 14, '11591', 'R', '2022-02-05 14:29:19', '2022-02-07 14:29:19');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 3, '11592', 'R', '2022-03-13 18:42:59', '2022-03-15 18:42:59');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 4, '11593', 'R', '2022-03-19 13:18:16', '2022-03-21 13:18:16');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 5, '11594', 'R', '2022-03-05 08:13:23', '2022-03-07 08:13:23');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 6, '11595', 'R', '2022-03-26 03:00:39', '2022-03-28 03:00:39');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 7, '11596', 'R', '2022-03-24 13:37:34', '2022-03-26 13:37:34');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 8, '11597', 'R', '2022-03-20 19:13:44', '2022-03-22 19:13:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 9, '11598', 'R', '2022-03-05 02:43:00', '2022-03-07 02:43:00');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 10, '11599', 'R', '2022-03-19 15:17:16', '2022-03-21 15:17:16');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 11, '11600', 'R', '2022-03-07 21:59:51', '2022-03-09 21:59:51');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 12, '11601', 'R', '2022-03-23 23:32:28', '2022-03-25 23:32:28');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 13, '11602', 'R', '2022-03-22 18:30:47', '2022-03-24 18:30:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 14, '11603', 'R', '2022-03-16 12:37:01', '2022-03-18 12:37:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 3, '11604', 'R', '2022-04-07 22:50:48', '2022-04-09 22:50:48');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 4, '11605', 'R', '2022-04-02 11:46:03', '2022-04-04 11:46:03');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 5, '11606', 'R', '2022-04-04 06:16:51', '2022-04-06 06:16:51');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 6, '11607', 'R', '2022-04-28 06:59:23', '2022-04-30 06:59:23');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 7, '11608', 'R', '2022-04-24 16:21:18', '2022-04-26 16:21:18');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 8, '11609', 'R', '2022-04-02 12:54:20', '2022-04-04 12:54:20');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 9, '11610', 'R', '2022-04-12 10:39:54', '2022-04-14 10:39:54');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 10, '11611', 'R', '2022-04-26 00:18:40', '2022-04-28 00:18:40');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 11, '11612', 'R', '2022-04-11 04:37:07', '2022-04-13 04:37:07');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 12, '11613', 'R', '2022-04-17 16:28:00', '2022-04-19 16:28:00');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 13, '11614', 'R', '2022-04-29 19:35:30', '2022-05-01 19:35:30');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 14, '11615', 'R', '2022-04-14 17:48:59', '2022-04-16 17:48:59');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 3, '11616', 'R', '2022-05-04 06:32:22', '2022-05-06 06:32:22');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 4, '11617', 'R', '2022-05-14 04:18:27', '2022-05-16 04:18:27');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 5, '11618', 'R', '2022-05-18 21:05:56', '2022-05-20 21:05:56');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 6, '11619', 'R', '2022-05-25 09:51:07', '2022-05-27 09:51:07');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 7, '11620', 'R', '2022-05-01 15:54:58', '2022-05-03 15:54:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 8, '11621', 'R', '2022-05-24 09:01:13', '2022-05-26 09:01:13');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 9, '11622', 'R', '2022-05-24 22:45:52', '2022-05-26 22:45:52');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 10, '11623', 'R', '2022-05-24 13:03:03', '2022-05-26 13:03:03');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 11, '11624', 'R', '2022-05-28 00:30:03', '2022-05-30 00:30:03');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11625', 'R', '2022-05-02 23:25:24', '2022-05-04 23:25:24');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 13, '11626', 'R', '2022-05-10 09:15:05', '2022-05-12 09:15:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 14, '11627', 'R', '2022-05-22 04:57:41', '2022-05-24 04:57:41');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 3, '11628', 'R', '2022-06-28 18:45:12', '2022-06-30 18:45:12');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 4, '11629', 'R', '2022-06-01 15:18:20', '2022-06-03 15:18:20');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 5, '11630', 'R', '2022-06-06 21:05:51', '2022-06-08 21:05:51');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 6, '11631', 'R', '2022-06-12 05:35:29', '2022-06-14 05:35:29');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 7, '11632', 'R', '2022-05-31 00:18:30', '2022-06-02 00:18:30');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 8, '11633', 'R', '2022-06-05 15:25:24', '2022-06-07 15:25:24');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 9, '11634', 'R', '2022-06-03 02:17:41', '2022-06-05 02:17:41');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 10, '11635', 'R', '2022-06-29 01:15:57', '2022-07-01 01:15:57');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 11, '11636', 'R', '2022-05-31 18:08:58', '2022-06-02 18:08:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11637', 'R', '2022-06-05 02:45:49', '2022-06-07 02:45:49');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 13, '11638', 'R', '2022-06-14 05:15:55', '2022-06-16 05:15:55');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 14, '11639', 'R', '2022-06-13 04:18:19', '2022-06-15 04:18:19');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 3, '11640', 'R', '2022-07-09 20:16:31', '2022-07-11 20:16:31');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 4, '11641', 'R', '2022-07-26 20:56:33', '2022-07-28 20:56:33');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 5, '11642', 'R', '2022-07-29 11:35:37', '2022-07-31 11:35:37');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 6, '11643', 'R', '2022-07-16 22:44:56', '2022-07-18 22:44:56');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 7, '11644', 'R', '2022-07-06 13:07:34', '2022-07-08 13:07:34');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 8, '11645', 'R', '2022-07-22 22:15:01', '2022-07-24 22:15:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 9, '11646', 'R', '2022-07-01 10:40:11', '2022-07-03 10:40:11');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 10, '11647', 'R', '2022-07-04 12:34:49', '2022-07-06 12:34:49');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 11, '11648', 'R', '2022-07-28 06:22:58', '2022-07-30 06:22:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 12, '11649', 'R', '2022-07-12 07:33:27', '2022-07-14 07:33:27');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 13, '11650', 'R', '2022-07-24 15:09:35', '2022-07-26 15:09:35');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 14, '11651', 'R', '2022-07-15 05:28:52', '2022-07-17 05:28:52');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 3, '11652', 'R', '2022-08-27 14:33:25', '2022-08-29 14:33:25');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 4, '11653', 'R', '2022-08-05 20:17:00', '2022-08-07 20:17:00');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 5, '11654', 'R', '2022-08-13 02:25:19', '2022-08-15 02:25:19');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 6, '11655', 'R', '2022-08-12 14:37:06', '2022-08-14 14:37:06');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 7, '11656', 'R', '2022-08-06 06:38:25', '2022-08-08 06:38:25');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 8, '11657', 'R', '2022-08-27 02:08:54', '2022-08-29 02:08:54');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 9, '11658', 'R', '2022-08-15 02:29:48', '2022-08-17 02:29:48');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 10, '11659', 'R', '2022-08-26 19:34:10', '2022-08-28 19:34:10');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 11, '11660', 'R', '2022-08-13 12:43:40', '2022-08-15 12:43:40');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 12, '11661', 'R', '2022-08-12 04:56:09', '2022-08-14 04:56:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 13, '11662', 'R', '2022-08-01 18:04:09', '2022-08-03 18:04:09');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 14, '11663', 'R', '2022-08-13 05:18:14', '2022-08-15 05:18:14');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 3, '11664', 'R', '2022-09-11 13:25:05', '2022-09-13 13:25:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 4, '11665', 'R', '2022-08-29 13:57:05', '2022-08-31 13:57:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 5, '11666', 'R', '2022-08-31 08:38:45', '2022-09-02 08:38:45');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 6, '11667', 'R', '2022-09-13 14:51:55', '2022-09-15 14:51:55');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 7, '11668', 'R', '2022-09-13 10:19:56', '2022-09-15 10:19:56');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 8, '11669', 'R', '2022-09-18 08:02:45', '2022-09-20 08:02:45');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 9, '11670', 'R', '2022-09-22 18:26:15', '2022-09-24 18:26:15');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 10, '11671', 'R', '2022-08-29 22:10:21', '2022-08-31 22:10:21');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 11, '11672', 'R', '2022-09-16 19:18:05', '2022-09-18 19:18:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 12, '11673', 'R', '2022-09-03 02:02:38', '2022-09-05 02:02:38');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 13, '11674', 'R', '2022-09-18 14:38:58', '2022-09-20 14:38:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 14, '11675', 'R', '2022-09-19 14:00:38', '2022-09-21 14:00:38');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 3, '11676', 'R', '2022-10-05 08:34:38', '2022-10-07 08:34:38');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 4, '11677', 'R', '2022-10-13 11:47:15', '2022-10-15 11:47:15');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 5, '11678', 'R', '2022-10-01 04:28:05', '2022-10-03 04:28:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 6, '11679', 'R', '2022-10-20 07:18:13', '2022-10-22 07:18:13');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 7, '11680', 'R', '2022-10-16 08:15:48', '2022-10-18 08:15:48');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 8, '11681', 'R', '2022-10-18 20:56:30', '2022-10-20 20:56:30');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 9, '11682', 'R', '2022-10-19 08:52:15', '2022-10-21 08:52:15');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 10, '11683', 'R', '2022-10-21 01:46:01', '2022-10-23 01:46:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 11, '11684', 'R', '2022-10-22 10:13:54', '2022-10-24 10:13:54');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 12, '11685', 'R', '2022-10-20 20:32:54', '2022-10-22 20:32:54');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 13, '11686', 'R', '2022-10-13 09:38:01', '2022-10-15 09:38:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 14, '11687', 'R', '2022-10-03 22:28:30', '2022-10-05 22:28:30');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 3, '11688', 'R', '2022-11-21 17:21:40', '2022-11-23 17:21:40');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 4, '11689', 'R', '2022-11-23 21:05:33', '2022-11-25 21:05:33');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 5, '11690', 'R', '2022-11-07 18:02:56', '2022-11-09 18:02:56');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 6, '11691', 'R', '2022-10-31 02:57:11', '2022-11-02 02:57:11');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 7, '11692', 'R', '2022-11-14 14:26:47', '2022-11-16 14:26:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 8, '11693', 'R', '2022-11-25 15:49:51', '2022-11-27 15:49:51');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 9, '11694', 'R', '2022-11-04 14:45:33', '2022-11-06 14:45:33');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 10, '11695', 'R', '2022-11-18 11:28:30', '2022-11-20 11:28:30');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 11, '11696', 'R', '2022-11-02 01:25:41', '2022-11-04 01:25:41');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 12, '11697', 'R', '2022-11-02 22:51:01', '2022-11-04 22:51:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 13, '11698', 'R', '2022-11-12 11:45:47', '2022-11-14 11:45:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 14, '11699', 'R', '2022-10-30 10:47:26', '2022-11-01 10:47:26');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 3, '11700', 'R', '2022-12-01 17:48:47', '2022-12-03 17:48:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 4, '11701', 'R', '2022-11-30 20:47:28', '2022-12-02 20:47:28');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 5, '11702', 'R', '2022-12-11 23:58:22', '2022-12-13 23:58:22');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 6, '11703', 'R', '2022-12-14 22:22:26', '2022-12-16 22:22:26');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 7, '11704', 'R', '2022-12-01 13:31:20', '2022-12-03 13:31:20');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 8, '11705', 'R', '2022-12-02 12:36:37', '2022-12-04 12:36:37');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 9, '11706', 'R', '2022-12-17 20:47:54', '2022-12-19 20:47:54');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 10, '11707', 'R', '2022-12-09 00:11:58', '2022-12-11 00:11:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 11, '11708', 'R', '2022-12-01 21:34:43', '2022-12-03 21:34:43');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 12, '11709', 'R', '2022-12-12 17:57:57', '2022-12-14 17:57:57');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 13, '11710', 'R', '2022-12-20 18:14:01', '2022-12-22 18:14:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 14, '11711', 'R', '2022-12-07 01:35:29', '2022-12-09 01:35:29');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 3, '11712', 'R', '2023-01-24 11:08:00', '2023-01-26 11:08:00');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 4, '11713', 'R', '2023-01-20 17:03:38', '2023-01-22 17:03:38');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 5, '11714', 'R', '2023-01-11 00:40:01', '2023-01-13 00:40:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 6, '11715', 'R', '2023-01-05 18:07:29', '2023-01-07 18:07:29');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 7, '11716', 'R', '2023-01-22 02:50:46', '2023-01-24 02:50:46');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 8, '11717', 'R', '2023-01-14 19:08:28', '2023-01-16 19:08:28');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 9, '11718', 'R', '2023-01-14 07:36:41', '2023-01-16 07:36:41');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 10, '11719', 'R', '2023-01-19 07:27:33', '2023-01-21 07:27:33');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 11, '11720', 'R', '2023-01-22 05:22:44', '2023-01-24 05:22:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11721', 'R', '2023-01-23 13:06:23', '2023-01-25 13:06:23');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 13, '11722', 'R', '2023-01-20 18:24:05', '2023-01-22 18:24:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 14, '11723', 'R', '2022-12-27 07:14:06', '2022-12-29 07:14:06');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 3, '11724', 'R', '2023-02-12 16:38:20', '2023-02-14 16:38:20');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 4, '11725', 'R', '2023-02-24 02:05:59', '2023-02-26 02:05:59');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 5, '11726', 'R', '2023-02-06 01:32:54', '2023-02-08 01:32:54');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 6, '11727', 'R', '2023-01-31 04:43:34', '2023-02-02 04:43:34');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 7, '11728', 'R', '2023-02-14 07:24:51', '2023-02-16 07:24:51');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 8, '11729', 'R', '2023-02-20 11:07:01', '2023-02-22 11:07:01');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 9, '11730', 'R', '2023-02-01 12:15:16', '2023-02-03 12:15:16');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 10, '11731', 'R', '2023-02-05 16:56:05', '2023-02-07 16:56:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 11, '11732', 'R', '2023-02-18 10:16:46', '2023-02-20 10:16:46');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 12, '11733', 'R', '2023-02-07 02:55:57', '2023-02-09 02:55:57');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 13, '11734', 'R', '2023-02-23 17:57:26', '2023-02-25 17:57:26');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 14, '11735', 'R', '2023-02-18 14:21:05', '2023-02-20 14:21:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 3, '11736', 'R', '2023-03-20 03:14:32', '2023-03-22 03:14:32');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 4, '11737', 'R', '2023-03-14 00:58:38', '2023-03-16 00:58:38');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 5, '11738', 'R', '2023-02-28 09:30:06', '2023-03-02 09:30:06');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 6, '11739', 'R', '2023-03-23 01:32:03', '2023-03-25 01:32:03');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 7, '11740', 'R', '2023-03-13 06:00:40', '2023-03-15 06:00:40');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 8, '11741', 'R', '2023-03-07 09:06:27', '2023-03-09 09:06:27');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 9, '11742', 'R', '2023-03-24 03:22:42', '2023-03-26 03:22:42');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 10, '11743', 'R', '2023-03-04 23:26:45', '2023-03-06 23:26:45');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 11, '11744', 'R', '2023-03-18 16:37:23', '2023-03-20 16:37:23');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 12, '11745', 'R', '2023-03-13 03:08:40', '2023-03-15 03:08:40');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 13, '11746', 'R', '2023-03-01 06:27:19', '2023-03-03 06:27:19');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 14, '11747', 'R', '2023-02-26 00:54:07', '2023-02-28 00:54:07');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 3, '11748', 'R', '2023-04-15 07:53:44', '2023-04-17 07:53:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 4, '11749', 'R', '2023-04-17 18:01:06', '2023-04-19 18:01:06');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 5, '11750', 'R', '2023-04-11 05:09:05', '2023-04-13 05:09:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 6, '11751', 'R', '2023-04-25 12:04:18', '2023-04-27 12:04:18');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 7, '11752', 'R', '2023-04-22 02:41:34', '2023-04-24 02:41:34');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 8, '11753', 'R', '2023-04-06 23:13:52', '2023-04-08 23:13:52');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 9, '11754', 'R', '2023-03-28 16:34:47', '2023-03-30 16:34:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 10, '11755', 'R', '2023-04-21 19:53:59', '2023-04-23 19:53:59');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 11, '11756', 'R', '2023-04-15 18:17:57', '2023-04-17 18:17:57');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 12, '11757', 'R', '2023-04-15 00:42:37', '2023-04-17 00:42:37');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 13, '11758', 'R', '2023-04-05 09:01:34', '2023-04-07 09:01:34');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 14, '11759', 'R', '2023-04-24 11:19:34', '2023-04-26 11:19:34');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 3, '11760', 'R', '2023-05-10 19:53:27', '2023-05-12 19:53:27');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 4, '11761', 'R', '2023-05-23 22:27:23', '2023-05-25 22:27:23');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 5, '11762', 'R', '2023-05-02 19:29:42', '2023-05-04 19:29:42');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 6, '11763', 'R', '2023-04-26 20:28:57', '2023-04-28 20:28:57');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 7, '11764', 'R', '2023-05-15 18:42:20', '2023-05-17 18:42:20');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 8, '11765', 'R', '2023-05-07 18:54:44', '2023-05-09 18:54:44');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 9, '11766', 'R', '2023-05-05 13:26:56', '2023-05-07 13:26:56');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 10, '11767', 'R', '2023-04-27 14:00:17', '2023-04-29 14:00:17');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 11, '11768', 'R', '2023-05-07 21:46:51', '2023-05-09 21:46:51');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 12, '11769', 'R', '2023-05-03 18:56:31', '2023-05-05 18:56:31');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 13, '11770', 'R', '2023-05-19 01:10:17', '2023-05-21 01:10:17');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 14, '11771', 'R', '2023-05-05 08:26:51', '2023-05-07 08:26:51');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 3, '11772', 'R', '2023-06-14 04:19:21', '2023-06-16 04:19:21');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 4, '11773', 'R', '2023-06-09 02:53:22', '2023-06-11 02:53:22');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 5, '11774', 'R', '2023-05-29 13:43:05', '2023-05-31 13:43:05');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 6, '11775', 'R', '2023-06-24 20:06:28', '2023-06-26 20:06:28');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (5, 7, '11776', 'R', '2023-06-11 08:40:03', '2023-06-13 08:40:03');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 8, '11777', 'R', '2023-06-10 20:26:24', '2023-06-12 20:26:24');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 9, '11778', 'R', '2023-06-15 08:56:19', '2023-06-17 08:56:19');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 10, '11779', 'R', '2023-06-19 15:13:41', '2023-06-21 15:13:41');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 11, '11780', 'R', '2023-06-08 12:32:36', '2023-06-10 12:32:36');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 12, '11781', 'R', '2023-05-27 17:22:18', '2023-05-29 17:22:18');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 13, '11782', 'R', '2023-06-16 02:48:11', '2023-06-18 02:48:11');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 14, '11783', 'R', '2023-06-13 13:36:47', '2023-06-15 13:36:47');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 3, '11784', 'R', '2023-07-08 15:33:46', '2023-07-10 15:33:46');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 4, '11785', 'R', '2023-06-27 10:39:17', '2023-06-29 10:39:17');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 5, '11786', 'R', '2023-07-18 14:42:58', '2023-07-20 14:42:58');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 6, '11787', 'R', '2023-07-16 10:34:18', '2023-07-18 10:34:18');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (6, 7, '11788', 'R', '2023-07-16 08:20:08', '2023-07-18 08:20:08');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 8, '11789', 'R', '2023-06-27 08:51:28', '2023-06-29 08:51:28');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 9, '11790', 'R', '2023-07-10 09:14:55', '2023-07-12 09:14:55');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (9, 10, '11791', 'R', '2023-07-12 02:03:24', '2023-07-14 02:03:24');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (8, 11, '11792', 'R', '2023-07-12 22:14:38', '2023-07-14 22:14:38');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 12, '11793', 'R', '2023-07-23 09:47:31', '2023-07-25 09:47:31');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 13, '11794', 'R', '2023-07-03 11:53:08', '2023-07-05 11:53:08');
INSERT INTO [PushOrders] ([pUser], [depId], [reportNum], [pushStatus], [pushDate], [lastUpdate]) VALUES (7, 14, '11795', 'R', '2023-07-01 18:01:49', '2023-07-03 18:01:49');


INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (457, 7, 32.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (458, 5, 27.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (459, 7, 23.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (460, 8, 21.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (461, 1, 30.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (462, 2, 31.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (463, 1, 32.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (464, 4, 34.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (465, 1, 22.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (466, 8, 22.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (467, 1, 34.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (468, 5, 34.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (469, 5, 31.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (470, 7, 21.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (471, 5, 31.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (472, 4, 30.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (473, 7, 24.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (474, 7, 28.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (475, 8, 23.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (476, 4, 20.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (477, 5, 26.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (478, 2, 27.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (479, 4, 27.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (480, 2, 30.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (481, 2, 28.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (482, 5, 32.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (483, 5, 24.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (484, 5, 27.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (485, 1, 29.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (486, 8, 32.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (487, 2, 21.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (488, 2, 30.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (489, 4, 20.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (490, 7, 31.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (491, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (492, 4, 28.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (493, 8, 31.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (494, 8, 26.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (495, 7, 32.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (496, 1, 20.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (497, 5, 33.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (498, 2, 20.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (499, 1, 21.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (500, 8, 26.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (501, 4, 29.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (502, 4, 32.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (503, 7, 24.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (504, 1, 28.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (505, 2, 34.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (506, 2, 22.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (507, 2, 26.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (508, 5, 25.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (509, 4, 29.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (510, 4, 30.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (511, 8, 34.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (512, 1, 26.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (513, 1, 34.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (514, 2, 24.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (515, 1, 25.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (516, 7, 29.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (517, 8, 28.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (518, 1, 33.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (519, 7, 27.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (520, 2, 28.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (521, 5, 20.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (522, 1, 32.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (523, 1, 33.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (524, 2, 22.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (525, 4, 33.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (526, 4, 23.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (527, 7, 23.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (528, 4, 21.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (529, 4, 29.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (530, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (531, 1, 23.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (532, 4, 24.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (533, 1, 25.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (534, 4, 21.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (535, 1, 30.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (536, 7, 27.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (537, 5, 21.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (538, 2, 27.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (539, 7, 30.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (540, 2, 29.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (541, 1, 26.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (542, 5, 34.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (543, 2, 32.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (544, 7, 31.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (545, 4, 32.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (546, 2, 24.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (547, 5, 23.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (548, 2, 22.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (549, 4, 21.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (550, 1, 23.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (551, 2, 30.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (552, 7, 25.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (553, 4, 32.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (554, 2, 23.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (555, 7, 24.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (556, 4, 23.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (557, 4, 26.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (558, 5, 23.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (559, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (560, 2, 21.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (561, 8, 33.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (562, 4, 27.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (563, 1, 23.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (564, 4, 28.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (565, 5, 24.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (566, 4, 28.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (567, 5, 25.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (568, 2, 23.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (569, 2, 32.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (570, 7, 32.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (571, 5, 28.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (572, 8, 21.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (573, 7, 20.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (574, 5, 22.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (575, 2, 26.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (576, 8, 24.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (577, 4, 32.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (578, 1, 29.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (579, 5, 29.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (580, 5, 29.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (581, 1, 21.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (582, 2, 34.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (583, 2, 24.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (584, 8, 22.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (585, 8, 28.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (586, 1, 23.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (587, 8, 20.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (588, 7, 20.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (589, 2, 31.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (590, 7, 30.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (591, 2, 28.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (592, 7, 20.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (593, 7, 20.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (594, 2, 29.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (595, 4, 34.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (596, 2, 30.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (597, 2, 32.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (598, 1, 21.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (599, 7, 27.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (600, 4, 20.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (601, 4, 32.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (602, 2, 31.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (603, 2, 21.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (604, 8, 28.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (605, 1, 33.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (606, 1, 24.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (607, 1, 24.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (608, 5, 25.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (609, 7, 30.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (610, 4, 29.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (611, 4, 34.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (612, 7, 28.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (613, 8, 34.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (614, 8, 21.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (615, 1, 22.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (616, 7, 24.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (617, 4, 24.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (618, 8, 33.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (619, 7, 27.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (620, 1, 30.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (621, 2, 26.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (622, 4, 27.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (623, 1, 23.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (624, 1, 29.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (625, 4, 33.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (626, 5, 21.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (627, 7, 32.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (628, 7, 24.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (629, 2, 25.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (630, 1, 27.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (631, 8, 26.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (632, 8, 25.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (633, 2, 25.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (634, 2, 21.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (635, 4, 24.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (636, 4, 23.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (637, 4, 30.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (638, 5, 29.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (639, 4, 20.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (640, 2, 33.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (641, 2, 34.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (642, 5, 31.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (643, 7, 31.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (644, 2, 25.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (645, 4, 31.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (646, 2, 23.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (647, 2, 31.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (648, 5, 26.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (649, 1, 33.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (650, 7, 33.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (651, 1, 33.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (652, 5, 34.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (653, 7, 34.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (654, 8, 33.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (655, 5, 25.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (656, 2, 21.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (657, 4, 32.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (658, 8, 30.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (659, 5, 29.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (660, 2, 25.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (661, 5, 29.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (662, 4, 26.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (663, 8, 20.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (664, 4, 32.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (665, 2, 22.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (666, 4, 26.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (667, 4, 23.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (668, 5, 24.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (669, 7, 32.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (670, 2, 26.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (671, 4, 24.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (672, 1, 30.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (673, 8, 30.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (674, 7, 28.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (675, 8, 34.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (676, 2, 26.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (677, 1, 27.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (678, 4, 22.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (679, 4, 32.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (680, 4, 23.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (681, 4, 26.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (682, 1, 31.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (683, 1, 28.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (684, 2, 29.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (685, 1, 27.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (686, 4, 33.0, 0.0, 'M1191303')



INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (457, 7, 27.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (458, 8, 20.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (459, 2, 30.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (460, 7, 28.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (461, 5, 24.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (462, 7, 25.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (463, 8, 28.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (464, 8, 26.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (465, 1, 32.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (466, 7, 29.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (467, 2, 26.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (468, 5, 31.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (469, 1, 34.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (470, 5, 22.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (471, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (472, 5, 25.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (473, 5, 31.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (474, 4, 30.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (475, 8, 20.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (476, 2, 25.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (477, 2, 21.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (478, 2, 21.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (479, 7, 29.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (480, 1, 27.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (481, 1, 33.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (482, 4, 29.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (483, 5, 28.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (484, 1, 34.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (485, 4, 33.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (486, 8, 30.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (487, 1, 20.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (488, 1, 25.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (489, 8, 33.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (490, 2, 22.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (491, 4, 34.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (492, 1, 34.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (493, 8, 21.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (494, 2, 26.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (495, 4, 28.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (496, 7, 32.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (497, 8, 25.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (498, 1, 29.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (499, 5, 21.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (500, 1, 26.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (501, 2, 26.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (502, 7, 30.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (503, 7, 21.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (504, 7, 32.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (505, 4, 32.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (506, 4, 29.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (507, 7, 21.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (508, 5, 33.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (509, 8, 21.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (510, 2, 25.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (511, 5, 22.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (512, 8, 29.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (513, 4, 22.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (514, 8, 30.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (515, 2, 22.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (516, 8, 33.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (517, 8, 32.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (518, 1, 31.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (519, 1, 20.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (520, 7, 23.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (521, 1, 24.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (522, 7, 27.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (523, 8, 29.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (524, 2, 22.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (525, 8, 21.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (526, 8, 20.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (527, 7, 24.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (528, 7, 24.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (529, 7, 25.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (530, 7, 33.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (531, 4, 29.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (532, 7, 31.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (533, 8, 30.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (534, 1, 26.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (535, 2, 31.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (536, 8, 22.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (537, 2, 21.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (538, 2, 34.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (539, 2, 33.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (540, 8, 22.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (541, 1, 32.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (542, 4, 28.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (543, 2, 34.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (544, 2, 31.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (545, 4, 26.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (546, 2, 21.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (547, 5, 23.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (548, 2, 33.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (549, 8, 34.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (550, 7, 24.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (551, 2, 29.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (552, 7, 33.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (553, 5, 28.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (554, 5, 32.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (555, 8, 21.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (556, 5, 28.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (557, 2, 31.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (558, 5, 25.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (559, 4, 33.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (560, 5, 26.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (561, 8, 21.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (562, 4, 22.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (563, 7, 28.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (564, 5, 23.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (565, 5, 30.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (566, 5, 20.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (567, 8, 32.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (568, 1, 22.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (569, 7, 30.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (570, 4, 28.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (571, 8, 20.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (572, 1, 24.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (573, 7, 28.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (574, 4, 30.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (575, 7, 32.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (576, 2, 21.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (577, 4, 31.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (578, 8, 23.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (579, 2, 28.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (580, 1, 21.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (581, 4, 33.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (582, 2, 26.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (583, 5, 23.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (584, 8, 26.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (585, 4, 25.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (586, 5, 22.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (587, 2, 32.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (588, 7, 20.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (589, 1, 28.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (590, 5, 21.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (591, 7, 27.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (592, 1, 24.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (593, 1, 26.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (594, 8, 30.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (595, 5, 31.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (596, 2, 25.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (597, 2, 21.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (598, 4, 31.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (599, 2, 33.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (600, 5, 25.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (601, 1, 20.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (602, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (603, 8, 20.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (604, 5, 20.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (605, 1, 22.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (606, 4, 20.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (607, 2, 20.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (608, 7, 27.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (609, 2, 24.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (610, 7, 32.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (611, 2, 26.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (612, 2, 20.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (613, 7, 30.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (614, 8, 32.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (615, 1, 30.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (616, 1, 32.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (617, 4, 29.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (618, 4, 20.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (619, 1, 25.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (620, 1, 26.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (621, 7, 21.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (622, 4, 21.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (623, 2, 32.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (624, 4, 32.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (625, 2, 21.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (626, 8, 27.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (627, 2, 24.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (628, 8, 27.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (629, 4, 29.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (630, 4, 34.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (631, 8, 28.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (632, 7, 26.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (633, 8, 29.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (634, 4, 23.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (635, 1, 20.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (636, 8, 32.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (637, 1, 21.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (638, 2, 24.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (639, 2, 22.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (640, 4, 26.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (641, 1, 25.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (642, 1, 32.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (643, 4, 24.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (644, 7, 24.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (645, 8, 30.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (646, 2, 33.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (647, 8, 28.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (648, 4, 31.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (649, 2, 24.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (650, 1, 29.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (651, 1, 27.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (652, 2, 32.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (653, 1, 25.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (654, 5, 26.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (655, 7, 23.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (656, 1, 23.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (657, 1, 27.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (658, 1, 26.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (659, 5, 26.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (660, 2, 26.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (661, 7, 23.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (662, 5, 33.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (663, 2, 28.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (664, 4, 28.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (665, 1, 31.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (666, 7, 27.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (667, 4, 32.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (668, 4, 34.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (669, 7, 34.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (670, 5, 26.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (671, 4, 24.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (672, 8, 23.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (673, 2, 34.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (674, 2, 34.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (675, 1, 30.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (676, 4, 21.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (677, 7, 21.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (678, 2, 22.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (679, 5, 26.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (680, 5, 30.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (681, 4, 30.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (682, 5, 28.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (683, 4, 27.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (684, 8, 29.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (685, 5, 34.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (686, 7, 23.0, 0.0, 'M1191306')


INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (457, 4, 34.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (458, 8, 34.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (459, 7, 20.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (460, 1, 27.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (461, 1, 23.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (462, 8, 25.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (463, 1, 34.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (464, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (465, 4, 25.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (466, 7, 32.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (467, 8, 27.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (468, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (469, 5, 31.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (470, 7, 25.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (471, 2, 29.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (472, 4, 22.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (473, 8, 28.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (474, 2, 29.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (475, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (476, 2, 32.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (477, 4, 33.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (478, 4, 22.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (479, 8, 23.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (480, 1, 31.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (481, 7, 27.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (482, 4, 31.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (483, 5, 29.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (484, 8, 21.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (485, 2, 24.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (486, 4, 31.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (487, 2, 30.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (488, 8, 29.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (489, 4, 20.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (490, 5, 26.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (491, 7, 30.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (492, 1, 29.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (493, 5, 21.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (494, 2, 28.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (495, 1, 24.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (496, 1, 23.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (497, 7, 20.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (498, 5, 31.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (499, 8, 23.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (500, 8, 31.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (501, 7, 27.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (502, 8, 22.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (503, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (504, 7, 26.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (505, 8, 25.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (506, 2, 22.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (507, 8, 33.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (508, 8, 21.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (509, 8, 25.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (510, 8, 22.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (511, 1, 26.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (512, 4, 20.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (513, 7, 21.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (514, 2, 22.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (515, 5, 31.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (516, 2, 27.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (517, 5, 33.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (518, 1, 29.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (519, 2, 29.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (520, 4, 25.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (521, 2, 26.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (522, 7, 29.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (523, 2, 31.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (524, 4, 22.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (525, 4, 27.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (526, 5, 34.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (527, 5, 24.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (528, 8, 33.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (529, 8, 34.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (530, 1, 20.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (531, 7, 21.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (532, 5, 32.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (533, 7, 25.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (534, 5, 20.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (535, 2, 25.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (536, 1, 30.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (537, 5, 29.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (538, 8, 25.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (539, 7, 30.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (540, 8, 33.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (541, 8, 23.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (542, 2, 33.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (543, 8, 25.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (544, 5, 25.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (545, 8, 28.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (546, 8, 32.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (547, 5, 24.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (548, 4, 28.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (549, 5, 34.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (550, 4, 29.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (551, 7, 34.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (552, 8, 30.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (553, 1, 27.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (554, 5, 21.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (555, 7, 29.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (556, 7, 28.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (557, 5, 30.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (558, 5, 26.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (559, 1, 31.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (560, 5, 24.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (561, 5, 23.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (562, 7, 30.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (563, 8, 22.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (564, 1, 34.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (565, 8, 26.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (566, 2, 34.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (567, 4, 28.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (568, 7, 27.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (569, 1, 26.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (570, 4, 29.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (571, 5, 26.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (572, 7, 26.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (573, 1, 23.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (574, 2, 28.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (575, 5, 29.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (576, 1, 30.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (577, 2, 25.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (578, 2, 26.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (579, 4, 27.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (580, 8, 31.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (581, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (582, 2, 23.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (583, 1, 24.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (584, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (585, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (586, 8, 33.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (587, 8, 29.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (588, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (589, 7, 26.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (590, 2, 34.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (591, 8, 34.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (592, 2, 31.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (593, 5, 33.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (594, 1, 23.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (595, 1, 24.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (596, 8, 25.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (597, 7, 33.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (598, 2, 22.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (599, 8, 20.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (600, 4, 20.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (601, 1, 28.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (602, 2, 24.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (603, 5, 29.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (604, 1, 25.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (605, 8, 22.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (606, 1, 31.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (607, 5, 32.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (608, 2, 26.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (609, 8, 29.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (610, 7, 27.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (611, 4, 20.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (612, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (613, 8, 31.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (614, 1, 30.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (615, 1, 28.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (616, 1, 28.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (617, 4, 29.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (618, 5, 20.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (619, 5, 34.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (620, 2, 34.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (621, 7, 21.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (622, 4, 22.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (623, 5, 24.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (624, 2, 20.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (625, 5, 20.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (626, 8, 26.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (627, 4, 21.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (628, 1, 25.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (629, 5, 25.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (630, 1, 20.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (631, 2, 26.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (632, 8, 34.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (633, 8, 27.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (634, 1, 31.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (635, 4, 21.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (636, 1, 25.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (637, 8, 33.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (638, 8, 28.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (639, 1, 24.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (640, 5, 30.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (641, 8, 23.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (642, 5, 34.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (643, 7, 32.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (644, 8, 27.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (645, 5, 26.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (646, 1, 31.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (647, 4, 32.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (648, 4, 26.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (649, 4, 34.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (650, 5, 30.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (651, 5, 29.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (652, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (653, 5, 27.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (654, 1, 29.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (655, 1, 22.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (656, 7, 29.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (657, 1, 26.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (658, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (659, 5, 30.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (660, 7, 23.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (661, 1, 23.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (662, 5, 22.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (663, 1, 26.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (664, 8, 33.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (665, 4, 34.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (666, 7, 32.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (667, 2, 31.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (668, 1, 20.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (669, 8, 25.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (670, 2, 33.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (671, 2, 22.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (672, 1, 20.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (673, 7, 30.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (674, 1, 25.0, 0.0, 'M1191300')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (675, 7, 22.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (676, 4, 25.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (677, 2, 28.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (678, 4, 27.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (679, 4, 26.0, 0.0, 'M1191303')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (680, 7, 27.0, 0.0, 'M1191306')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (681, 5, 24.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (682, 2, 23.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (683, 8, 29.0, 0.0, 'M1191307')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (684, 5, 31.0, 0.0, 'M1191304')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (685, 2, 21.0, 0.0, 'M1191301')
INSERT INTO [PushMedOrders] ([orderId], [medId], [poQty], [supQty], [mazNum]) VALUES (686, 2, 29.0, 0.0, 'M1191301')












