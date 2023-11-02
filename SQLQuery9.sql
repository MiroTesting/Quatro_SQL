USE [QUATRO]
GO

SELECT *
FROM [dbo].[CLIENT_TP]


SELECT *
FROM [document-sign-manager].[document]
ORDER by signed_at DESC

SELECT *
FROM [eshop-application-identification].identification
ORDER by created_at DESC

SELECT *
FROM [eshop-application-manager].application_info
ORDER by created_at DESC

SELECT *
FROM [eshop-application-state].raw_state
WHERE sub_state = 'SIGNED'
ORDER by updated_at DESC


SELECT *
FROM [eshop-dw-subscriber].application
--WHERE data like '%mantal1%'
ORDER by application_created_at DESC


SELECT *
FROM [eshop-dw-subscriber].application_identifiers
--WHERE data like '%mantal1%'
ORDER by created_at DESC


SELECT *
FROM [eshop-dw-subscriber].c_sub_state
--stavy 

SELECT *
FROM [eshop-dw-subscriber].c_state
--stavy žiadosti

SELECT *
FROM [eshop-dw-subscriber].creditflow
ORDER by created_at DESC

SELECT *
FROM [eshop-dw-subscriber].event
ORDER by created_at DESC
--notifikácie 

SELECT *
FROM [eshop-dw-subscriber].state
ORDER by created_at DESC

SELECT *
FROM [eshop-dw-subscriber].updating_data
ORDER by created_at DESC
--update osobných, kontaktných údajov

SELECT *
FROM [event-exchange].action
ORDER by created_at DESC

SELECT *
FROM [identifier-manager].identifier
ORDER by created_at DESC

USE QUATRO

SELECT *
FROM [quatro_monitoring].quatro_monitoring
ORDER by last_job_run DESC
--monitoruje chyby na quatro žiadostiach


SELECT *
FROM [quatro-calculator].product
--všetky produkty

SELECT *
FROM [quatro-codelist-form].codelist
--zoznam všetkych kódov (dokumenty, prijem atï)

SELECT *
FROM [quatro-document-reference].document
ORDER by created_at DESC
--generovanie dokumentov

SELECT *
FROM [quatro-document-starter].document
ORDER by created_at DESC
--uuid, typ podpisaneho dokumentu, akým sposobom bol podpísaný a èas

SELECT *
FROM [vub-client-manager].identification
ORDER by created_at DESC
--všetky produkty