USE QUATRO

---------------------------
-- SELECTY k notifik�ciam
---------------------------


--Notifik�cie na klienta, predajcu (expir�cie draftov...)

SELECT *
FROM [eshop-dw-subscriber].event
--WHERE business_key = ''
--WHERE message LIKE '%mantal1%'
--WHERE message LIKE '%904755211%'
ORDER by created_at DESC


GO
