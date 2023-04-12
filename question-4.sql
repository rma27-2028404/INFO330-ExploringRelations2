-- Which sales agent made the most in sales in 2010?
SELECT e.FirstName || ' ' || e.LastName AS SalesAgentName, 
       SUM(i.Total) AS Sale_Amount
FROM employees e 
JOIN customers c ON e.EmployeeId = c.SupportRepId 
JOIN invoices i ON c.CustomerId = i.CustomerId 
WHERE e.Title = 'Sales Support Agent' 
  AND i.InvoiceDate BETWEEN '2010-01-01' AND '2010-12-31'
GROUP BY e.FirstName, e.LastName 
ORDER BY Sale_Amount DESC 
LIMIT 1;
