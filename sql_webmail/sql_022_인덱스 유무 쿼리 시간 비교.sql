DROP TABLE if EXISTS n ;
DROP TABLE if EXISTS a ;
DROP TABLE if EXISTS c ;

CREATE TABLE n AS (
WITH recursive num AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1 FROM num WHERE n < 1000000 
)
SELECT n FROM num 
) ;

SELECT * FROM n ORDER BY 1 DESC ;

-- a table without index
CREATE TABLE a AS SELECT UUID() AS b FROM n ; 

-- c table with index from primary key
CREATE TABLE c ( d VARCHAR(40) PRIMARY KEY );
INSERT INTO c SELECT UUID() FROM n ; 

SELECT COUNT(*) FROM c ;
SELECT * FROM c ORDER BY 1 DESC LIMIT 1 ;

-- index
SELECT * FROM c WHERE d = ( SELECT d FROM c ORDER BY 1 DESC LIMIT 1 )  ;

SELECT COUNT(*) FROM a ;
SELECT * FROM a ; 

-- no index
SELECT * FROM a WHERE b = ( SELECT b FROM a ORDER BY 1 DESC LIMIT 1 ) ;


