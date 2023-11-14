USE QUATRO 

----------------------------------------------------------------------------------------------
--SELECT k updatu osobnıch, kontaktnıch údajov, k zaloením slubam, generovaniu dokumentov
----------------------------------------------------------------------------------------------

--update osobnıch, kontaktnıch údajov
--monos vyh¾adania cez dáta napriklad emailu, Mena, priezviska
SELECT *
FROM [eshop-dw-subscriber].updating_data
WHERE business_key = '47749a15-d260-4353-973e-c75840f5a522'
--WHERE data LIKE '%mantal1@vub.sk'
ORDER by created_at DESC



-- Postupovanie iadosti jednotlivımi slubami
SELECT *
FROM [identifier-manager].identifier
WHERE business_key = 'a16ccb59-1414-4ff5-b078-350a9539c05c'
ORDER by created_at DESC


--Generovanie dokumentov
SELECT *
FROM [quatro-document-reference].document
ORDER by created_at DESC



GO