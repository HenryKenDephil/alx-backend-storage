--safe divide
--sql script that creaes a function safeDive
--divides and returns the first by second
--number or returns 0 if second number is equal to 0

CREATE FUNCTION safeDive(a int, b INT) 
DELIMITER $$
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    IF (b = 0)
    THEN
        RETURN (0);
    ELSE
        RETURN (a / b);
    END IF;
END
$$ 
DELIMITER ;

