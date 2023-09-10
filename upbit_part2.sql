-- assume currency(integer data type) that mean for THB is 1 
SELECT d.member_uuid, d.currency, d.amount, p.first_name, p.last_name, p.birthday, p.gender, 
p.nationality, p.country_of_birth, p.country_location
FROM deposits d
LEFT JOIN memberinfopersonal p
ON d.account_id=p.personal_info_id
HAVING d.amount >= 5000000 AND d.currency=1
ORDER BY d.amount DESC;