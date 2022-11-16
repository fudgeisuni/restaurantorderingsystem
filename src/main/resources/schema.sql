SET SCHEMA PUBLIC;

create table "Customer"
(
    "CustomerID"            int auto_increment,
    "CustomerName"          text,
    "CustomerEmail"         text,
    "CustomerTelephoneNum"  text,
    "CustomerAddress"       text,
    "CustomerLoginSystemID" int,
    constraint CUSTOMER_PK
        primary key ("CustomerID")
);

create table "Meal"
(
    "MealID"    int,
    "MealName"  text,
    "MealType"  text,
    "MealPrice" int,
    constraint MEAL_PK
        primary key ("MealID")
);

create table "RestaurantOwner"
(
    "RestaurantOwnerID"   int,
    "RestaurantOwnerName" text,
    "ROLoginSystemID"     int,
    constraint RESTAURANTOWNER_PK
        primary key ("RestaurantOwnerID")
);

create table "Chef"
(
    "ChefID"            int,
    "ChefName"          text,
    "ChefSalary"        int,
    "ChefEmail"         text,
    "ChefPhoneNum"      text,
    "ChefLoginSystemID" int,
    constraint CHEF_PK
        primary key ("ChefID")
);

create table "Login"
(
    "LoginID"       int,
    "LoginSystemID" int,
    "Username"      text,
    "Password"      text,
    constraint LOGIN_PK
        primary key ("LoginID")
);

create table "MealOrder"
(
    "MealOrderID" int,
    "MealID"      int,
    "CustomerID"  int,
    "ChefID"      int,
    constraint MEALORDER_PK
        primary key ("MealOrderID")
);
