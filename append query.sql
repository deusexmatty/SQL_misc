SELECT mp.*, d.* --lt.rsc AS BDR_name, mp.situscity AS Location,  count(lt.rsc) AS Letter_Count, lt.address1, lt.address2
FROM mailing.mail_pieces mp

INNER JOIN mailing.county_data c
  ON c.id = mp.county_data_id
INNER JOIN mailing.homeowner_data_append d
 ON  mp.addressname  = d.recipient_address_1                                      --  c.attomid = d.attomid
 AND mp.cassmailingcity = d.recipient_city
 AND mp.cassmailingstate = d.recipient_state
-- LEFT JOIN mailing.mail_batches mb
--   ON mb.mailbatchid = mp.mailbatchid
-- LEFT JOIN mailing.mail_lettertemplates lt
--   ON lt.templateid = mb.templateid


 


-- Inner JOIN 
WHERE /* lt.templatename ILIKE 'National Mailer 9%'
and lt.templateid = 3086 --BETWEEN 3075 and 3087
and */ (mp.situscity ILIKE 'Gatlinburg'  
     OR situscity ILIKE 'Pigeon Forge')
--AND lt.rscuserid = 20247
-- GROUP BY lt.rsc, mp.situscity, lt.address1, lt.address2
-- ORDER BY lt.rsc ASC
;

SELECT *  FROM  
mailing.homeowner_data_append s
where s.property_city IN ('Gatlinburg', 'Pigeon Forge' )
;
