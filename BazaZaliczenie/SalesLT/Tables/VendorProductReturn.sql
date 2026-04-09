CREATE TABLE [SalesLT].[VendorProductReturn] (
    [ReturnID]     INT          IDENTITY (1, 1) NOT NULL,
    [VendorID]     INT          NOT NULL,
    [ProductID]    INT          NOT NULL,
    [ReturnDate]   DATETIME     DEFAULT (getdate()) NULL,
    [Status]       VARCHAR (20) DEFAULT ('Nowy') NULL,
    [RefundAmount] MONEY        NULL,
    CONSTRAINT [PK_VendorProductReturn] PRIMARY KEY CLUSTERED ([ReturnID] ASC),
    CONSTRAINT [FK_Return_Product] FOREIGN KEY ([ProductID]) REFERENCES [SalesLT].[Product] ([ProductID]),
    CONSTRAINT [FK_Return_Vendor] FOREIGN KEY ([VendorID]) REFERENCES [SalesLT].[Vendor] ([VendorID])
);


GO
CREATE NONCLUSTERED INDEX [Indeks_NoweZwroty]
    ON [SalesLT].[VendorProductReturn]([ReturnDate] ASC) WHERE ([Status]='Nowy');


GO
CREATE NONCLUSTERED INDEX [Indeks_KwotyDoZwrotu]
    ON [SalesLT].[VendorProductReturn]([VendorID] ASC)
    INCLUDE([RefundAmount], [Status]);

