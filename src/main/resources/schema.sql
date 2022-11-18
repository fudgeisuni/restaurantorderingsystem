DROP TABLE IF EXISTS  "UserRoles";
DROP TABLE IF EXISTS  "MealOrder";
DROP TABLE IF EXISTS  "Customer";
DROP TABLE IF EXISTS  "Chef";
DROP TABLE IF EXISTS  "Meal";
DROP TABLE IF EXISTS  "RestaurantOwner";



create table IF NOT EXISTS "Customer"
(
    "CustomerID"            int auto_increment,
    "CustomerName"          text,
    "CustomerEmail"         text,
    "CustomerTelephoneNum"  text,
    "CustomerAddress"       text,
    "CustomerPassword" text,
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
    "ROPassword"     text,
    primary key ("RestaurantOwnerID")
);

create table IF NOT EXISTS "Chef"
(
    "ChefID"            int auto_increment,
    "ChefName"          text,
    "ChefSalary"        int,
    "ChefEmail"         text,
    "ChefPhoneNum"      text,
    "ChefPassword" text,
    primary key ("ChefID")
);

create table IF NOT EXISTS "UserRoles"
(
    "UserRoleId"       int auto_increment,
    "UserId"       int,
    "RoleId" int,
    primary key ("UserRoleId"),
    constraint CHEF_FK
        foreign key ("UserId") references "Chef",
    constraint CUSTOMER_FK
        foreign key ("UserId") references "Customer",
    constraint RO_FK
        foreign key ("UserId") references "RestaurantOwner",
    constraint ROLE_FK
        foreign key ("RoleId") references "Roles"
);

create table IF NOT EXISTS "Roles"
(
    "RoleId"       int auto_increment,
    "RoleName" text,
    primary key ("RoleId")
);


create table "MealOrder"
(
    "MealOrderID" INTEGER auto_increment
        primary key,
    "MealOID"     INTEGER,
    "CustomerOID" INTEGER,
    "ChefOID"     INTEGER,
    "MealReady"   INTEGER default 0,
    constraint CHEF_ORDER_FK
        foreign key ("ChefOID") references "Chef",
    constraint CUSTOMER_ORDER_FK
        foreign key ("CustomerOID") references "Customer",
    constraint MEAL_ORDER_FK
        foreign key ("MealOID") references "Meal"
);