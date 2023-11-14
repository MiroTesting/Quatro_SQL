USE QUATRO

-------------------------------------
--SELECTY k outputom/inputom z/do CF
-------------------------------------


--CF response, request medzi QPA a CF
SELECT *
FROM [eshop-dw-subscriber].creditflow
WHERE business_key = '47749a15-d260-4353-973e-c75840f5a522'
ORDER by created_at DESC

--CF
SELECT *
FROM [eshop-dw-subscriber].state
--WHERE business_key = '47749a15-d260-4353-973e-c75840f5a522'
ORDER by created_at DESC

GO