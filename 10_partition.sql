alter table CDR
	partition by range(month(BILL_DATE)) (
	partition m1 values less than (2),
	partition m2 values less than (3),
	partition m3 values less than (4),
	partition m4 values less than (5),
	partition m5 values less than (6),
	partition m6 values less than (7),
	partition m7 values less than (8),
	partition m8 values less than (9),
	partition m9 values less than (10),
	partition m10 values less than (11),
	partition m11 values less than (12),
	partition m12 values less than (13)
	);

SELECT PARTITION_NAME,TABLE_ROWS
    FROM INFORMATION_SCHEMA.PARTITIONS
   WHERE TABLE_NAME = 'CDR';
