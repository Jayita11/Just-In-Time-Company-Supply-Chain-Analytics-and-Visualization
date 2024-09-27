-- Create Fulfillment Table
CREATE TABLE Fulfillment (
    Product_Name VARCHAR(255),
    Warehouse_Order_Fulfillment_days FLOAT,
    PRIMARY KEY (Product_Name)
);

-- Create Inventory Table
CREATE TABLE Inventory (
    Product_Name VARCHAR(255),
    `Year_Month` INT,
    Warehouse_Inventory INT,
    Inventory_Cost_Per_Unit FLOAT,
    Storage_Cost FLOAT,
    PRIMARY KEY (Product_Name, `Year_Month`),
    FOREIGN KEY (Product_Name) REFERENCES Fulfillment(Product_Name)
);


-- Create Orders and Shipments Table
CREATE TABLE Orders_Shipments (
    Order_ID INT,
    Order_Item_ID INT,
    Order_YearMonth INT,
    Order_Year INT,
    Order_Month INT,
    Order_Day INT,
    Order_Time VARCHAR(255),
    Order_Quantity INT,
    Product_Department VARCHAR(255),
    Product_Category VARCHAR(255),
    Product_Name VARCHAR(255),
    Customer_ID INT,
    Customer_Market VARCHAR(255),
    Customer_Region VARCHAR(255),
    Customer_Country VARCHAR(255),
    Warehouse_Country VARCHAR(255),
    Shipment_Year INT,
    Shipment_Month INT,
    Shipment_Day INT,
    Shipment_Mode VARCHAR(255),
    Shipment_Days_Scheduled INT,
    Gross_Sales FLOAT,
    Discount_Percent FLOAT,
    Profit FLOAT,
    Order_Date DATE,
    Shipment_Date DATE,
    Shipment_Days_Actual INT,
    Shipment_Delay_Days INT,
    Shipping_Delay_Status VARCHAR(255),
    Net_Sales FLOAT,
    Unit_Price FLOAT,
    PRIMARY KEY (Order_ID, Order_Item_ID),
    FOREIGN KEY (Product_Name, Order_YearMonth) REFERENCES Inventory(Product_Name, `Year_Month`)
);