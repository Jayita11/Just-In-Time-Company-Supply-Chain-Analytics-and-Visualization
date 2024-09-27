CREATE TABLE Orders_and_Shipments (
    Order_ID VARCHAR(255),
    Order_Item_ID VARCHAR(255),
    Order_YearMonth VARCHAR(10),
    Order_Year INT,
    Order_Month INT,
    Order_Day INT,
    Order_Time TIME,
    Order_Quantity INT,
    Product_Department VARCHAR(255),
    Product_Category VARCHAR(255),
    Product_Name VARCHAR(255),
    Customer_ID VARCHAR(255),
    Customer_Market VARCHAR(255),
    Customer_Region VARCHAR(255),
    Customer_Country VARCHAR(255),
    Warehouse_Country VARCHAR(255),
    Shipment_Year INT,
    Shipment_Month INT,
    Shipment_Day INT,
    Shipment_Mode VARCHAR(255),
    Shipment_Days_Scheduled INT,
    Gross_Sales DECIMAL(10, 2),
    Discount_Percent DECIMAL(5, 2),
    Profit DECIMAL(10, 2),
    Order_Date DATE,
    Shipment_Date DATE,
    Shipment_Days_Actual INT,
    Shipment_Delay_Days INT,
    Shipping_Delay_Status VARCHAR(50),
    Net_Sales DECIMAL(10, 2),
    Unit_Price DECIMAL(10, 2)
);


CREATE TABLE Inventory (
    Product_Name VARCHAR(255),
    YearMonth VARCHAR(10),
    Warehouse_Inventory INT,
    Inventory_Cost_Per_Unit DECIMAL(10, 2),
    Storage_Cost DECIMAL(10, 2)
);

CREATE TABLE Fulfillment (
    Product_Name VARCHAR(255),
    Warehouse_Order_Fulfillment_Days INT
);
