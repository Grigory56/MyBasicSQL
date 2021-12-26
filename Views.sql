CREATE VIEW vw_goods AS
  SELECT id_goods,goods,id_categories
  FROM goods; 
  
CREATE VIEW vw_goods_categories AS
  SELECT id_categories,categories_name,num
  FROM goods_categories
  
   
 SELECT c.categories_name, COUNT(g.goods)
 FROM vw_goods_categories AS c,
      vw_goods AS g
 WHERE c.id_categories=g.id_categories
 GROUP BY c.categories_name
 ORDER BY c.categories_name;
 
 SELECT c.categories_name, COUNT(g.goods)
 FROM vw_goods_categories AS c
JOIN vw_goods AS g
  ON c.id_categories=g.id_categories
  GROUP BY c.categories_name
 ORDER BY  c.categories_name;
 
 SELECT c.categories_name, COUNT(g.goods)
 FROM vw_goods_categories AS c,
 
 SELECT COUNT(goods)
 FROM vw_goods
 WHERE  id_categories >0
 