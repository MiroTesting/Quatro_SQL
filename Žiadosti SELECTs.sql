USE QUATRO

---------------------------------------------
--SELECTY k žiadostiam, podpisu, CN, CIS...
---------------------------------------------

--UUID, typ podpísaného dokumentu, forma podpisania,miesto podpisania, CN, barcode, CF, podpis NB, èas vytvorenia, party ID, prospect ID (ONLY SIGNED)

SELECT [eshop-dw-subscriber].[application_identifiers].business_key, [eshop-dw-subscriber].[application_identifiers].correlation_id, [eshop-dw-subscriber].[application_identifiers].channel, [eshop-dw-subscriber].[application_identifiers].contract_number, [eshop-dw-subscriber].[application_identifiers].barcode, [eshop-dw-subscriber].[application_identifiers].credit_flow_id, [eshop-dw-subscriber].[application_identifiers].application_signed_at, application_signed_form, [eshop-dw-subscriber].[application_identifiers].contract_signed_at, [eshop-dw-subscriber].[application_identifiers].contract_signed_form, [eshop-dw-subscriber].application_identifiers.created_at, [eshop-dw-subscriber].[application_identifiers].contract_nb_signed_at, [eshop-dw-subscriber].[application_identifiers].contract_nb_signed_form, [vub-client-manager].identification.party_id, [vub-client-manager].identification.prospect_id, [vub-client-manager].identification.result_data, [eshop-application-state].raw_state.detail, COUNT (*)  
FROM [eshop-dw-subscriber].[application_identifiers]
JOIN [vub-client-manager].identification ON [eshop-dw-subscriber].[application_identifiers].business_key = [vub-client-manager].identification.business_key
JOIN [eshop-application-state].raw_state ON [eshop-dw-subscriber].[application_identifiers].business_key = [eshop-application-state].raw_state.business_key
GROUP BY [eshop-dw-subscriber].[application_identifiers].business_key, [eshop-dw-subscriber].[application_identifiers].correlation_id, [eshop-dw-subscriber].[application_identifiers].channel, [eshop-dw-subscriber].[application_identifiers].contract_number, [eshop-dw-subscriber].[application_identifiers].barcode, [eshop-dw-subscriber].[application_identifiers].credit_flow_id, [eshop-dw-subscriber].[application_identifiers].application_signed_at, application_signed_form, [eshop-dw-subscriber].[application_identifiers].contract_signed_at, [eshop-dw-subscriber].[application_identifiers].contract_signed_form, [eshop-dw-subscriber].application_identifiers.created_at, [eshop-dw-subscriber].[application_identifiers].contract_nb_signed_at, [eshop-dw-subscriber].[application_identifiers].contract_nb_signed_form, [vub-client-manager].identification.party_id, [vub-client-manager].identification.prospect_id, [vub-client-manager].identification.result_data, [eshop-application-state].raw_state.detail 
HAVING COUNT(*) > 1
ORDER by [eshop-dw-subscriber].[application_identifiers].created_at DESC


--Typ podpísaného dokumentu, forma podpisania, èas vytvorenia, party ID, prospect ID (ONLY SIGNED)
USE QUATRO
SELECT [quatro-document-starter].[document].[business_key], [quatro-document-starter].[document].document_type, [quatro-document-starter].[document].sign_form, [quatro-document-starter].[document].salesman_code, [quatro-document-starter].[document].created_at, [vub-client-manager].[identification].party_id, [vub-client-manager].[identification].prospect_id, [vub-client-manager].[identification].result_data, COUNT (*)
FROM [quatro-document-starter].[document]
JOIN [vub-client-manager].identification ON [quatro-document-starter].[document].business_key = [vub-client-manager].identification.business_key
--WHERE party_id = '473390~^~CIS'
GROUP BY [quatro-document-starter].[document].[business_key], [quatro-document-starter].[document].document_type, [quatro-document-starter].[document].sign_form, [quatro-document-starter].[document].salesman_code, [quatro-document-starter].[document].created_at, [vub-client-manager].[identification].party_id, [vub-client-manager].[identification].prospect_id, [vub-client-manager].[identification].result_data
HAVING COUNT (*) > 1
ORDER by [quatro-document-starter].document.created_at DESC

GO