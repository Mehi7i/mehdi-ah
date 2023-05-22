SELECT Customer, SUM(TotalAmount) AS TotalSales, COUNT(DISTINCT OrderId) AS TotalInvoices, SUM(Quantity) AS TotalItems
FROM Sale
WHERE Customer IN (
    SELECT DISTINCT Customer
    FROM Sale
    WHERE TotalAmount > 1500
)
GROUP BY Customer