USE QUATRO

--------------------------------------------------------------
--SELECTY vhodné pri regresnom testovaní quatro pred releasom
--------------------------------------------------------------

--Stavy žiadosti a procesu
SELECT *
FROM [eshop-dw-subscriber].c_sub_state
UNION
SELECT *
FROM [eshop-dw-subscriber].c_state

--Zoznam všetkých aktívnych produktov na Quatre, vhodné pri testovaní regressu
SELECT *
FROM [quatro-calculator].product

GO
