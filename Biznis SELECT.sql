USE QBUSINESS

----------------------------------------------
--SELECTY, ktoré môe poui biznis oddelenie
----------------------------------------------

--Vypiš iadosti, ktoré sú podpísané v období od 1 Septembra do 12 Októbra
SELECT [contract_number] AS 'Èíslo iadosti',[applicant_first_name] AS 'Meno', [applicant_last_name] AS 'Priezvisko', [applicant_birth_number] AS 'Rodné èislo',[applicant_email] AS 'Email', [state_partner] AS 'Stav iadosti',[loan_product_name], [loan_product_description], [created_at] AS 'Dátum vytvorenia'
FROM [dbo].[application]
WHERE state_partner = 'SIGNED' and created_at BETWEEN '2023-09-01 00:00:00.0000000 +02:00' AND '2023-10-12 00:00:00.0000000 +02:00'
ORDER BY contract_number DESC


-- Vypíš celkovı poèet predajnıch sieti
SELECT COUNT(id) AS 'Celkovı poèet predajní'
FROM [dbo].[business_network]

-- Vypíš všetky padnuté iadosti za mesiac September, kde miesto spadnutia bola app SPIN
SELECT *
FROM [dbo].application_failed
WHERE created_at BETWEEN '2023-09-01 00:00:00.0000000 +02:00' and '2023-10-01 00:00:00.0000000 +02:00' 
					AND process_id = 'spin' 

 -- Vypíš všetky mesta v ktorıch máme predajnu sie a vypíš ich poèet
 SELECT COUNT (DISTINCT address_city) 
 FROM [dbo].business_network

  -- Vypíš celkovú sumu za ktorú klienti nakupili v poboèkách za September
 SELECT SUM(loan_amount) AS 'Celková suma'
 FROM [dbo].[application]
 WHERE created_at BETWEEN '2023-09-01 00:00:00.0000000 +02:00' and '2023-10-01 00:00:00.0000000 +02:00' AND state_partner = 'SIGNED'


 -- Vypíš všetky iadosti vytvorené od do 
 SELECT * from dbo.application WHERE created_at BETWEEN '2022-06-28 00:00:00.0000000 +02:00' AND '2022-10-28 00:00:00.0000000 +02:00'

  -- Vypíš všetky s.r.o (PO) siete, ktoré maju pri zodpovednej osobe uvedené priezvisko
 SELECT * 
 FROM [dbo].business_network
 WHERE company_type = 'PO' 
 AND responsible_person_last_name LIKE '_%'

 GO