WITH reservations_unpivoted_runn_sum AS
  (SELECT to_char(res_unp_rn_sum.check_date, 'IYYY-IW') week_id,
          res_unp_rn_sum.check_type,
          SUM (res_unp_rn_sum.check_type) OVER (ORDER BY res_unp_rn_sum.check_date ASC) running_sum
   FROM
     (SELECT reservations_unpivoted.check_date,
             reservations_unpivoted.check_type
      FROM
        (SELECT reservations.check_in_date AS check_date,
                1 AS check_type
         FROM reservations
         UNION ALL SELECT reservations.check_out_date AS check_date,
                          -1 AS check_type
         FROM reservations) reservations_unpivoted) res_unp_rn_sum)
SELECT reservations_unpivoted_runn_sum.week_id AS week,
       MAX(reservations_unpivoted_runn_sum.running_sum) AS number_of_rooms
FROM reservations_unpivoted_runn_sum
WHERE reservations_unpivoted_runn_sum.check_type = 1
GROUP BY week_id
ORDER BY week_id