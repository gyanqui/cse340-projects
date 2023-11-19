--
-- Database: 'cse 340 project'
-- Assignment 2, Task 1
--

-- Add new account in table "account"
INSERT INTO account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- Update new account in table 'type' to ADMIN
UPDATE account SET account_type = 'Admin' 
WHERE account_firstname = 'Tony' AND account_lastname = 'Stark';

-- Delete new account in table "account"
DELETE FROM account
WHERE account_firstname = 'Tony' AND account_lastname = 'Stark';

-- Modify 'GM HUMMER Description' in table 'inventory'
UPDATE inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE inv_make = 'GM' AND inv_model = 'Hummer';

-- Use inner JOIN to select the make and model "SPORT"
SELECT i.inv_make, i.inv_model, c.classification_name
FROM public.inventory i
INNER JOIN public.classification c ON i.classification_id = c.classification_id
WHERE c.classification_name = 'Sport';

--UPDATE images path
UPDATE public.inventory
SET inv_image = CONCAT('/images/vehicles/', SUBSTRING(inv_image FROM POSITION('/images/' IN inv_image) + LENGTH('/images/'))),
    inv_thumbnail = CONCAT('/images/vehicles/', SUBSTRING(inv_thumbnail FROM POSITION('/images/' IN inv_thumbnail) + LENGTH('/images/')));