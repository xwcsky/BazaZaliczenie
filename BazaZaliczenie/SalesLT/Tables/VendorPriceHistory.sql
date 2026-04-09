CREATE TABLE [SalesLT].[VendorPriceHistory] (
    [QuoteID]   BIGINT   NULL,
    [VendorID]  INT      NOT NULL,
    [ProductID] INT      NOT NULL,
    [Price]     MONEY    NOT NULL,
    [QuoteDate] DATETIME NOT NULL
);


GO
CREATE CLUSTERED INDEX [CIX_VendorPriceHistory_Prod_Vend]
    ON [SalesLT].[VendorPriceHistory]([ProductID] ASC, [VendorID] ASC) WITH (FILLFACTOR = 25);


GO
CREATE NONCLUSTERED INDEX [IX_VendorPriceHistory_Date]
    ON [SalesLT].[VendorPriceHistory]([QuoteDate] ASC) WITH (FILLFACTOR = 25);


GO
CREATE NONCLUSTERED INDEX [Indeks_Pokrywajacy_Historia]
    ON [SalesLT].[VendorPriceHistory]([QuoteDate] ASC)
    INCLUDE([Price], [ProductID]) WITH (FILLFACTOR = 25);

