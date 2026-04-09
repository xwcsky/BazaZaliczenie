CREATE TABLE [SalesLT].[Vendor] (
    [VendorID]      INT            IDENTITY (1, 1) NOT NULL,
    [Name]          NVARCHAR (100) NOT NULL,
    [AccountNumber] NVARCHAR (20)  NOT NULL,
    [CreditRating]  TINYINT        NOT NULL,
    [ActiveFlag]    BIT            DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([VendorID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Indeks_AktywniDostawcy]
    ON [SalesLT].[Vendor]([Name] ASC)
    INCLUDE([AccountNumber]) WHERE ([ActiveFlag]=(1));


GO
CREATE NONCLUSTERED INDEX [Indeks_Konto_Dostawcy]
    ON [SalesLT].[Vendor]([AccountNumber] ASC)
    INCLUDE([Name]);

