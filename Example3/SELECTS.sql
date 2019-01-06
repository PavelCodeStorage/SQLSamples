SELECT Title,Year FROM  Movies
WHERE  Year>'2000-01-01' OR Year IS NULL
ORDER BY Year

GO

SELECT Title,Rating FROM Movies
WHERE Rating Like 'PG%'

GO

SELECT t1.Title as Title,
       t1.Rating as Rating,
	   t2.Description as Description
FROM Movies t1
	   INNER JOIN 
	   Ratings t2
	   ON 
	   t1.Rating=t2.ID	 
GO

SELECT  t2.ID,
         t2.Description
	    FROM Ratings t2
	    INNER JOIN Movies t1 
	    ON
	    t2.ID!=t1.Rating
GO

SELECT t1.ID,
       t1.Title,
       t1.Year,
	   t1.Rating,
	   t2.Description
FROM Movies t1
INNER JOIN
     Ratings t2
	 ON t1.Rating=t2.ID
WHERE Year=(SELECT Min(Year) FROM Movies)

GO
SELECT TOP 1 Rating AS POPULAR_Rating 
FROM Movies
GROUP BY Rating
Order by count(*) DESC
   
GO 
SELECT count(*),
       YEAR(Year) as Year FROM Movies
WHERE  Year>'1960-01-01'
GROUP BY Year

   

	   



	   
	  





	   