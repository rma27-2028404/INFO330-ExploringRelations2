-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT e.FirstName || ' ' || e.LastName AS SalesAgentName,
       i.*
FROM employees e
JOIN customers c ON e.EmployeeId = c.SupportRepId
JOIN invoices i ON c.CustomerId = i.CustomerId
WHERE e.Title = 'Sales Support Agent'
ORDER BY SalesAgentName, i.InvoiceId;
