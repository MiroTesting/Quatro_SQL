USE QBUSINESS

-------------------------------------
--ZOZNAM žiadosti a podrobnosti k ním
-------------------------------------
SELECT *
FROM [dbo].application
ORDER by created_at DESC

-------------------------------------
--ZOZNAM Predajných sieti
-------------------------------------

SELECT * 
FROM [dbo].business_network

-------------------------------------
--ZOZNAM Predajných miest
-------------------------------------

SELECT * 
FROM [dbo].business_place

-------------------------------------
--ZOZNAM Padnutých žiadosti
-------------------------------------

SELECT *
FROM [dbo].application_failed
ORDER by created_at DESC

GO