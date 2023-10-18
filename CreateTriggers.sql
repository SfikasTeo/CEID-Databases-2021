-- we need variable @user_now (= user id of current user)
-- trigger 4_1 notes
-- deletes on rental/payment made only by the admin
-- -- (we might need the triggers if the admin wants to delete some records to free up space in the database)
-- before update on rental/payment abort (no one can change a rental/payment that has already been made)

-- @block valid_rental (before insert) 
-- checks valid rental (primary indexes used for where clause) - might be prevented from gui 

CREATE TRIGGER validate_rental BEFORE INSERT ON rental
FOR EACH ROW 
BEGIN 
	DECLARE usn VARCHAR(50);
	DECLARE ust enum('CUSTOMER', 'EMPLOYEE', 'ADMINISTRATOR');

	-- find if the user who makes the rental is a customer 
	SELECT usertype, email
	INTO ust, usn 
	FROM user
	WHERE user_id = NEW.customer_id;

	-- if the user is a customer
	IF (ust = "CUSTOMER")
	BEGIN
		-- find their type
		DECLARE ctype enum("FILMS ONLY", "SERIES ONLY", "FILMS AND SERIES");
			SELECT type INTO ctype 
			FROM customer
			WHERE customer_id = @user_now;

		-- cases of invalid rental
		IF (ctype = "FILMS ONLY" AND NEW.film_id IS NULL) OR (ctype = "SERIES ONLY" AND NEW.episode_id IS NULL ) 
			SIGNAL SQLSTATE VALUE "45000"
				SET MESSAGE_TEXT = "It seems like you cannot rent this product (Invalid subscription). Please update your subscription.";
				INSERT INTO log (NULL, usn, NOW(), "INSERT", 0,  "RENTAL");
		END IF;
	END;
	ELSE
		SIGNAL SQLSTATE VALUE "45000"
		SET MESSAGE_TEXT = "Only customers can make a new rental";
		INSERT INTO log (NULL, usn, NOW(), "INSERT", 0,  "RENTAL");
	END IF;
END$

-- @block rental_made (after insert)
CREATE TRIGGER after_rental_pay AFTER INSERT ON rental
FOR EACH ROW
BEGIN 
	DECLARE usn VARCHAR(50);

	SELECT email INTO usn
	FROM user 
	WHERE user.user_id = NEW.customer_id;

	INSERT INTO LOG VALUES(NULL, usn, NOW(), "INSERT", 1, "RENTAL");
	CALL pay4product(NEW.rental_id, NEW.customer_id);
END$

-- @block payment_made (after insert)
CREATE TRIGGER rental_made AFTER INSERT ON payment
FOR EACH ROW 
BEGIN 
	DECLARE usn VARCHAR(50);

	SELECT email INTO usn
	FROM user 
	WHERE user.user_id = NEW.customer_id;
	INSERT INTO LOG VALUES(NULL, usn, NOW(), "INSERT", 1, "PAYMENT");
END$

-- @block delete rental
CREATE TRIGGER delete_rental BEFORE DELETE ON rental 
FOR EACH ROW 
BEGIN 
    DECLARE ust enum("CUSTOMER", "ADMIN", "EMPLOYEE");
    DECLARE usn VARCHAR(70);

    SELECT usertype, email INTO ust, usn
    FROM user 
    WHERE user_id = @user_now;

    IF (ust != "ADMIN") THEN
        INSERT INTO log VALUES(NULL, usn, CURDATE(), "DELETE", 0, "RENTAL");
        SIGNAL SQLSTATE VALUE "45000"
		SET MESSAGE_TEXT ="You are not authorized to change this value.";
    END IF;

END$

CREATE TRIGGER delete_payment BEFORE DELETE ON payment 
FOR EACH ROW 
BEGIN 
    DECLARE ust enum("CUSTOMER", "ADMIN", "EMPLOYEE");
    DECLARE usn VARCHAR(70);

    SELECT usertype, email INTO ust, usn
    FROM user 
    WHERE user_id = @user_now;
    IF (ust != "ADMIN") THEN
        INSERT INTO log VALUES(NULL, usn, CURDATE(), "DELETE", 0, "PAYMENT");
        SIGNAL SQLSTATE VALUE "45000"
		SET MESSAGE_TEXT ="You are not authorized to change this value.";
    END IF;

END$


CREATE TRIGGER update_rental BEFORE UPDATE ON rental
FOR EACH ROW 
BEGIN 
    DECLARE ust enum("CUSTOMER", "ADMIN", "EMPLOYEE");
    DECLARE usn VARCHAR(70);

    SELECT usertype, email INTO ust, usn
    FROM user 
    WHERE user_id = @user_now;

    IF (ust != "ADMIN") THEN
    INSERT INTO log VALUES(NULL, usn, CURDATE(), "UPDATE", 0, "RENTAL");
        SIGNAL SQLSTATE VALUE "45000"
		SET MESSAGE_TEXT ="You are not authorized to change this value.";
    END IF;

END$

CREATE TRIGGER update_payment BEFORE UPDATE ON payment 
FOR EACH ROW 
BEGIN 
    DECLARE ust enum("CUSTOMER", "ADMIN", "EMPLOYEE");
    DECLARE usn VARCHAR(70);

    SELECT usertype, email INTO ust, usn
    FROM user 
    WHERE user_id = @user_now;

    IF (ust != "ADMIN") THEN
    INSERT INTO log VALUES(NULL, usn, CURDATE(), "UPDATE", 0, "PAYMENT");
        SIGNAL SQLSTATE VALUE "45000"
		SET MESSAGE_TEXT ="You are not authorized to change this value.";
    END IF;

END$
	
-- @block trigger4_2
CREATE TRIGGER discount BEFORE INSERT ON payment
FOR EACH ROW
BEGIN
	DECLARE usn VARCHAR(50);
	DECLARE num_of_rents SMALLINT(3);

	SELECT email INTO usn
	FROM user 
	WHERE user.user_id = NEW.customer_id;

	call zhtoumeno3_2(usn, DATE(NEW.payment_date), num_of_rents);

	IF num_of_rents % 3 = 0 THEN 
	SET NEW.amount = NEW.amount/2; 
	END IF;
END$

-- @block trigger4_3 (before update)
-- a customer can only change his own profile settings through the gui. An employee can change any customers settings or his own through the gui
CREATE TRIGGER declineUpdate BEFORE UPDATE ON user
FOR EACH ROW
BEGIN
	DECLARE em VARCHAR(50);
	DECLARE curuser_type enum("ADMIN","EMPLOYEE","CUSTOMER");

	SELECT email, usertype INTO em, curuser_type
	FROM user 
	WHERE user.user_id = @user_now;

	IF (curuser_type = "CUSTOMER") THEN 
		IF (OLD.usertype != NEW.usertype OR OLD.email != NEW.email OR OLD.user_id != NEW.user_id) THEN 
			SIGNAL SQLSTATE VALUE "45000"
			SET MESSAGE_TEXT ="You are not authorized to change this value.";
		END IF;
	ELSEIF (curuser_type = "EMPLOYEE") THEN
		IF (OLD.email != NEW.email) THEN 
			SIGNAL SQLSTATE VALUE "45000"
			SET MESSAGE_TEXT ="You are not authorized to change this value.";
		END IF;
	END IF;
END$




