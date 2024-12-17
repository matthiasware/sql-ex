SELECT  name
FROM Ships, Classes
where
 Ships.class=Classes.class
 and type='bb'
 and launched >= 1922
 and displacement > 35000
