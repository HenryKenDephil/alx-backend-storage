--safe divide
--sql script that creaes a function safeDive
--divides and returns the first by second
--number or returns 0 if second number is equal to 0

CREATE FUNCTION safeDive(a INT, b INT) 
DELIMITER $$
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
	DECLARE result FLOAT;
	IF b = 0 THEN
		RETURN 0;
        END IF;
        SET result = (a * 1.0) / b;
        RETURN result;
END;
$$
DELIMITER;
