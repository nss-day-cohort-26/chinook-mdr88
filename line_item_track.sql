-- Provide a query that includes the purchased track name with each invoice line item.

SELECT Track.Name AS Track, Artist.Name AS Artist, InvoiceLine.InvoiceLineId, InvoiceLine.Quantity, InvoiceLine.UnitPrice FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId;