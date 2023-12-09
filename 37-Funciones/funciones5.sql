SELECT COMPRESS(p.Prod_Descripcion) AS comprimido FROM productos p

SELECT UNCOMPRESS(COMPRESS(p.Prod_Descripcion)) AS original FROM productos p

SELECT CONCAT("(", p.Prod_Id, ")",p.Prod_Descripcion, " ", p.Prod_Color) AS descripcion FROM productos p
SELECT CONCAT_WS(" ", p.Prod_Id,p.Prod_Descripcion, p.Prod_Color) AS descripcion FROM productos p

SELECT CONV("10", 10, 2)
SELECT CONV("A", 16, 10)

SELECT DATE_ADD(CURRENT_DATE, INTERVAL 10 YEAR);

SELECT DATE_FORMAT('2023-08-21', '%M')

SELECT DATE_SUB(CURRENT_DATE, INTERVAL 10 DAY);
