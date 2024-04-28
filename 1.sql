SELECT c. login, COUNT(o.id) AS "deliveryCount"
FROM "Couriers" AS c
LEFT JOIN "Orders" AS o ON c.id = o. "courierId"
WHERE o. "inDelivery" = true
GROUP BY c.login;
