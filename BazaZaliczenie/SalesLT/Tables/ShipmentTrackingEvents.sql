CREATE TABLE [SalesLT].[ShipmentTrackingEvents] (
    [EventID]      BIGINT        NULL,
    [SalesOrderID] INT           NOT NULL,
    [EventDate]    DATETIME      NOT NULL,
    [Location]     VARCHAR (100) NULL,
    [Status]       VARCHAR (50)  NULL,
    [Notes]        VARCHAR (200) NULL
);


GO
CREATE CLUSTERED INDEX [CIX_Shipment_SalesOrder]
    ON [SalesLT].[ShipmentTrackingEvents]([SalesOrderID] ASC);


GO
CREATE NONCLUSTERED INDEX [Indeks_Filtrowany_Wyslane]
    ON [SalesLT].[ShipmentTrackingEvents]([SalesOrderID] ASC, [EventDate] ASC) WHERE ([Status]='Shipped');

