USE QUATRO 

-------------------------------------------------------------------
--SELECTY hodiace sa k zistovaniu ch�b, vhode pri zadavani defektu
-------------------------------------------------------------------


--Monitorovanie ch�b, SELECT nastaven� tak �e zobrazuje len chybov� hl�senia, vhodn� pri zis�ovan� pr��in, pre�o napr�klad �iadosti padaj� resp. nefunguju
--Monitoring prebieha ka�d�ch 5 min�t

SELECT *
FROM [quatro_monitoring].quatro_monitoring
--WHERE description_all IS NOT NULL
ORDER by last_job_run DESC


GO