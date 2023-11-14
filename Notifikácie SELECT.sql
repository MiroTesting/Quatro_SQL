USE QUATRO

---------------------------
-- SELECTY k notifikáciam
---------------------------


--Notifikácie na klienta, predajcu (expirácie draftov...)

SELECT *
FROM [eshop-dw-subscriber].event
--WHERE business_key = ''
--WHERE message LIKE '%mantal1%'
--WHERE message LIKE '%904755211%'
ORDER by created_at DESC


GO
