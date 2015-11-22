select v.name
from family f, person p, vehicle v,
left outer join vp.vehicle_id on v.vehicle_id
where f.name = 'Singh'
and p.name = 'Andrea'
and p.person_id = vp.person_id
left outer join vp.vehicle_id on v.vehicle_id;
