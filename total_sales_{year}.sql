-- What are the respective total sales for each of those years?

SELECT SUM(Invoice.Total) FROM Invoice
WHERE Invoice.InvoiceDate LIKE '%2009%'
UNION ALL
SELECT SUM(Invoice.Total) FROM Invoice
WHERE Invoice.InvoiceDate LIKE '%2011%';