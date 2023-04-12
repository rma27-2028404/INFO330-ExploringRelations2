-- Find tracks (id, name and composer) that are part of a line in an invoice.
SELECT t.TrackId, t.Name AS TrackName, t.Composer
FROM tracks t
JOIN invoice_items il ON t.TrackId = il.TrackId;
