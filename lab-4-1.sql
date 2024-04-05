-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

select
sum(hits)

From players p

left join stats s
on p.id=s.player_id

where first_name='Barry'
and last_name = 'Bonds';

