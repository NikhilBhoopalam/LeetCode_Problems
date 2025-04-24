# Write your MySQL query statement below
SELECT contest_id, ROUND(
        (COUNT(DISTINCT user_id)*100/
            (SELECT COUNT(user_id)
                FROM users)
        ),2) AS percentage

from register
group by contest_id
order by percentage desc,contest_id