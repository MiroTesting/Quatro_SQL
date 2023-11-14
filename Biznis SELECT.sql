USE QBUSINESS

----------------------------------------------
--SELECTY, ktor� m��e pou�i� biznis oddelenie
----------------------------------------------

--Vypi� �iadosti, ktor� s� podp�san� v obdob� od 1 Septembra do 12 Okt�bra
SELECT [contract_number] AS '��slo �iadosti',[applicant_first_name] AS 'Meno', [applicant_last_name] AS 'Priezvisko', [applicant_birth_number] AS 'Rodn� �islo',[applicant_email] AS 'Email', [state_partner] AS 'Stav �iadosti',[loan_product_name], [loan_product_description], [created_at] AS 'D�tum vytvorenia'
FROM [dbo].[application]
WHERE state_partner = 'SIGNED' and created_at BETWEEN '2023-09-01 00:00:00.0000000 +02:00' AND '2023-10-12 00:00:00.0000000 +02:00'
ORDER BY contract_number DESC


-- Vyp� celkov� po�et predajn�ch sieti
SELECT COUNT(id) AS 'Celkov� po�et predajn�'
FROM [dbo].[business_network]

-- Vyp� v�etky padnut� �iadosti za mesiac September, kde miesto spadnutia bola app SPIN
SELECT *
FROM [dbo].application_failed
WHERE created_at BETWEEN '2023-09-01 00:00:00.0000000 +02:00' and '2023-10-01 00:00:00.0000000 +02:00' 
					AND process_id = 'spin' 

 -- Vyp� v�etky mesta v ktor�ch m�me predajnu sie� a vyp� ich po�et
 SELECT COUNT (DISTINCT address_city) 
 FROM [dbo].business_network

  -- Vyp� celkov� sumu za ktor� klienti nakupili v pobo�k�ch za September
 SELECT SUM(loan_amount) AS 'Celkov� suma'
 FROM [dbo].[application]
 WHERE created_at BETWEEN '2023-09-01 00:00:00.0000000 +02:00' and '2023-10-01 00:00:00.0000000 +02:00' AND state_partner = 'SIGNED'


 -- Vyp� v�etky �iadosti vytvoren� od do 
 SELECT * from dbo.application WHERE created_at BETWEEN '2022-06-28 00:00:00.0000000 +02:00' AND '2022-10-28 00:00:00.0000000 +02:00'

  -- Vyp� v�etky s.r.o (PO) siete, ktor� maju pri zodpovednej osobe uveden� priezvisko
 SELECT * 
 FROM [dbo].business_network
 WHERE company_type = 'PO' 
 AND responsible_person_last_name LIKE '_%'

 GO