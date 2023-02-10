--no table for a meeting
--sql script that creates a view and list 
--all students with score under 80

CREATE VIEW IF NOT EXISTS need_meetings AS SELECT name 
FROM students 
WHERE 
    score < 80 AND 
    (last_meeting IS NULL 
        OR 
    last_meeeting < ADDATE(CURDATE(), interval -1 MONTH));