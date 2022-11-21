use classicmodels;

-- Drop PROCEDURE IF EXISTS `getCusById`;

-- DELIMITER //

-- CREATE PROCEDURE getCusById

-- (IN cusNum INT)

-- BEGIN

--   SELECT * FROM customers WHERE customerNumber = cusNum;

-- END //

-- DELIMITER ;

-- CALL getCusById(175);

-- delimiter //

-- create procedure GetCustomerCountByCity(
-- 	IN in_city VARCHAR(50),
--     
--     OUT total INT
-- )

-- BEGIN
-- 	SELECT count(customerNumber) INTO total
--     FROM customers
--     WHERE city = in_city;
--     
-- END//

-- delimiter ;

-- CALL GetCustomerCountByCity('Lyon',@total);

-- SELECT @total;

DELIMITER //

CREATE PROCEDURE SetCounter(

    INOUT counter INT,

    IN inc INT

)

BEGIN

    SET counter = counter + inc;

END//

DELIMITER ;

SET @counter = 1;

CALL SetCounter(@counter,1);
CALL SetCounter(@counter,5);

SELECT @counter;


    