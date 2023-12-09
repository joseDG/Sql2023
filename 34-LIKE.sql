SELECT p.Prod_Id, p.Prod_Descripcion, p.Prod_Color, p.Prod_Precio FROM productos p
WHERE CONCAT(p.Prod_Descripcion, p.Prod_Color) LIKE "%NEGRO%"