SELECT ADDDATE(CURRENT_DATE(), 15)

SELECT CURRENT_TIMESTAMP(), ADDTIME(CURRENT_TIMESTAMP(), '00:15:00');

SELECT CAST('2023-06-25' AS DATE);
SELECT CAST(12345 AS CHAR);


SELECT ADDDATE(CAST('2023-06-25' AS DATE), 10);

SELECT p.Prod_Id, p.Prod_Descripcion,  CHAR_LENGTH(p.Prod_Descripcion) AS largo FROM productos p