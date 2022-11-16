DROP TABLE IF EXISTS  "MealOrder";
DROP TABLE IF EXISTS  "Customer";
DROP TABLE IF EXISTS  "Chef";
DROP TABLE IF EXISTS  "Meal";
DROP TABLE IF EXISTS  "RestaurantOwner";
DROP TABLE IF EXISTS  "Login";


create table IF NOT EXISTS "Customer"
(
    "CustomerID"            int auto_increment,
    "CustomerName"          text,
    "CustomerEmail"         text,
    "CustomerTelephoneNum"  text,
    "CustomerAddress"       text,
    "CustomerLoginSystemID" int,
     primary key ("CustomerID")
);

create table IF NOT EXISTS "Meal"
(
    "MealID"    int auto_increment,
    "MealName"  text,
    "MealType"  text,
    "MealPrice" int,
    primary key ("MealID")
);

create table IF NOT EXISTS "RestaurantOwner"
(
    "RestaurantOwnerID"   int auto_increment,
    "RestaurantOwnerName" text,
    "ROLoginSystemID"     int,
    primary key ("RestaurantOwnerID")
);

create table IF NOT EXISTS "Chef"
(
    "ChefID"            int auto_increment,
    "ChefName"          text,
    "ChefSalary"        int,
    "ChefEmail"         text,
    "ChefPhoneNum"      text,
    "ChefLoginSystemID" int,
    primary key ("ChefID")
);

create table IF NOT EXISTS "Login"
(
    "LoginID"       int auto_increment,
    "LoginSystemID" int,
    "Username"      text,
    "Password"      text,
    primary key ("LoginID")
);

create table "MealOrder"
(
    "MealOrderID" INTEGER auto_increment
        primary key,
    "MealOID"     INTEGER,
    "CustomerOID" INTEGER,
    "ChefOID"     INTEGER,
    "MealReady"   INTEGER default 0,
    constraint CHEF_FK
        foreign key ("ChefOID") references "Chef",
    constraint CUSTOMER_FK
        foreign key ("CustomerOID") references "Customer",
    constraint MEAL_FK
        foreign key ("MealOID") references "Meal"
);