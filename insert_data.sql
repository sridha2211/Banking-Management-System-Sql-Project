-- Insert sample accounts
INSERT INTO accounts (account_holder, account_type, created_date)
VALUES
('John Doe', 'Savings', '2025-01-01'),
('Jane Smith', 'Current', '2025-02-15'),
('Alice Johnson', 'Savings', '2025-03-10');


-- Insert sample transactions
INSERT INTO transactions (account_id, transaction_type, amount, transaction_date)
VALUES
(1, 'DEPOSIT', 5000.00, '2025-04-01'),
(1, 'WITHDRAWAL', 200.00, '2025-04-05'),
(2, 'DEPOSIT', 10000.00, '2025-04-03'),
(2, 'TRANSFER', 1500.00, '2025-04-07'),
(3, 'DEPOSIT', 7000.00, '2025-04-02');
