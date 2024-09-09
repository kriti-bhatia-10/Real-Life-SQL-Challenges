select t.session_type, c.age_group, count(a.client_id) as total_client

from Attendance a

join Clients c ON c.client_id = a.client_id

join Training_Sessions t ON t.session_id = a.session_id

group by t.session_type, c.age_group

having count(a.client_id) > 2;