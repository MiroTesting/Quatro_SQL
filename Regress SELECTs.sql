USE QUATRO

--------------------------------------------------------------
--SELECTY vhodn� pri regresnom testovan� quatro pred releasom
--------------------------------------------------------------

--Stavy �iadosti a procesu
SELECT *
FROM [eshop-dw-subscriber].c_sub_state
UNION
SELECT *
FROM [eshop-dw-subscriber].c_state

--Zoznam v�etk�ch akt�vnych produktov na Quatre, vhodn� pri testovan� regressu
SELECT *
FROM [quatro-calculator].product

GO
