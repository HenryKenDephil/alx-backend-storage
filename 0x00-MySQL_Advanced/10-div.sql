--safe divide
--sql script that creaes a function safeDive
--divides and returns the first by second
--number or returns 0 if second number is equal to 0

CREATE FUNCTION safeDive(a int, b INT) 
    LANGUAGE SQL
    MODIFIES SQL
    DECLARE a int, b int
    IF b > 0 
        THEN RETURN a/b ;
    ELSE
        RETURN 0;
    END IF;
    RETURN a/b;
    END


