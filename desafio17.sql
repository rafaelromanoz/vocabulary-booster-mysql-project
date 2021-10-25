DELIMITER $$
CREATE TRIGGER trigger_insert
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.CustomerID = 4,
NEW.EmployeeID = 2,
NEW.ShipperID = 2,
NEW.OrderDate = NOW();
END $$
DELIMITER ;
