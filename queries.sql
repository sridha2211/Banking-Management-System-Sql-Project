-- 1. Calculate current balance of each account
SELECT a.account_id, a.account_holder,
SUM(CASE WHEN t.transaction_type='DEPOSIT' THEN amount
WHEN t.transaction_type='TRANSFER' THEN -amount
WHEN t.transaction_type='WITHDRAWAL' THEN -amount END) AS balance
FROM accounts a
LEFT JOIN transactions t ON a.account_id = t.account_id
GROUP BY a.account_id, a.account_holder;


-- 2. Fraud detection: transactions > 5000
SELECT * FROM transactions
WHERE amount > 5000;


-- 3. Monthly statements for April 2025
SELECT a.account_id, a.account_holder, t.transaction_date, t.transaction_type, t.amount
FROM accounts a
JOIN transactions t ON a.account_id = t.account_id
WHERE MONTH(t.transaction_date) = 4 AND YEAR(t.transaction_date) = 2025
ORDER BY a.account_id, t.transaction_date;
