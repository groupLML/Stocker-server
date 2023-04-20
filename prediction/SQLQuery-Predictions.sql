CREATE TABLE [Predictions] 
(
    [usageOneMonthAgo] real,
    [usageTwoMonthAgo] real,
    [usageOneYearAgo]	real,
	[totalReqQty]	real,
    [thisMonth]	NVARCHAR(2),
    [season]	CHAR(1),
    [futureUsage]	real
);

INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (20, 18, 21, 3, '1', 'B', 22);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (22, 20, 23, 5, '2', 'B', 13);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (13, 22, 17, 0, '3', 'C', 11);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (11, 13, 21, 2, '4', 'C', 18);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (18, 11, 19, 2, '5', 'C', 17);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (17, 18, 13, 3, '6', 'D', 24);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (24, 17, 12, 4, '7', 'D', 10);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (10, 24, 20, 3, '8', 'D', 25);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (25, 10, 21, 2, '9', 'A', 18);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (18, 25, 28, 3, '10', 'A', 19);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (19, 18, 25, 4, '11', 'A', 25);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (25, 19, 22, 1, '12', 'B', 23);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (23, 25, 22, 3, '1', 'B', 17);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (17, 23, 13, 5, '2', 'B', 15);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (15, 17, 11, 1, '3', 'C', 25);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (25, 15, 18, 0, '4', 'C', 10);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (10, 25, 17, 4, '5', 'C', 18);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (18, 10, 24, 2, '6', 'D', 19);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (19, 18, 10, 2, '7', 'D', 18);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (18, 19, 25, 0, '8', 'D', 11);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (11, 18, 18, 1, '9', 'A', 18);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (18, 11, 19, 2, '10', 'A', 25);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (25, 18, 25, 1, '11', 'A', 30);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (30, 25, 23, 3, '12', 'B', 11);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (11, 30, 17, 2, '1', 'B', 14);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (14, 11, 15, 1, '2', 'B', 17);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (17, 14, 25, 3, '3', 'C', 23);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (23, 17, 10, 2, '4', 'C', 15);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (15, 23, 18, 3, '5', 'C', 18);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (18, 15, 19, 1, '6', 'D', 11);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (11, 18, 18, 1, '7', 'D', 23);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (23, 11, 11, 1, '8', 'D', 24);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (24, 23, 18, 2, '9', 'A', 21);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (21, 24, 25, 3, '10', 'A', 18);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (18, 21, 30, 0, '11', 'A', 28);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (28, 18, 11, 2, '12', 'B', 30);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (30, 28, 14, 4, '1', 'B', 15);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (15, 30, 17, 0, '2', 'B', 14);
INSERT INTO [Predictions] ([usageOneMonthAgo], [usageTwoMonthAgo], [usageOneYearAgo], [totalReqQty], [thisMonth], [season], [futureUsage]) VALUES (14, 15, 23, 3, '3', 'C', 13);
