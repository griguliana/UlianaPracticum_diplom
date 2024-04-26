select c."login" AS login, COUNT(o."id")
from "Orders" o
inner join "Couriers" c on o."courierId" = c.id
where "inDelivery" = true
GROUP BY login;