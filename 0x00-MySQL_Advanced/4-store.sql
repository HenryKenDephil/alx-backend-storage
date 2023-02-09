--buy buy buy
--a script that creates a trigger
--the trigger decreases the quantity of item after adding new order

CREATE TRIGGER ins_decrease_quantity AFTER INSERT ON items,
FOR EACH ROW SET @decrease_quantity = @decrease_quantity - new_order; 