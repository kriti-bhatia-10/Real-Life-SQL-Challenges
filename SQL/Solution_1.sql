select 

	p.person_name, SUM(f.fruit_quantity) as total_fruits_picked

from Fruit_Picking f

left join People p ON f.person_id = p.person_id

group by p.person_name

having SUM(f.fruit_quantity) > 100;