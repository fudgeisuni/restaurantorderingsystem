INSERT INTO "Customer"("CustomerName", "CustomerEmail", "CustomerTelephoneNum", "CustomerAddress", "CustomerPassword")
VALUES('David', 'David@gmail.com', '+4456897656', '25 Mental Road', 'IAmTheBestCustomer@123');

INSERT INTO "Chef"("ChefName", "ChefPhoneNum", "ChefEmail", "ChefSalary", "ChefPassword")
VALUES('David', '+44745902342', 'David@Gmail.com', '20000', 'IAmTheBestChef@123');

INSERT INTO "RestaurantOwner"("RestaurantOwnerName", "ROPassword")
VALUES('David', 'IAmTheBestROOwner@123');

INSERT INTO "Meal"("MealName", "MealType", "MealPrice")
VALUES('Four Cheese Pizza', 'Pizza', 15);

INSERT INTO "MealOrder"("MealOID", "CustomerOID", "ChefOID")
VALUES ('1', '1', '1');

INSERT INTO "Roles"("RoleName")
VALUES('Customer');

INSERT INTO "Roles"("RoleName")
VALUES('Chef');

INSERT INTO "Roles"("RoleName")
VALUES('Owner');

INSERT INTO "UserRoles"("UserId", "RoleId")
VALUES('1', '1');

INSERT INTO "UserRoles"("UserId", "RoleId")
VALUES('1', '2');

INSERT INTO "UserRoles"("UserId", "RoleId")
VALUES('1', '3');