
-- =====================================
-- RETAIL SALES ANALYSIS (SQL)
-- =====================================

-- 1. Total Sales & Profit
SELECT 
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM orders;


-- 2. Profit by Region
SELECT 
    Region,
    SUM(Profit) AS total_profit
FROM orders
GROUP BY Region
ORDER BY total_profit;


-- 3. Worst & Best Region (Profit)
SELECT 
    Region,
    SUM(Profit) AS total_profit
FROM orders
GROUP BY Region
ORDER BY total_profit ASC;


-- 4. Top 10 Products by Sales
SELECT 
    "Product Name",
    SUM(Sales) AS revenue
FROM orders
GROUP BY "Product Name"
ORDER BY revenue DESC
LIMIT 10;


-- 5. Loss-making Products
SELECT 
    "Product Name",
    SUM(Profit) AS total_profit
FROM orders
GROUP BY "Product Name"
HAVING total_profit < 0
ORDER BY total_profit;
