SELECT Customer, SUM(TotalAmount) AS TotalSales, COUNT(DISTINCT OrderId) AS TotalInvoices, SUM(Quantity) AS TotalItems,
(SUM(TotalAmount) - SUM(Cost)) AS TotalProfit
FROM Sale table 
WHERE Customer IN (
    SELECT DISTINCT Customer
    FROM Sales
    WHERE TotalAmount > 1500
)
GROUP BY Customer