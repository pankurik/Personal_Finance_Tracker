-- insert.sql
-- This SQL script initializes the PersonalFinanceTrackerDB with sample data.It inserts sample entries into various tables such as 
-- User, Goal, BudgetPlan, Account, Category, Transaction, and others. Each table receives 4 sample entries
-- to illustrate typical data that might be used in a personal finance tracking application.

USE PersonalFinanceTrackerDB;

-- #1 Insert into User table
INSERT INTO `User` (`Password`, `Email`, `FirstName`, `LastName`, `DateOfBirth`, `SSN`)
VALUES
('password123', 'john.doe@example.com', 'John', 'Doe', '1985-05-15', '123-45-6789'),
('password456', 'jane.smith@example.com', 'Jane', 'Smith', '1990-07-22', '987-65-4321'),
('password789', 'alice.johnson@example.com', 'Alice', 'Johnson', '1988-11-05', '111-22-3333'),
('password012', 'bob.brown@example.com', 'Bob', 'Brown', '1979-02-14', '444-55-6666');

-- #2 Insert into Goal table
INSERT INTO `Goal` (`CurrentAmount`, `TargetAmount`, `Status`, `Type`)
VALUES
(500.00, 1000.00, 0, 'Long'),
(200.00, 500.00, 1, 'Short'),
(750.00, 1500.00, 0, 'Long'),
(300.00, 300.00, 1, 'Short');

-- #3 Insert into BudgetPlan table
INSERT INTO `BudgetPlan` (`TotalBudget`, `SetForDays`)
VALUES
(1000.00, 30),
(1500.00, 60),
(500.00, 15),
(2000.00, 90);

-- #4 Insert into Account table
INSERT INTO `Account` (`UserId`, `Status`, `GoalId`, `BudgetPlanId`)
VALUES
(1, 'Active', 1, 1),
(2, 'Active', 2, 2),
(3, 'Inactive', 3, 3),
(4, 'Active', 4, 4);

-- #5 Insert into Category table
INSERT INTO `Category` (`Name`, `Description`)
VALUES
('Food', 'Expenses on food and groceries'),
('Rent', 'Monthly rent payments'),
('Entertainment', 'Expenses on movies, games, etc.'),
('Utilities', 'Electricity, water, and other utilities');

-- #6 Insert into Transaction table
INSERT INTO `Transaction` (`Amount`, `DateTime`, `TransactionType`, `AccountId`, `CategoryId`)
VALUES
(100, '2024-07-01 10:00:00', 'Expense', 1, 1),
(500, '2024-07-05 15:00:00', 'Expense', 2, 2),
(150, '2024-07-10 12:30:00', 'Expense', 3, 3),
(200, '2024-07-15 14:45:00', 'Income', 4, 4);

-- #7 Insert into BudgetAlert table
INSERT INTO `BudgetAlert` (`Name`, `Description`, `Threshold`, `BudgetPlanId`)
VALUES
('Low Budget Alert', 'Alert when budget is below threshold', 100, 1),
('High Spending Alert', 'Alert for high spending', 200, 2),
('Rent Due Alert', 'Alert for upcoming rent payment', 500, 3),
('Utilities Alert', 'Alert for utilities payments', 300, 4);

-- #8 Insert into SharedSavingsGroup table
INSERT INTO `SharedSavingsGroup` (`GroupName`, `Description`)
VALUES
('Family Savings', 'Group savings for family'),
('Friends Fund', 'Savings group for friends'),
('Holiday Fund', 'Savings for holidays'),
('Emergency Fund', 'Emergency savings group');

-- #9 Insert into UserSharedSavingsGroup table
INSERT INTO `UserSharedSavingsGroup` (`UserId`, `GroupId`, `Role`, `DateJoined`)
VALUES
(1, 1, 'Admin', '2024-01-01 09:00:00'),
(2, 2, 'Member', '2024-02-01 09:00:00'),
(3, 3, 'Admin', '2024-03-01 09:00:00'),
(4, 4, 'Member', '2024-04-01 09:00:00');

-- #10 Insert into CreditScoreInsights table
INSERT INTO `CreditScoreInsights` (`FinancialBehaviorAnalysis`, `SSN`)
VALUES
('Good credit behavior', '123-45-6789'),
('Improving credit score', '987-65-4321'),
('Stable credit score', '111-22-3333'),
('Needs improvement', '444-55-6666');

-- #11 Insert into Notification table
INSERT INTO `Notification` (`Message`, `BudgetAlertId`)
VALUES
('Your budget is low', 1),
('High spending detected', 2),
('Rent payment due soon', 3),
('Utilities payment due soon', 4);

-- #12 Insert into UserNotifications table
INSERT INTO `UserNotifications` (`UserId`, `NotificationId`, `Status`)
VALUES
(1, 1, 0),
(2, 2, 1),
(3, 3, 0),
(4, 4, 1);

-- #13 Insert into FinancialNewsFeed table
INSERT INTO `FinancialNewsFeed` (`Title`, `Content`, `UserId`)
VALUES
('Market Update', 'Latest news on the stock market', 1),
('Budget Tips', 'How to save more', 2),
('Investment Ideas', 'Top investment options', 3),
('Economic Outlook', 'Future economic predictions', 4);

-- #14 Insert into UserFinancialNewsFeed table
INSERT INTO `UserFinancialNewsFeed` (`UserId`, `NewsId`, `ViewedDate`, `GeneratedDate`)
VALUES
(1, 1, '2024-07-01 10:00:00', '2024-07-01 09:00:00'),
(2, 2, '2024-07-05 15:00:00', '2024-07-05 14:00:00'),
(3, 3, '2024-07-10 12:30:00', '2024-07-10 11:30:00'),
(4, 4, '2024-07-15 14:45:00', '2024-07-15 13:45:00');

-- #15 Insert into CreditScoreGoals table
INSERT INTO `CreditScoreGoals` (`Timeframe`, `TargetScore`, `CurrentScore`, `SSN`)
VALUES
('1 year', 750, 700, '123-45-6789'),
('6 months', 720, 690, '987-65-4321'),
('2 years', 800, 750, '111-22-3333'),
('1 year', 680, 650, '444-55-6666');

-- #16 Insert into FinancialInstitution table
INSERT INTO `FinancialInstitution` (`ContactInfo`, `Name`)
VALUES
('contact@bank1.com', 'Bank1'),
('contact@bank2.com', 'Bank2'),
('contact@bank3.com', 'Bank3'),
('contact@bank4.com', 'Bank4');

-- #17 Insert into AccountFinancialInstitution table
INSERT INTO `AccountFinancialInstitution` (`AccountId`, `InstitutionId`, `AccountType`)
VALUES
(1, 1, 'Checking'),
(2, 2, 'Savings'),
(3, 3, 'Credit'),
(4, 4, 'Loan');

-- #18 Insert into InvestmentPortfolio table
INSERT INTO `InvestmentPortfolio` (`AssetType`, `AssetValue`, `AccountId`)
VALUES
('Stock', '10000', 1),
('Bond', '5000', 2),
('Real Estate', '30000', 3),
('Mutual Fund', '15000', 4);

-- #19 Insert into GroupGoal table
INSERT INTO `GroupGoal` (`GoalId`, `GroupId`, `ContributionAmount`, `Comment`)
VALUES
(1, 1, 100.00, 'Monthly contribution'),
(2, 2, 50.00, 'Weekly savings'),
(3, 3, 200.00, 'Annual savings'),
(4, 4, 75.00, 'Emergency fund');

-- #20 Insert into DigitalReceiptsOrganizer table
INSERT INTO `DigitalReceiptsOrganizer` (`Date`, `OCRData`, `AccountId`, `TransactionId`)
VALUES
('2024-07-01 10:00:00', 'Groceries receipt', 1, 1),
('2024-07-05 15:00:00', 'Rent receipt', 2, 2),
('2024-07-10 12:30:00', 'Movie ticket', 3, 3),
('2024-07-15 14:45:00', 'Utility bill', 4, 4);

-- #21 Insert into DebtManagement table
INSERT INTO `DebtManagement` (`DebtType`, `AmountOwed`, `AccountId`)
VALUES
('Credit Card', 1000.00, 1),
('Student Loan', 15000.00, 2),
('Mortgage', 200000.00, 3),
('Auto Loan', 5000.00, 4);

-- #22 Insert into ScheduledPayment table
INSERT INTO `ScheduledPayment` (`PaymentDate`, `Amount`, `Frequency`, `AccountId`)
VALUES
('2024-07-01 10:00:00', 100.00, 'Monthly', 1),
('2024-07-05 15:00:00', 150.00, 'Weekly', 2),
('2024-07-10 12:30:00', 200.00, 'Annually', 3),
('2024-07-15 14:45:00', 75.00, 'Monthly', 4);

-- #23 Insert into Report table
INSERT INTO `Report` (`AccountId`, `Description`)
VALUES
(1, 'Monthly account report'),
(2, 'Weekly account report'),
(3, 'Annual account report'),
(4, 'Monthly account report');

-- #24 Insert into SubscriptionManagement table
INSERT INTO `SubscriptionManagement` (`Type`, `ServiceName`, `ScheduledPaymentId`)
VALUES
('Streaming', 'Netflix', 1),
('Music', 'Spotify', 2),
('Cloud Storage', 'Google Drive', 3),
('Gym', 'Local Gym', 4);

-- #25 Insert into Currency table
INSERT INTO `Currency` (`CurrencyCode`, `CurrencyName`)
VALUES
('USD', 'United States Dollar'),
('EUR', 'Euro'),
('GBP', 'British Pound'),
('JPY', 'Japanese Yen');

-- #26 Insert into ExchangeRate table
INSERT INTO `ExchangeRate` (`FromCurrencyId`, `ToCurrencyId`, `Rate`, `Date`)
VALUES
(1, 2, 0.85, '2024-07-01'),
(2, 3, 0.9, '2024-07-01'),
(3, 4, 150.00, '2024-07-01'),
(4, 1, 0.007, '2024-07-01');

-- #27 Insert into CurrencyConvertor table
INSERT INTO `CurrencyConvertor` (`OriginalAmount`, `ConvertedAmount`, `ExchangeRateId`)
VALUES
(100.00, 85.00, 1),
(200.00, 180.00, 2),
(300.00, 45000.00, 3),
(400.00, 2.80, 4);

-- #28 Insert into TransactionCurrencyConvertor table
INSERT INTO `TransactionCurrencyConvertor` (`TransactionId`, `ConversionTimestamp`, `ConversionFee`)
VALUES
(1, '2024-07-01 10:00:00', 5.00),
(2, '2024-07-05 15:00:00', 3.00),
(3, '2024-07-10 12:30:00', 10.00),
(4, '2024-07-15 14:45:00', 7.00);

-- #29 Insert into CategoryReport table
INSERT INTO `CategoryReport` (`ReportId`, `CategoryId`, `TotalSpent`, `Description`)
VALUES
(1, 1, 100.00, 'Food expenses report'),
(2, 2, 500.00, 'Rent expenses report'),
(3, 3, 150.00, 'Entertainment expenses report'),
(4, 4, 200.00, 'Utilities expenses report');

-- #30 Insert into BudgetPlanCategory table
INSERT INTO `BudgetPlanCategory` (`CategoryId`, `PlanId`, `AllocatedAmount`, `Notes`)
VALUES
(1, 1, 300.00, 'Monthly food budget'),
(2, 2, 700.00, 'Monthly rent budget'),
(3, 3, 100.00, 'Weekly entertainment budget'),
(4, 4, 150.00, 'Monthly utilities budget');



