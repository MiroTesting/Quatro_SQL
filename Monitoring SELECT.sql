USE QUATRO 

-------------------------------------------------------------------
--SELECTY hodiace sa k zistovaniu chıb, vhode pri zadavani defektu
-------------------------------------------------------------------


--Monitorovanie chıb, SELECT nastavenı tak e zobrazuje len chybové hlásenia, vhodné pri zisovaní príèin, preèo napríklad iadosti padajú resp. nefunguju
--Monitoring prebieha kadıch 5 minút

SELECT *
FROM [quatro_monitoring].quatro_monitoring
--WHERE description_all IS NOT NULL
ORDER by last_job_run DESC


GO