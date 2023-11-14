USE QUATRO 

-------------------------------------------------------------------
--SELECTY hodiace sa k zistovaniu chýb, vhodne pri zadavani defektu
-------------------------------------------------------------------


--Monitorovanie chýb, SELECT nastavený tak že zobrazuje len chybové hlásenia, vhodné pri zistovaní prícin, preco napríklad žiadosti padajú resp. nefunguju
--Monitoring prebieha každých 5 minút

SELECT *
FROM [quatro_monitoring].quatro_monitoring
--WHERE description_all IS NOT NULL
ORDER by last_job_run DESC


GO
