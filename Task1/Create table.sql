
CREATE TABLE book
(
NAME nchar(1000),  --unicode string data
DATE_PUBLISHING date NOT NULL CHECK (DATE_PUBLISHING>'1.1.2000' AND DATE_PUBLISHING<'31.12.2020'),
CODE_COVER char NOT NULL CHECK (CODE_COVER IN ('S', 'H', 'Sp', 'Un')),

                      -- CHECK ((CODE_COVER='S')
                      --   OR (CODE_COVER='H')
		      --   OR (CODE_COVER='Sp')
		      --   OR (CODE_COVER='Un')),

COUNT_PAGES int NOT NULL CHECK (COUNT_PAGES< 10000 AND COUNT_PAGES>1),
WEIGHT_KILO float NULL,
PRICE money NOT NULL CHECK (Price < 10000)
);