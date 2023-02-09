--average score
--script that stores a procedure


CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id int)
BEGIN
    UPDATE users SET average_score =(SELECT AVG(score) from corrections AS user WHERE user.user_id = user_id=user_id) WHERE user.user_id = user_id)
    WHERE id=user_id;

END;$$
