DROP ASSEMBLY IF EXISTS OrdersByCustomer1;
CREATE ASSEMBLY OrdersByCustomer1 FROM '/OrdersByCustomer1.dll';
GO
drop type if exists SingleReturn;
create type SingleReturn external name OrdersByCustomer1.SingleReturn;

create aggregate OrdersByCustomer1(@input1 bigint, @input2 bigint) returns SingleReturn
    external name OrdersByCustomer1;