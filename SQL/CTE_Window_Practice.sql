SELECT invoiceid, invoicedate, billingcountry, total, SUM(total) 
	OVER (ORDER BY invoicedate) AS RunningSum
FROM invoice WHERE BillingCountry = 'Germany';

SELECT InvoiceId, InvoiceDate, BillingCountry, Total, SUM(Total)
OVER (PARTITION BY BillingCountry)
AS SumByCountry
FROM Invoice
WHERE BillingCountry IN ('Belgium','France','Germany');

SELECT InvoiceId, InvoiceDate, BillingCountry, Total, ROUND(AVG(Total) OVER (PARTITION BY BillingCountry),2) AS AvgByCountry,
ROUND(Total - AVG(Total) OVER (PARTITION BY BillingCountry),2) AS SaleVsAvg
FROM Invoice WHERE BillingCountry IN ('Belgium','France','Germany');

SELECT TrackId, Name, Milliseconds, NTILE(4) OVER (ORDER BY Milliseconds DESC) AS Quartile FROM Track ORDER BY TrackId;

SELECT InvoiceId, InvoiceDate, Total, Total - LAG(Total,1) OVER (ORDER BY InvoiceId) AS SaleDiff FROM Invoice;

SELECT Invoiceid, InvoiceDate, SUM(Total)
	OVER (ORDER BY InvoiceDate) AS RunningSum
FROM Invoice
WHERE InvoiceDate LIKE '2007%';

SELECT BillingCountry, BillingState, MAX(Total)
	OVER (PARTITION BY BillingState) AS StateMax
FROM Invoice
WHERE BillingCountry = 'USA';


SELECT Name, GenreId, Milliseconds, Milliseconds - LAG(Milliseconds,1)
OVER(PARTITION BY GenreID ORDER BY Milliseconds) AS LenDiff
FROM Track;


SELECT *
FROM Track;

