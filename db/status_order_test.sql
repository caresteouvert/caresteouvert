-- Start a transaction.
BEGIN;
SELECT plan(5);

SELECT is(
    status_order_value('open'),
    1
);

SELECT is(
    status_order_value('open_adapted'),
    2
);

SELECT is(
    status_order_value('partial'),
    3
);

SELECT is(
    status_order_value('unknown'),
    4
);

SELECT is(
    status_order_value('closed'),
    5
);

SELECT * FROM finish();
ROLLBACK;
