-- What was the most purchased track of 2013?
SELECT t.Name AS TrackName, SUM(il.Quantity) AS num_purchases
FROM tracks t
JOIN invoice_items il ON t.TrackId = il.TrackId
JOIN invoices i ON il.InvoiceId = i.InvoiceId
WHERE i.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY t.TrackId
ORDER BY num_purchases DESC
LIMIT 1;
