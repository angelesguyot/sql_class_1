-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

select
first_name,
last_name,
t.name,
max(home_runs) hr
From players p
left join stats s
on p.id=s.player_id
left join teams t
on t.id=s.team_id
where  t.year = '2019'
;
