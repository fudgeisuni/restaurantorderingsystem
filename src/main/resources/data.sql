INSERT INTO "Customer"("CustomerName", "CustomerEmail", "CustomerTelephoneNum", "CustomerAddress", "CustomerLoginSystemID")
VALUES('David', 'David@gmail.com', '+4456897656', '25 Mental Road', 1);

INSERT INTO "Chef"("ChefName", "ChefPhoneNum", "ChefEmail", "ChefSalary", "ChefLoginSystemID")
VALUES('David', '+44745902342', 'David@Gmail.com', '20000', 2);

INSERT INTO "RestaurantOwner"("RestaurantOwnerName", "ROLoginSystemID")
VALUES('David', 3);

INSERT INTO "Meal"("MealName", "MealType", "MealPrice")
VALUES('Four Cheese Pizza', 'Pizza', 15);

INSERT INTO "MealOrder"("MealOID", "CustomerOID", "ChefOID")
VALUES ('1', '1', '1');