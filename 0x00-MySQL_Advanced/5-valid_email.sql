--email validation to sent
--script that creates a trigger 
--to reset the attribute valid_email
--only when email has been changed

CREATE TRIGGER up_reset_email AFTER UPDATE  ON
email_address AS
    SET nocount ON
    INSERT INTO email_address(name, email)
    SELECT
        name
        coalesce(email, name + '@*.com')
    FROM updated email