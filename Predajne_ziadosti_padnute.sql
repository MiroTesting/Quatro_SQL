USE QBUSINESS

-------------------------------------
--ZOZNAM �iadosti a podrobnosti k n�m
-------------------------------------
SELECT *
FROM [dbo].application
ORDER by created_at DESC

-------------------------------------
--ZOZNAM Predajn�ch sieti
-------------------------------------

SELECT * 
FROM [dbo].business_network

-------------------------------------
--ZOZNAM Predajn�ch miest
-------------------------------------

SELECT * 
FROM [dbo].business_place

-------------------------------------
--ZOZNAM Padnut�ch �iadosti
-------------------------------------

SELECT *
FROM [dbo].application_failed
ORDER by created_at DESC

GO