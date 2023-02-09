--average weighted score
--sql script that creates a stored procedure
--computes and store average weighted score for a student

CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN user_id INT)
BEGIN
    DECLARE average FLOAT;
    SET average=(SELECT SUM(score*weight) / SUM(weight)
    FROM users AS u JOIN corrections as c ON u.id=c.user_id
    JOIN projects AS p ON c.project_id=p.id WHERE u.id=user_id);
    UPDATE users SET average_score=average WHERE id=user_id;
END;$$