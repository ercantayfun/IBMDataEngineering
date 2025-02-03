# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 4
#250202 10:39:05 server id 1  end_log_pos 126 CRC32 0xcf9770b0 	Start: binlog v 4, server v 8.0.41-0ubuntu0.22.04.1 created 250202 10:39:05
BINLOG '
mZGfZw8BAAAAegAAAH4AAAAAAAQAOC4wLjQxLTB1YnVudHUwLjIyLjA0LjEAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAbBwl88=
'/*!*/;
# at 126
#250202 10:39:05 server id 1  end_log_pos 157 CRC32 0x98021815 	Previous-GTIDs
# [empty]
# at 157
#250202 10:40:34 server id 1  end_log_pos 236 CRC32 0xdffcecda 	Anonymous_GTID	last_committed=0	sequence_number=1	rbr_only=yes	original_committed_timestamp=1738510834494325	immediate_commit_timestamp=1738510834494325	transaction_length=322
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834494325 (2025-02-02 10:40:34.494325 EST)
# immediate_commit_timestamp=1738510834494325 (2025-02-02 10:40:34.494325 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834494325*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 236
#250202 10:40:34 server id 1  end_log_pos 312 CRC32 0x4692055f 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
SET @@session.pseudo_thread_id=12/*!*/;
SET @@session.foreign_key_checks=0, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C latin1 *//*!*/;
SET @@session.character_set_client=8,@@session.collation_connection=8,@@session.collation_server=255/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
BEGIN
/*!*/;
# at 312
#250202 10:40:34 server id 1  end_log_pos 378 CRC32 0x76f67cac 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 378
#250202 10:40:34 server id 1  end_log_pos 448 CRC32 0xef3f76a0 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAHoBAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wCsfPZ2
8pGfZx4BAAAARgAAAMABAAAAAHwAAAAAAAMAAgAF/wASBwAAC01vbnRyw4PCqWFsA0NBTglRdcOD
wqliZWM4gg8AoHY/7w==
'/*!*/;
# at 448
#250202 10:40:34 server id 1  end_log_pos 479 CRC32 0xd30a73d2 	Xid = 10558
COMMIT/*!*/;
# at 479
#250202 10:40:34 server id 1  end_log_pos 558 CRC32 0x26487af1 	Anonymous_GTID	last_committed=1	sequence_number=2	rbr_only=yes	original_committed_timestamp=1738510834500380	immediate_commit_timestamp=1738510834500380	transaction_length=316
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834500380 (2025-02-02 10:40:34.500380 EST)
# immediate_commit_timestamp=1738510834500380 (2025-02-02 10:40:34.500380 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834500380*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 558
#250202 10:40:34 server id 1  end_log_pos 634 CRC32 0xc2961f5c 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 634
#250202 10:40:34 server id 1  end_log_pos 700 CRC32 0xb4a22a79 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 700
#250202 10:40:34 server id 1  end_log_pos 764 CRC32 0x491aefa1 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAALwCAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wB5KqK0
8pGfZx4BAAAAQAAAAPwCAAAAAHwAAAAAAAMAAgAF/wATBwAAB0NhbGdhcnkDQ0FOB0FsYmVydGFS
uAsAoe8aSQ==
'/*!*/;
# at 764
#250202 10:40:34 server id 1  end_log_pos 795 CRC32 0xa49a510f 	Xid = 10559
COMMIT/*!*/;
# at 795
#250202 10:40:34 server id 1  end_log_pos 874 CRC32 0x752de253 	Anonymous_GTID	last_committed=2	sequence_number=3	rbr_only=yes	original_committed_timestamp=1738510834504432	immediate_commit_timestamp=1738510834504432	transaction_length=316
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834504432 (2025-02-02 10:40:34.504432 EST)
# immediate_commit_timestamp=1738510834504432 (2025-02-02 10:40:34.504432 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834504432*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 874
#250202 10:40:34 server id 1  end_log_pos 950 CRC32 0x4b9c27fd 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 950
#250202 10:40:34 server id 1  end_log_pos 1016 CRC32 0xd68c0b1d 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 1016
#250202 10:40:34 server id 1  end_log_pos 1080 CRC32 0x0a7e4117 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAPgDAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wAdC4zW
8pGfZx4BAAAAQAAAADgEAAAAAHwAAAAAAAMAAgAF/wAUBwAAB1Rvcm9udG8DQ0FOB09udGFyaW+T
gAoAF0F+Cg==
'/*!*/;
# at 1080
#250202 10:40:34 server id 1  end_log_pos 1111 CRC32 0xc7d5b2b7 	Xid = 10560
COMMIT/*!*/;
# at 1111
#250202 10:40:34 server id 1  end_log_pos 1190 CRC32 0x9fe39335 	Anonymous_GTID	last_committed=3	sequence_number=4	rbr_only=yes	original_committed_timestamp=1738510834508373	immediate_commit_timestamp=1738510834508373	transaction_length=319
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834508373 (2025-02-02 10:40:34.508373 EST)
# immediate_commit_timestamp=1738510834508373 (2025-02-02 10:40:34.508373 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834508373*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1190
#250202 10:40:34 server id 1  end_log_pos 1266 CRC32 0x932c1f94 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 1266
#250202 10:40:34 server id 1  end_log_pos 1332 CRC32 0xbb88371d 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 1332
#250202 10:40:34 server id 1  end_log_pos 1399 CRC32 0xd436b998 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAADQFAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wAdN4i7
8pGfZx4BAAAAQwAAAHcFAAAAAHwAAAAAAAMAAgAF/wAVBwAACk5vcnRoIFlvcmsDQ0FOB09udGFy
aW8ogAkAmLk21A==
'/*!*/;
# at 1399
#250202 10:40:34 server id 1  end_log_pos 1430 CRC32 0x892c92c9 	Xid = 10561
COMMIT/*!*/;
# at 1430
#250202 10:40:34 server id 1  end_log_pos 1509 CRC32 0x999e6ec8 	Anonymous_GTID	last_committed=4	sequence_number=5	rbr_only=yes	original_committed_timestamp=1738510834512765	immediate_commit_timestamp=1738510834512765	transaction_length=318
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834512765 (2025-02-02 10:40:34.512765 EST)
# immediate_commit_timestamp=1738510834512765 (2025-02-02 10:40:34.512765 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834512765*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1509
#250202 10:40:34 server id 1  end_log_pos 1585 CRC32 0xfc780b1c 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 1585
#250202 10:40:34 server id 1  end_log_pos 1651 CRC32 0xe85cb8b5 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 1651
#250202 10:40:34 server id 1  end_log_pos 1717 CRC32 0x4835ff40 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAHMGAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wC1uFzo
8pGfZx4BAAAAQgAAALUGAAAAAHwAAAAAAAMAAgAF/wAWBwAACFdpbm5pcGVnA0NBTghNYW5pdG9i
Ye1vCQBA/zVI
'/*!*/;
# at 1717
#250202 10:40:34 server id 1  end_log_pos 1748 CRC32 0x1abecab8 	Xid = 10562
COMMIT/*!*/;
# at 1748
#250202 10:40:34 server id 1  end_log_pos 1827 CRC32 0x04f9c05f 	Anonymous_GTID	last_committed=5	sequence_number=6	rbr_only=yes	original_committed_timestamp=1738510834518152	immediate_commit_timestamp=1738510834518152	transaction_length=317
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834518152 (2025-02-02 10:40:34.518152 EST)
# immediate_commit_timestamp=1738510834518152 (2025-02-02 10:40:34.518152 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834518152*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1827
#250202 10:40:34 server id 1  end_log_pos 1903 CRC32 0x4d447ce3 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 1903
#250202 10:40:34 server id 1  end_log_pos 1969 CRC32 0x01988157 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 1969
#250202 10:40:34 server id 1  end_log_pos 2034 CRC32 0x919b9869 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAALEHAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wBXgZgB
8pGfZx4BAAAAQQAAAPIHAAAAAHwAAAAAAAMAAgAF/wAXBwAACEVkbW9udG9uA0NBTgdBbGJlcnRh
cmcJAGmYm5E=
'/*!*/;
# at 2034
#250202 10:40:34 server id 1  end_log_pos 2065 CRC32 0x6a9bb0e8 	Xid = 10563
COMMIT/*!*/;
# at 2065
#250202 10:40:34 server id 1  end_log_pos 2144 CRC32 0x33e7cc62 	Anonymous_GTID	last_committed=6	sequence_number=7	rbr_only=yes	original_committed_timestamp=1738510834522178	immediate_commit_timestamp=1738510834522178	transaction_length=320
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834522178 (2025-02-02 10:40:34.522178 EST)
# immediate_commit_timestamp=1738510834522178 (2025-02-02 10:40:34.522178 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834522178*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2144
#250202 10:40:34 server id 1  end_log_pos 2220 CRC32 0xa31129ae 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 2220
#250202 10:40:34 server id 1  end_log_pos 2286 CRC32 0xab2d6c4d 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 2286
#250202 10:40:34 server id 1  end_log_pos 2354 CRC32 0xbd0e0d6c 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAO4IAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wBNbC2r
8pGfZx4BAAAARAAAADIJAAAAAHwAAAAAAAMAAgAF/wAYBwAAC01pc3Npc3NhdWdhA0NBTgdPbnRh
cmlvSEcJAGwNDr0=
'/*!*/;
# at 2354
#250202 10:40:34 server id 1  end_log_pos 2385 CRC32 0xfc719785 	Xid = 10564
COMMIT/*!*/;
# at 2385
#250202 10:40:34 server id 1  end_log_pos 2464 CRC32 0x5188d492 	Anonymous_GTID	last_committed=7	sequence_number=8	rbr_only=yes	original_committed_timestamp=1738510834526942	immediate_commit_timestamp=1738510834526942	transaction_length=320
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834526942 (2025-02-02 10:40:34.526942 EST)
# immediate_commit_timestamp=1738510834526942 (2025-02-02 10:40:34.526942 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834526942*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2464
#250202 10:40:34 server id 1  end_log_pos 2540 CRC32 0x60032769 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 2540
#250202 10:40:34 server id 1  end_log_pos 2606 CRC32 0xc1fa38ac 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 2606
#250202 10:40:34 server id 1  end_log_pos 2674 CRC32 0x207efc5f 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAC4KAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wCsOPrB
8pGfZx4BAAAARAAAAHIKAAAAAHwAAAAAAAMAAgAF/wAZBwAAC1NjYXJib3JvdWdoA0NBTgdPbnRh
cmlvRRIJAF/8fiA=
'/*!*/;
# at 2674
#250202 10:40:34 server id 1  end_log_pos 2705 CRC32 0x4fdbe3c6 	Xid = 10565
COMMIT/*!*/;
# at 2705
#250202 10:40:34 server id 1  end_log_pos 2784 CRC32 0x63fbad9a 	Anonymous_GTID	last_committed=8	sequence_number=9	rbr_only=yes	original_committed_timestamp=1738510834531467	immediate_commit_timestamp=1738510834531467	transaction_length=327
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834531467 (2025-02-02 10:40:34.531467 EST)
# immediate_commit_timestamp=1738510834531467 (2025-02-02 10:40:34.531467 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834531467*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2784
#250202 10:40:34 server id 1  end_log_pos 2860 CRC32 0xb4833df2 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 2860
#250202 10:40:34 server id 1  end_log_pos 2926 CRC32 0xf327af47 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 2926
#250202 10:40:34 server id 1  end_log_pos 3001 CRC32 0x852493c9 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAG4LAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wBHryfz
8pGfZx4BAAAASwAAALkLAAAAAHwAAAAAAAMAAgAF/wAaBwAACVZhbmNvdXZlcgNDQU4QQnJpdGlz
aCBDb2xvbWJpYdjXBwDJkySF
'/*!*/;
# at 3001
#250202 10:40:34 server id 1  end_log_pos 3032 CRC32 0xf32d3511 	Xid = 10566
COMMIT/*!*/;
# at 3032
#250202 10:40:34 server id 1  end_log_pos 3111 CRC32 0x93fef4f6 	Anonymous_GTID	last_committed=9	sequence_number=10	rbr_only=yes	original_committed_timestamp=1738510834538532	immediate_commit_timestamp=1738510834538532	transaction_length=318
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834538532 (2025-02-02 10:40:34.538532 EST)
# immediate_commit_timestamp=1738510834538532 (2025-02-02 10:40:34.538532 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834538532*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3111
#250202 10:40:34 server id 1  end_log_pos 3187 CRC32 0x091068d7 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 3187
#250202 10:40:34 server id 1  end_log_pos 3253 CRC32 0x2147621d 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 3253
#250202 10:40:34 server id 1  end_log_pos 3319 CRC32 0xb6f83ea0 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAALUMAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wAdYkch
8pGfZx4BAAAAQgAAAPcMAAAAAHwAAAAAAAMAAgAF/wAbBwAACUV0b2JpY29rZQNDQU4HT250YXJp
b61SBQCgPvi2
'/*!*/;
# at 3319
#250202 10:40:34 server id 1  end_log_pos 3350 CRC32 0x9633a7c1 	Xid = 10567
COMMIT/*!*/;
# at 3350
#250202 10:40:34 server id 1  end_log_pos 3429 CRC32 0x29fdbe8b 	Anonymous_GTID	last_committed=10	sequence_number=11	rbr_only=yes	original_committed_timestamp=1738510834543507	immediate_commit_timestamp=1738510834543507	transaction_length=315
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834543507 (2025-02-02 10:40:34.543507 EST)
# immediate_commit_timestamp=1738510834543507 (2025-02-02 10:40:34.543507 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834543507*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3429
#250202 10:40:34 server id 1  end_log_pos 3505 CRC32 0xd041691b 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 3505
#250202 10:40:34 server id 1  end_log_pos 3571 CRC32 0x86a81b1e 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 3571
#250202 10:40:34 server id 1  end_log_pos 3634 CRC32 0x85ff8574 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAPMNAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wAeG6iG
8pGfZx4BAAAAPwAAADIOAAAAAHwAAAAAAAMAAgAF/wAcBwAABkxvbmRvbgNDQU4HT250YXJpb80v
BQB0hf+F
'/*!*/;
# at 3634
#250202 10:40:34 server id 1  end_log_pos 3665 CRC32 0xd6ad8492 	Xid = 10568
COMMIT/*!*/;
# at 3665
#250202 10:40:34 server id 1  end_log_pos 3744 CRC32 0xf616a09f 	Anonymous_GTID	last_committed=11	sequence_number=12	rbr_only=yes	original_committed_timestamp=1738510834548276	immediate_commit_timestamp=1738510834548276	transaction_length=317
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834548276 (2025-02-02 10:40:34.548276 EST)
# immediate_commit_timestamp=1738510834548276 (2025-02-02 10:40:34.548276 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834548276*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3744
#250202 10:40:34 server id 1  end_log_pos 3820 CRC32 0x4f270fd1 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 3820
#250202 10:40:34 server id 1  end_log_pos 3886 CRC32 0x0a8c6700 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 3886
#250202 10:40:34 server id 1  end_log_pos 3951 CRC32 0x8d91cb71 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAC4PAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wAAZ4wK
8pGfZx4BAAAAQQAAAG8PAAAAAHwAAAAAAAMAAgAF/wAdBwAACEhhbWlsdG9uA0NBTgdPbnRhcmlv
/h4FAHHLkY0=
'/*!*/;
# at 3951
#250202 10:40:34 server id 1  end_log_pos 3982 CRC32 0x357dcd00 	Xid = 10569
COMMIT/*!*/;
# at 3982
#250202 10:40:34 server id 1  end_log_pos 4061 CRC32 0x5d6ec713 	Anonymous_GTID	last_committed=12	sequence_number=13	rbr_only=yes	original_committed_timestamp=1738510834555050	immediate_commit_timestamp=1738510834555050	transaction_length=315
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834555050 (2025-02-02 10:40:34.555050 EST)
# immediate_commit_timestamp=1738510834555050 (2025-02-02 10:40:34.555050 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834555050*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4061
#250202 10:40:34 server id 1  end_log_pos 4137 CRC32 0x303aa3de 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 4137
#250202 10:40:34 server id 1  end_log_pos 4203 CRC32 0x315ca25c 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 4203
#250202 10:40:34 server id 1  end_log_pos 4266 CRC32 0xccf36d99 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAGsQAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wBcolwx
8pGfZx4BAAAAPwAAAKoQAAAAAHwAAAAAAAMAAgAF/wAeBwAABk90dGF3YQNDQU4HT250YXJpb60d
BQCZbfPM
'/*!*/;
# at 4266
#250202 10:40:34 server id 1  end_log_pos 4297 CRC32 0x0cf1e43d 	Xid = 10570
COMMIT/*!*/;
# at 4297
#250202 10:40:34 server id 1  end_log_pos 4376 CRC32 0xa671fe4a 	Anonymous_GTID	last_committed=13	sequence_number=14	rbr_only=yes	original_committed_timestamp=1738510834559906	immediate_commit_timestamp=1738510834559906	transaction_length=316
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834559906 (2025-02-02 10:40:34.559906 EST)
# immediate_commit_timestamp=1738510834559906 (2025-02-02 10:40:34.559906 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834559906*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4376
#250202 10:40:34 server id 1  end_log_pos 4452 CRC32 0x18a79a67 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 4452
#250202 10:40:34 server id 1  end_log_pos 4518 CRC32 0x6315375b 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 4518
#250202 10:40:34 server id 1  end_log_pos 4582 CRC32 0x96e31fb3 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAKYRAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wBbNxVj
8pGfZx4BAAAAQAAAAOYRAAAAAHwAAAAAAAMAAgAF/wAfBwAABUxhdmFsA0NBTglRdcODwqliZWOZ
CgUAsx/jlg==
'/*!*/;
# at 4582
#250202 10:40:34 server id 1  end_log_pos 4613 CRC32 0x4838d8d6 	Xid = 10571
COMMIT/*!*/;
# at 4613
#250202 10:40:34 server id 1  end_log_pos 4692 CRC32 0x4bd5f85b 	Anonymous_GTID	last_committed=14	sequence_number=15	rbr_only=yes	original_committed_timestamp=1738510834564050	immediate_commit_timestamp=1738510834564050	transaction_length=324
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834564050 (2025-02-02 10:40:34.564050 EST)
# immediate_commit_timestamp=1738510834564050 (2025-02-02 10:40:34.564050 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834564050*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4692
#250202 10:40:34 server id 1  end_log_pos 4768 CRC32 0xf8a19eea 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 4768
#250202 10:40:34 server id 1  end_log_pos 4834 CRC32 0x7a58cf87 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 4834
#250202 10:40:34 server id 1  end_log_pos 4906 CRC32 0xcec71471 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAOISAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wCHz1h6
8pGfZx4BAAAASAAAACoTAAAAAHwAAAAAAAMAAgAF/wAgBwAABlN1cnJleQNDQU4QQnJpdGlzaCBD
b2xvbWJpYV2lBABxFMfO
'/*!*/;
# at 4906
#250202 10:40:34 server id 1  end_log_pos 4937 CRC32 0xf4276e96 	Xid = 10572
COMMIT/*!*/;
# at 4937
#250202 10:40:34 server id 1  end_log_pos 5016 CRC32 0xcd3e6c1f 	Anonymous_GTID	last_committed=15	sequence_number=16	rbr_only=yes	original_committed_timestamp=1738510834568418	immediate_commit_timestamp=1738510834568418	transaction_length=317
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834568418 (2025-02-02 10:40:34.568418 EST)
# immediate_commit_timestamp=1738510834568418 (2025-02-02 10:40:34.568418 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834568418*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 5016
#250202 10:40:34 server id 1  end_log_pos 5092 CRC32 0x45f281a8 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 5092
#250202 10:40:34 server id 1  end_log_pos 5158 CRC32 0xb6bb9e99 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 5158
#250202 10:40:34 server id 1  end_log_pos 5223 CRC32 0xdd8cfd5b 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAACYUAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wCZnru2
8pGfZx4BAAAAQQAAAGcUAAAAAHwAAAAAAAMAAgAF/wAhBwAACEJyYW1wdG9uA0NBTgdPbnRhcmlv
B4cEAFv9jN0=
'/*!*/;
# at 5223
#250202 10:40:34 server id 1  end_log_pos 5254 CRC32 0xd1a0c4b5 	Xid = 10573
COMMIT/*!*/;
# at 5254
#250202 10:40:34 server id 1  end_log_pos 5333 CRC32 0x3c4e9199 	Anonymous_GTID	last_committed=16	sequence_number=17	rbr_only=yes	original_committed_timestamp=1738510834572263	immediate_commit_timestamp=1738510834572263	transaction_length=316
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834572263 (2025-02-02 10:40:34.572263 EST)
# immediate_commit_timestamp=1738510834572263 (2025-02-02 10:40:34.572263 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834572263*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 5333
#250202 10:40:34 server id 1  end_log_pos 5409 CRC32 0x7612b74a 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 5409
#250202 10:40:34 server id 1  end_log_pos 5475 CRC32 0x5bcd90ee 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 5475
#250202 10:40:34 server id 1  end_log_pos 5539 CRC32 0x32d00965 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAGMVAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wDukM1b
8pGfZx4BAAAAQAAAAKMVAAAAAHwAAAAAAAMAAgAF/wAiBwAAB1dpbmRzb3IDQ0FOB09udGFyaW/k
KgMAZQnQMg==
'/*!*/;
# at 5539
#250202 10:40:34 server id 1  end_log_pos 5570 CRC32 0xdaac6239 	Xid = 10574
COMMIT/*!*/;
# at 5570
#250202 10:40:34 server id 1  end_log_pos 5649 CRC32 0xde04ddae 	Anonymous_GTID	last_committed=17	sequence_number=18	rbr_only=yes	original_committed_timestamp=1738510834575898	immediate_commit_timestamp=1738510834575898	transaction_length=323
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834575898 (2025-02-02 10:40:34.575898 EST)
# immediate_commit_timestamp=1738510834575898 (2025-02-02 10:40:34.575898 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834575898*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 5649
#250202 10:40:34 server id 1  end_log_pos 5725 CRC32 0xc4d254db 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 5725
#250202 10:40:34 server id 1  end_log_pos 5791 CRC32 0x8f0e9184 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 5791
#250202 10:40:34 server id 1  end_log_pos 5862 CRC32 0x66a7fd3f 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAJ8WAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wCEkQ6P
8pGfZx4BAAAARwAAAOYWAAAAAHwAAAAAAAMAAgAF/wAjBwAACVNhc2thdG9vbgNDQU4MU2Fza2F0
Y2hld2Fub/QCAD/9p2Y=
'/*!*/;
# at 5862
#250202 10:40:34 server id 1  end_log_pos 5893 CRC32 0xd15d653f 	Xid = 10575
COMMIT/*!*/;
# at 5893
#250202 10:40:34 server id 1  end_log_pos 5972 CRC32 0xf1edeb6d 	Anonymous_GTID	last_committed=18	sequence_number=19	rbr_only=yes	original_committed_timestamp=1738510834579418	immediate_commit_timestamp=1738510834579418	transaction_length=318
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834579418 (2025-02-02 10:40:34.579418 EST)
# immediate_commit_timestamp=1738510834579418 (2025-02-02 10:40:34.579418 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834579418*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 5972
#250202 10:40:34 server id 1  end_log_pos 6048 CRC32 0x420ba974 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 6048
#250202 10:40:34 server id 1  end_log_pos 6114 CRC32 0xb12e902b 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 6114
#250202 10:40:34 server id 1  end_log_pos 6180 CRC32 0xdd971646 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAOIXAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wArkC6x
8pGfZx4BAAAAQgAAACQYAAAAAHwAAAAAAAMAAgAF/wAkBwAACUtpdGNoZW5lcgNDQU4HT250YXJp
bwfmAgBGFpfd
'/*!*/;
# at 6180
#250202 10:40:34 server id 1  end_log_pos 6211 CRC32 0xeacd2fca 	Xid = 10576
COMMIT/*!*/;
# at 6211
#250202 10:40:34 server id 1  end_log_pos 6290 CRC32 0x2802ab2c 	Anonymous_GTID	last_committed=19	sequence_number=20	rbr_only=yes	original_committed_timestamp=1738510834584552	immediate_commit_timestamp=1738510834584552	transaction_length=316
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834584552 (2025-02-02 10:40:34.584552 EST)
# immediate_commit_timestamp=1738510834584552 (2025-02-02 10:40:34.584552 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834584552*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 6290
#250202 10:40:34 server id 1  end_log_pos 6366 CRC32 0xe9950f51 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 6366
#250202 10:40:34 server id 1  end_log_pos 6432 CRC32 0xde014f7c 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 6432
#250202 10:40:34 server id 1  end_log_pos 6496 CRC32 0x6e282b00 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAACAZAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wB8TwHe
8pGfZx4BAAAAQAAAAGAZAAAAAHwAAAAAAAMAAgAF/wAlBwAAB01hcmtoYW0DQ0FOB09udGFyaW+q
4gIAACsobg==
'/*!*/;
# at 6496
#250202 10:40:34 server id 1  end_log_pos 6527 CRC32 0x7ad22348 	Xid = 10577
COMMIT/*!*/;
# at 6527
#250202 10:40:34 server id 1  end_log_pos 6606 CRC32 0x075ffa53 	Anonymous_GTID	last_committed=20	sequence_number=21	rbr_only=yes	original_committed_timestamp=1738510834588671	immediate_commit_timestamp=1738510834588671	transaction_length=320
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834588671 (2025-02-02 10:40:34.588671 EST)
# immediate_commit_timestamp=1738510834588671 (2025-02-02 10:40:34.588671 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834588671*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 6606
#250202 10:40:34 server id 1  end_log_pos 6682 CRC32 0x4354044f 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 6682
#250202 10:40:34 server id 1  end_log_pos 6748 CRC32 0x141ab878 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 6748
#250202 10:40:34 server id 1  end_log_pos 6816 CRC32 0x7ddd5c33 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAFwaAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wB4uBoU
8pGfZx4BAAAARAAAAKAaAAAAAHwAAAAAAAMAAgAF/wAmBwAABlJlZ2luYQNDQU4MU2Fza2F0Y2hl
d2FusMACADNc3X0=
'/*!*/;
# at 6816
#250202 10:40:34 server id 1  end_log_pos 6847 CRC32 0x8b5d5076 	Xid = 10578
COMMIT/*!*/;
# at 6847
#250202 10:40:34 server id 1  end_log_pos 6926 CRC32 0x10ead52b 	Anonymous_GTID	last_committed=21	sequence_number=22	rbr_only=yes	original_committed_timestamp=1738510834593966	immediate_commit_timestamp=1738510834593966	transaction_length=325
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834593966 (2025-02-02 10:40:34.593966 EST)
# immediate_commit_timestamp=1738510834593966 (2025-02-02 10:40:34.593966 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834593966*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 6926
#250202 10:40:34 server id 1  end_log_pos 7002 CRC32 0x80460a88 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 7002
#250202 10:40:34 server id 1  end_log_pos 7068 CRC32 0x381fd9fd 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 7068
#250202 10:40:34 server id 1  end_log_pos 7141 CRC32 0x911511ea 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAJwbAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wD92R84
8pGfZx4BAAAASQAAAOUbAAAAAHwAAAAAAAMAAgAF/wAnBwAAB0J1cm5hYnkDQ0FOEEJyaXRpc2gg
Q29sb21iaWEJvAIA6hEVkQ==
'/*!*/;
# at 7141
#250202 10:40:34 server id 1  end_log_pos 7172 CRC32 0x808f1f8e 	Xid = 10579
COMMIT/*!*/;
# at 7172
#250202 10:40:34 server id 1  end_log_pos 7251 CRC32 0xe4b7b125 	Anonymous_GTID	last_committed=22	sequence_number=23	rbr_only=yes	original_committed_timestamp=1738510834597538	immediate_commit_timestamp=1738510834597538	transaction_length=320
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834597538 (2025-02-02 10:40:34.597538 EST)
# immediate_commit_timestamp=1738510834597538 (2025-02-02 10:40:34.597538 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834597538*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 7251
#250202 10:40:34 server id 1  end_log_pos 7327 CRC32 0xf96133f9 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 7327
#250202 10:40:34 server id 1  end_log_pos 7393 CRC32 0x8b9bb29a 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 7393
#250202 10:40:34 server id 1  end_log_pos 7461 CRC32 0x1b28027e 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAOEcAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wCaspuL
8pGfZx4BAAAARAAAACUdAAAAAHwAAAAAAAMAAgAF/wAoBwAACVF1w4PCqWJlYwNDQU4JUXXDg8Kp
YmVjYI0CAH4CKBs=
'/*!*/;
# at 7461
#250202 10:40:34 server id 1  end_log_pos 7492 CRC32 0x166538e3 	Xid = 10580
COMMIT/*!*/;
# at 7492
#250202 10:40:34 server id 1  end_log_pos 7571 CRC32 0x65a2b6eb 	Anonymous_GTID	last_committed=23	sequence_number=24	rbr_only=yes	original_committed_timestamp=1738510834601042	immediate_commit_timestamp=1738510834601042	transaction_length=313
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834601042 (2025-02-02 10:40:34.601042 EST)
# immediate_commit_timestamp=1738510834601042 (2025-02-02 10:40:34.601042 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834601042*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 7571
#250202 10:40:34 server id 1  end_log_pos 7647 CRC32 0x3a733d3e 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 7647
#250202 10:40:34 server id 1  end_log_pos 7713 CRC32 0xe14ce67b 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 7713
#250202 10:40:34 server id 1  end_log_pos 7774 CRC32 0x5049ea5b 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAACEeAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wB75kzh
8pGfZx4BAAAAPQAAAF4eAAAAAHwAAAAAAAMAAgAF/wApBwAABFlvcmsDQ0FOB09udGFyaW9kXQIA
W+pJUA==
'/*!*/;
# at 7774
#250202 10:40:34 server id 1  end_log_pos 7805 CRC32 0x6285ef47 	Xid = 10581
COMMIT/*!*/;
# at 7805
#250202 10:40:34 server id 1  end_log_pos 7884 CRC32 0x75597f41 	Anonymous_GTID	last_committed=24	sequence_number=25	rbr_only=yes	original_committed_timestamp=1738510834604673	immediate_commit_timestamp=1738510834604673	transaction_length=326
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834604673 (2025-02-02 10:40:34.604673 EST)
# immediate_commit_timestamp=1738510834604673 (2025-02-02 10:40:34.604673 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834604673*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 7884
#250202 10:40:34 server id 1  end_log_pos 7960 CRC32 0x2b663833 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 7960
#250202 10:40:34 server id 1  end_log_pos 8026 CRC32 0x4a5e093c 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 8026
#250202 10:40:34 server id 1  end_log_pos 8100 CRC32 0x517ec969 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAFofAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wA8CV5K
8pGfZx4BAAAASgAAAKQfAAAAAHwAAAAAAAMAAgAF/wAqBwAACFJpY2htb25kA0NBThBCcml0aXNo
IENvbG9tYmlhg0UCAGnJflE=
'/*!*/;
# at 8100
#250202 10:40:34 server id 1  end_log_pos 8131 CRC32 0xd2a2cff7 	Xid = 10582
COMMIT/*!*/;
# at 8131
#250202 10:40:34 server id 1  end_log_pos 8210 CRC32 0x9461529f 	Anonymous_GTID	last_committed=25	sequence_number=26	rbr_only=yes	original_committed_timestamp=1738510834609205	immediate_commit_timestamp=1738510834609205	transaction_length=316
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834609205 (2025-02-02 10:40:34.609205 EST)
# immediate_commit_timestamp=1738510834609205 (2025-02-02 10:40:34.609205 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834609205*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 8210
#250202 10:40:34 server id 1  end_log_pos 8286 CRC32 0x831e4839 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 8286
#250202 10:40:34 server id 1  end_log_pos 8352 CRC32 0x7d9376a9 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 8352
#250202 10:40:34 server id 1  end_log_pos 8416 CRC32 0x29d4011c 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAKAgAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wCpdpN9
8pGfZx4BAAAAQAAAAOAgAAAAAHwAAAAAAAMAAgAF/wArBwAAB1ZhdWdoYW4DQ0FOB09udGFyaW+x
QQIAHAHUKQ==
'/*!*/;
# at 8416
#250202 10:40:34 server id 1  end_log_pos 8447 CRC32 0xbf2222ea 	Xid = 10583
COMMIT/*!*/;
# at 8447
#250202 10:40:34 server id 1  end_log_pos 8526 CRC32 0xcf6c27e5 	Anonymous_GTID	last_committed=26	sequence_number=27	rbr_only=yes	original_committed_timestamp=1738510834615669	immediate_commit_timestamp=1738510834615669	transaction_length=319
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834615669 (2025-02-02 10:40:34.615669 EST)
# immediate_commit_timestamp=1738510834615669 (2025-02-02 10:40:34.615669 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834615669*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 8526
#250202 10:40:34 server id 1  end_log_pos 8602 CRC32 0xf6965392 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 8602
#250202 10:40:34 server id 1  end_log_pos 8668 CRC32 0xcceb5815 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 8668
#250202 10:40:34 server id 1  end_log_pos 8735 CRC32 0x52fe9501 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAANwhAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wAVWOvM
8pGfZx4BAAAAQwAAAB8iAAAAAHwAAAAAAAMAAgAF/wAsBwAACkJ1cmxpbmd0b24DQ0FOB09udGFy
aW/+NgIAAZX+Ug==
'/*!*/;
# at 8735
#250202 10:40:34 server id 1  end_log_pos 8766 CRC32 0x599b7c68 	Xid = 10584
COMMIT/*!*/;
# at 8766
#250202 10:40:34 server id 1  end_log_pos 8845 CRC32 0xac61dc85 	Anonymous_GTID	last_committed=27	sequence_number=28	rbr_only=yes	original_committed_timestamp=1738510834621024	immediate_commit_timestamp=1738510834621024	transaction_length=315
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834621024 (2025-02-02 10:40:34.621024 EST)
# immediate_commit_timestamp=1738510834621024 (2025-02-02 10:40:34.621024 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834621024*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 8845
#250202 10:40:34 server id 1  end_log_pos 8921 CRC32 0x1bde4c60 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 8921
#250202 10:40:34 server id 1  end_log_pos 8987 CRC32 0xbc56cd0f 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 8987
#250202 10:40:34 server id 1  end_log_pos 9050 CRC32 0x624cbf3f 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAABsjAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wAPzVa8
8pGfZx4BAAAAPwAAAFojAAAAAHwAAAAAAAMAAgAF/wAtBwAABk9zaGF3YQNDQU4HT250YXJpb40j
AgA/v0xi
'/*!*/;
# at 9050
#250202 10:40:34 server id 1  end_log_pos 9081 CRC32 0x6cd3f842 	Xid = 10585
COMMIT/*!*/;
# at 9081
#250202 10:40:34 server id 1  end_log_pos 9160 CRC32 0x3269077a 	Anonymous_GTID	last_committed=28	sequence_number=29	rbr_only=yes	original_committed_timestamp=1738510834625645	immediate_commit_timestamp=1738510834625645	transaction_length=317
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834625645 (2025-02-02 10:40:34.625645 EST)
# immediate_commit_timestamp=1738510834625645 (2025-02-02 10:40:34.625645 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834625645*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 9160
#250202 10:40:34 server id 1  end_log_pos 9236 CRC32 0xd4bc5988 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 9236
#250202 10:40:34 server id 1  end_log_pos 9302 CRC32 0x7d63c4ae 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 9302
#250202 10:40:34 server id 1  end_log_pos 9367 CRC32 0x93a73b0c 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAFYkAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wCuxGN9
8pGfZx4BAAAAQQAAAJckAAAAAHwAAAAAAAMAAgAF/wAuBwAACE9ha3ZpbGxlA0NBTgdPbnRhcmlv
uB8CAAw7p5M=
'/*!*/;
# at 9367
#250202 10:40:34 server id 1  end_log_pos 9398 CRC32 0x0b71551c 	Xid = 10586
COMMIT/*!*/;
# at 9398
#250202 10:40:34 server id 1  end_log_pos 9477 CRC32 0xe9459e44 	Anonymous_GTID	last_committed=29	sequence_number=30	rbr_only=yes	original_committed_timestamp=1738510834630288	immediate_commit_timestamp=1738510834630288	transaction_length=325
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834630288 (2025-02-02 10:40:34.630288 EST)
# immediate_commit_timestamp=1738510834630288 (2025-02-02 10:40:34.630288 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834630288*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 9477
#250202 10:40:34 server id 1  end_log_pos 9553 CRC32 0x00a3433b 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 9553
#250202 10:40:34 server id 1  end_log_pos 9619 CRC32 0x8ecd3cb7 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 9619
#250202 10:40:34 server id 1  end_log_pos 9692 CRC32 0x3e535ab2 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAJMlAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wC3PM2O
8pGfZx4BAAAASQAAANwlAAAAAHwAAAAAAAMAAgAF/wAvBwAAEFNhaW50IENhdGhhcmluZXMDQ0FO
B09udGFyaW8YFAIAslpTPg==
'/*!*/;
# at 9692
#250202 10:40:34 server id 1  end_log_pos 9723 CRC32 0xec0e0bad 	Xid = 10587
COMMIT/*!*/;
# at 9723
#250202 10:40:34 server id 1  end_log_pos 9802 CRC32 0xdb401867 	Anonymous_GTID	last_committed=30	sequence_number=31	rbr_only=yes	original_committed_timestamp=1738510834637885	immediate_commit_timestamp=1738510834637885	transaction_length=320
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834637885 (2025-02-02 10:40:34.637885 EST)
# immediate_commit_timestamp=1738510834637885 (2025-02-02 10:40:34.637885 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834637885*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 9802
#250202 10:40:34 server id 1  end_log_pos 9878 CRC32 0x5b7149a5 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 9878
#250202 10:40:34 server id 1  end_log_pos 9944 CRC32 0x2c0d688e 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 9944
#250202 10:40:34 server id 1  end_log_pos 10012 CRC32 0x0e095dc6 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAANgmAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wCOaA0s
8pGfZx4BAAAARAAAABwnAAAAAHwAAAAAAAMAAgAF/wAwBwAACUxvbmd1ZXVpbANDQU4JUXXDg8Kp
YmVj6fMBAMZdCQ4=
'/*!*/;
# at 10012
#250202 10:40:34 server id 1  end_log_pos 10043 CRC32 0x445dafec 	Xid = 10588
COMMIT/*!*/;
# at 10043
#250202 10:40:34 server id 1  end_log_pos 10122 CRC32 0x01594977 	Anonymous_GTID	last_committed=31	sequence_number=32	rbr_only=yes	original_committed_timestamp=1738510834642257	immediate_commit_timestamp=1738510834642257	transaction_length=322
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834642257 (2025-02-02 10:40:34.642257 EST)
# immediate_commit_timestamp=1738510834642257 (2025-02-02 10:40:34.642257 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834642257*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 10122
#250202 10:40:34 server id 1  end_log_pos 10198 CRC32 0x98634762 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 10198
#250202 10:40:34 server id 1  end_log_pos 10264 CRC32 0x86e3efbe 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 10264
#250202 10:40:34 server id 1  end_log_pos 10334 CRC32 0xdf87464e 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAABgoAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wC+7+OG
8pGfZx4BAAAARgAAAF4oAAAAAHwAAAAAAAMAAgAF/wAxBwAADVJpY2htb25kIEhpbGwDQ0FOB09u
dGFyaW/MxgEATkaH3w==
'/*!*/;
# at 10334
#250202 10:40:34 server id 1  end_log_pos 10365 CRC32 0x16fcc600 	Xid = 10589
COMMIT/*!*/;
# at 10365
#250202 10:40:34 server id 1  end_log_pos 10444 CRC32 0xefc5b258 	Anonymous_GTID	last_committed=32	sequence_number=33	rbr_only=yes	original_committed_timestamp=1738510834646750	immediate_commit_timestamp=1738510834646750	transaction_length=320
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834646750 (2025-02-02 10:40:34.646750 EST)
# immediate_commit_timestamp=1738510834646750 (2025-02-02 10:40:34.646750 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834646750*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 10444
#250202 10:40:34 server id 1  end_log_pos 10520 CRC32 0xd77e2ac2 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 10520
#250202 10:40:34 server id 1  end_log_pos 10586 CRC32 0x71ff2032 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 10586
#250202 10:40:34 server id 1  end_log_pos 10654 CRC32 0xb78186fe 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAFopAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wAyIP9x
8pGfZx4BAAAARAAAAJ4pAAAAAHwAAAAAAAMAAgAF/wAyBwAAC1RodW5kZXIgQmF5A0NBTgdPbnRh
cmlvycQBAP6Ggbc=
'/*!*/;
# at 10654
#250202 10:40:34 server id 1  end_log_pos 10685 CRC32 0x872f0075 	Xid = 10590
COMMIT/*!*/;
# at 10685
#250202 10:40:34 server id 1  end_log_pos 10764 CRC32 0xf939846e 	Anonymous_GTID	last_committed=33	sequence_number=34	rbr_only=yes	original_committed_timestamp=1738510834652816	immediate_commit_timestamp=1738510834652816	transaction_length=315
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834652816 (2025-02-02 10:40:34.652816 EST)
# immediate_commit_timestamp=1738510834652816 (2025-02-02 10:40:34.652816 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834652816*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 10764
#250202 10:40:34 server id 1  end_log_pos 10840 CRC32 0x81e23b23 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 10840
#250202 10:40:34 server id 1  end_log_pos 10906 CRC32 0x2699980f 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 10906
#250202 10:40:34 server id 1  end_log_pos 10969 CRC32 0x9d35e97f 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAJoqAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wAPmJkm
8pGfZx4BAAAAPwAAANkqAAAAAHwAAAAAAAMAAgAF/wAzBwAABk5lcGVhbgNDQU4HT250YXJpb5zB
AQB/6TWd
'/*!*/;
# at 10969
#250202 10:40:34 server id 1  end_log_pos 11000 CRC32 0x3355f5b9 	Xid = 10591
COMMIT/*!*/;
# at 11000
#250202 10:40:34 server id 1  end_log_pos 11079 CRC32 0x284b171b 	Anonymous_GTID	last_committed=34	sequence_number=35	rbr_only=yes	original_committed_timestamp=1738510834657248	immediate_commit_timestamp=1738510834657248	transaction_length=324
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834657248 (2025-02-02 10:40:34.657248 EST)
# immediate_commit_timestamp=1738510834657248 (2025-02-02 10:40:34.657248 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834657248*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 11079
#250202 10:40:34 server id 1  end_log_pos 11155 CRC32 0xcd7d1c14 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 11155
#250202 10:40:34 server id 1  end_log_pos 11221 CRC32 0xafc9a301 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 11221
#250202 10:40:34 server id 1  end_log_pos 11293 CRC32 0xd7ed4273 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAANUrAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wABo8mv
8pGfZx4BAAAASAAAAB0sAAAAAHwAAAAAAAMAAgAF/wA0BwAAC0NhcGUgQnJldG9uA0NBTgtOb3Zh
IFNjb3RpYS3AAQBzQu3X
'/*!*/;
# at 11293
#250202 10:40:34 server id 1  end_log_pos 11324 CRC32 0x143bfcbd 	Xid = 10592
COMMIT/*!*/;
# at 11324
#250202 10:40:34 server id 1  end_log_pos 11403 CRC32 0xd7d19cc1 	Anonymous_GTID	last_committed=35	sequence_number=36	rbr_only=yes	original_committed_timestamp=1738510834663583	immediate_commit_timestamp=1738510834663583	transaction_length=318
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834663583 (2025-02-02 10:40:34.663583 EST)
# immediate_commit_timestamp=1738510834663583 (2025-02-02 10:40:34.663583 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834663583*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 11403
#250202 10:40:34 server id 1  end_log_pos 11479 CRC32 0x15cd247d 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 11479
#250202 10:40:34 server id 1  end_log_pos 11545 CRC32 0xc2cd9f01 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 11545
#250202 10:40:34 server id 1  end_log_pos 11611 CRC32 0x84c0c4c8 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAABktAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wABn83C
8pGfZx4BAAAAQgAAAFstAAAAAHwAAAAAAAMAAgAF/wA1BwAACUVhc3QgWW9yawNDQU4HT250YXJp
b3K9AQDIxMCE
'/*!*/;
# at 11611
#250202 10:40:34 server id 1  end_log_pos 11642 CRC32 0xbc7c99e1 	Xid = 10593
COMMIT/*!*/;
# at 11642
#250202 10:40:34 server id 1  end_log_pos 11721 CRC32 0xed3a1fcd 	Anonymous_GTID	last_committed=36	sequence_number=37	rbr_only=yes	original_committed_timestamp=1738510834669649	immediate_commit_timestamp=1738510834669649	transaction_length=320
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834669649 (2025-02-02 10:40:34.669649 EST)
# immediate_commit_timestamp=1738510834669649 (2025-02-02 10:40:34.669649 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834669649*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 11721
#250202 10:40:34 server id 1  end_log_pos 11797 CRC32 0x13d53504 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 11797
#250202 10:40:34 server id 1  end_log_pos 11863 CRC32 0xbfa652a4 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 11863
#250202 10:40:34 server id 1  end_log_pos 11931 CRC32 0xf40affdf 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAFcuAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wCkUqa/
8pGfZx4BAAAARAAAAJsuAAAAAHwAAAAAAAMAAgAF/wA2BwAAB0hhbGlmYXgDQ0FOC05vdmEgU2Nv
dGlh9rwBAN//CvQ=
'/*!*/;
# at 11931
#250202 10:40:34 server id 1  end_log_pos 11962 CRC32 0x4df3eadf 	Xid = 10594
COMMIT/*!*/;
# at 11962
#250202 10:40:34 server id 1  end_log_pos 12041 CRC32 0x3c7cdb1b 	Anonymous_GTID	last_committed=37	sequence_number=38	rbr_only=yes	original_committed_timestamp=1738510834676217	immediate_commit_timestamp=1738510834676217	transaction_length=318
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834676217 (2025-02-02 10:40:34.676217 EST)
# immediate_commit_timestamp=1738510834676217 (2025-02-02 10:40:34.676217 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834676217*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 12041
#250202 10:40:34 server id 1  end_log_pos 12117 CRC32 0xd0c73bc3 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 12117
#250202 10:40:34 server id 1  end_log_pos 12183 CRC32 0x93a33321 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 12183
#250202 10:40:34 server id 1  end_log_pos 12249 CRC32 0x1fd9e647 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAJcvAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wAhM6OT
8pGfZx4BAAAAQgAAANkvAAAAAHwAAAAAAAMAAgAF/wA3BwAACUNhbWJyaWRnZQNDQU4HT250YXJp
b4KqAQBH5tkf
'/*!*/;
# at 12249
#250202 10:40:34 server id 1  end_log_pos 12280 CRC32 0xfc180098 	Xid = 10595
COMMIT/*!*/;
# at 12280
#250202 10:40:34 server id 1  end_log_pos 12359 CRC32 0x6e243dfd 	Anonymous_GTID	last_committed=38	sequence_number=39	rbr_only=yes	original_committed_timestamp=1738510834682630	immediate_commit_timestamp=1738510834682630	transaction_length=319
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834682630 (2025-02-02 10:40:34.682630 EST)
# immediate_commit_timestamp=1738510834682630 (2025-02-02 10:40:34.682630 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834682630*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 12359
#250202 10:40:34 server id 1  end_log_pos 12435 CRC32 0x5ec9964c 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 12435
#250202 10:40:34 server id 1  end_log_pos 12501 CRC32 0xb2193786 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 12501
#250202 10:40:34 server id 1  end_log_pos 12568 CRC32 0xa7d9ba7e 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAANUwAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wCGNxmy
8pGfZx4BAAAAQwAAABgxAAAAAHwAAAAAAAMAAgAF/wA4BwAACkdsb3VjZXN0ZXIDQ0FOB09udGFy
aW8yowEAfrrZpw==
'/*!*/;
# at 12568
#250202 10:40:34 server id 1  end_log_pos 12599 CRC32 0x2c620f0e 	Xid = 10596
COMMIT/*!*/;
# at 12599
#250202 10:40:34 server id 1  end_log_pos 12678 CRC32 0x59bdd452 	Anonymous_GTID	last_committed=39	sequence_number=40	rbr_only=yes	original_committed_timestamp=1738510834689888	immediate_commit_timestamp=1738510834689888	transaction_length=328
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834689888 (2025-02-02 10:40:34.689888 EST)
# immediate_commit_timestamp=1738510834689888 (2025-02-02 10:40:34.689888 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834689888*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 12678
#250202 10:40:34 server id 1  end_log_pos 12754 CRC32 0xf4979d7a 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 12754
#250202 10:40:34 server id 1  end_log_pos 12820 CRC32 0x57964c74 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 12820
#250202 10:40:34 server id 1  end_log_pos 12896 CRC32 0xe4ced9f9 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAABQyAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wB0TJZX
8pGfZx4BAAAATAAAAGAyAAAAAHwAAAAAAAMAAgAF/wA5BwAACkFiYm90c2ZvcmQDQ0FOEEJyaXRp
c2ggQ29sb21iaWG7mwEA+dnO5A==
'/*!*/;
# at 12896
#250202 10:40:34 server id 1  end_log_pos 12927 CRC32 0x2fe28a99 	Xid = 10597
COMMIT/*!*/;
# at 12927
#250202 10:40:34 server id 1  end_log_pos 13006 CRC32 0xa3922da2 	Anonymous_GTID	last_committed=40	sequence_number=41	rbr_only=yes	original_committed_timestamp=1738510834694869	immediate_commit_timestamp=1738510834694869	transaction_length=315
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834694869 (2025-02-02 10:40:34.694869 EST)
# immediate_commit_timestamp=1738510834694869 (2025-02-02 10:40:34.694869 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834694869*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 13006
#250202 10:40:34 server id 1  end_log_pos 13082 CRC32 0xdc95a4eb 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 13082
#250202 10:40:34 server id 1  end_log_pos 13148 CRC32 0xc4acb681 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 13148
#250202 10:40:34 server id 1  end_log_pos 13211 CRC32 0x5b364cd6 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAFwzAAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wCBtqzE
8pGfZx4BAAAAPwAAAJszAAAAAHwAAAAAAAMAAgAF/wA6BwAABkd1ZWxwaANDQU4HT250YXJpb6mU
AQDWTDZb
'/*!*/;
# at 13211
#250202 10:40:34 server id 1  end_log_pos 13242 CRC32 0x3a922281 	Xid = 10598
COMMIT/*!*/;
# at 13242
#250202 10:40:34 server id 1  end_log_pos 13321 CRC32 0xbbd46481 	Anonymous_GTID	last_committed=41	sequence_number=42	rbr_only=yes	original_committed_timestamp=1738510834700174	immediate_commit_timestamp=1738510834700174	transaction_length=329
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834700174 (2025-02-02 10:40:34.700174 EST)
# immediate_commit_timestamp=1738510834700174 (2025-02-02 10:40:34.700174 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834700174*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 13321
#250202 10:40:34 server id 1  end_log_pos 13397 CRC32 0x4373b19b 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 13397
#250202 10:40:34 server id 1  end_log_pos 13463 CRC32 0x8e73a7a6 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 13463
#250202 10:40:34 server id 1  end_log_pos 13540 CRC32 0x26dff26b 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAJc0AAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wCmp3OO
8pGfZx4BAAAATQAAAOQ0AAAAAHwAAAAAAAMAAgAF/wA7BwAAD1NhaW50IEpvaG7DgsK0cwNDQU4M
TmV3Zm91bmRsYW5kMI4BAGvy3yY=
'/*!*/;
# at 13540
#250202 10:40:34 server id 1  end_log_pos 13571 CRC32 0xd02ea9d4 	Xid = 10599
COMMIT/*!*/;
# at 13571
#250202 10:40:34 server id 1  end_log_pos 13650 CRC32 0x8302c912 	Anonymous_GTID	last_committed=42	sequence_number=43	rbr_only=yes	original_committed_timestamp=1738510834703871	immediate_commit_timestamp=1738510834703871	transaction_length=327
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834703871 (2025-02-02 10:40:34.703871 EST)
# immediate_commit_timestamp=1738510834703871 (2025-02-02 10:40:34.703871 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834703871*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 13650
#250202 10:40:34 server id 1  end_log_pos 13726 CRC32 0x0fec96ac 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 13726
#250202 10:40:34 server id 1  end_log_pos 13792 CRC32 0xd4759370 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 13792
#250202 10:40:34 server id 1  end_log_pos 13867 CRC32 0xc0a30242 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAOA1AAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wBwk3XU
8pGfZx4BAAAASwAAACs2AAAAAHwAAAAAAAMAAgAF/wA8BwAACUNvcXVpdGxhbQNDQU4QQnJpdGlz
aCBDb2xvbWJpYbyNAQBCAqPA
'/*!*/;
# at 13867
#250202 10:40:34 server id 1  end_log_pos 13898 CRC32 0x5b2bdf07 	Xid = 10600
COMMIT/*!*/;
# at 13898
#250202 10:40:34 server id 1  end_log_pos 13977 CRC32 0xcad799e6 	Anonymous_GTID	last_committed=43	sequence_number=44	rbr_only=yes	original_committed_timestamp=1738510834708205	immediate_commit_timestamp=1738510834708205	transaction_length=325
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834708205 (2025-02-02 10:40:34.708205 EST)
# immediate_commit_timestamp=1738510834708205 (2025-02-02 10:40:34.708205 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834708205*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 13977
#250202 10:40:34 server id 1  end_log_pos 14053 CRC32 0x78b96aab 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 14053
#250202 10:40:34 server id 1  end_log_pos 14119 CRC32 0xa4c8066a 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 14119
#250202 10:40:34 server id 1  end_log_pos 14192 CRC32 0x4e174749 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAACc3AAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wBqBsik
8pGfZx4BAAAASQAAAHA3AAAAAHwAAAAAAAMAAgAF/wA9BwAAB1NhYW5pY2gDQ0FOEEJyaXRpc2gg
Q29sb21iaWEMjAEASUcXTg==
'/*!*/;
# at 14192
#250202 10:40:34 server id 1  end_log_pos 14223 CRC32 0x0c7e7062 	Xid = 10601
COMMIT/*!*/;
# at 14223
#250202 10:40:34 server id 1  end_log_pos 14302 CRC32 0xce8cbc4e 	Anonymous_GTID	last_committed=44	sequence_number=45	rbr_only=yes	original_committed_timestamp=1738510834714058	immediate_commit_timestamp=1738510834714058	transaction_length=319
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834714058 (2025-02-02 10:40:34.714058 EST)
# immediate_commit_timestamp=1738510834714058 (2025-02-02 10:40:34.714058 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834714058*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 14302
#250202 10:40:34 server id 1  end_log_pos 14378 CRC32 0x5ee802fa 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 14378
#250202 10:40:34 server id 1  end_log_pos 14444 CRC32 0xc6318182 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 14444
#250202 10:40:34 server id 1  end_log_pos 14511 CRC32 0x9e013adf 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAGw4AAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wCCgTHG
8pGfZx4BAAAAQwAAAK84AAAAAHwAAAAAAAMAAgAF/wA+BwAACEdhdGluZWF1A0NBTglRdcODwqli
ZWNeiQEA3zoBng==
'/*!*/;
# at 14511
#250202 10:40:34 server id 1  end_log_pos 14542 CRC32 0x7937b433 	Xid = 10602
COMMIT/*!*/;
# at 14542
#250202 10:40:34 server id 1  end_log_pos 14621 CRC32 0x16eef1b5 	Anonymous_GTID	last_committed=45	sequence_number=46	rbr_only=yes	original_committed_timestamp=1738510834721388	immediate_commit_timestamp=1738510834721388	transaction_length=323
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834721388 (2025-02-02 10:40:34.721388 EST)
# immediate_commit_timestamp=1738510834721388 (2025-02-02 10:40:34.721388 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834721388*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 14621
#250202 10:40:34 server id 1  end_log_pos 14697 CRC32 0x262e022e 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 14697
#250202 10:40:34 server id 1  end_log_pos 14763 CRC32 0xf05e21fc 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 14763
#250202 10:40:34 server id 1  end_log_pos 14834 CRC32 0xd7dba515 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAKs5AAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wD8IV7w
8pGfZx4BAAAARwAAAPI5AAAAAHwAAAAAAAMAAgAF/wA/BwAABURlbHRhA0NBThBCcml0aXNoIENv
bG9tYmlhs3QBABWl29c=
'/*!*/;
# at 14834
#250202 10:40:34 server id 1  end_log_pos 14865 CRC32 0x272d916f 	Xid = 10603
COMMIT/*!*/;
# at 14865
#250202 10:40:34 server id 1  end_log_pos 14944 CRC32 0x4fa89143 	Anonymous_GTID	last_committed=46	sequence_number=47	rbr_only=yes	original_committed_timestamp=1738510834725573	immediate_commit_timestamp=1738510834725573	transaction_length=316
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834725573 (2025-02-02 10:40:34.725573 EST)
# immediate_commit_timestamp=1738510834725573 (2025-02-02 10:40:34.725573 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834725573*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 14944
#250202 10:40:34 server id 1  end_log_pos 15020 CRC32 0xaf640352 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 15020
#250202 10:40:34 server id 1  end_log_pos 15086 CRC32 0x664bf633 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 15086
#250202 10:40:34 server id 1  end_log_pos 15150 CRC32 0x3f2deebc 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAO46AAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wAz9ktm
8pGfZx4BAAAAQAAAAC47AAAAAHwAAAAAAAMAAgAF/wBABwAAB1N1ZGJ1cnkDQ0FOB09udGFyaW8O
agEAvO4tPw==
'/*!*/;
# at 15150
#250202 10:40:34 server id 1  end_log_pos 15181 CRC32 0xfd801b43 	Xid = 10604
COMMIT/*!*/;
# at 15181
#250202 10:40:34 server id 1  end_log_pos 15260 CRC32 0xf805724f 	Anonymous_GTID	last_committed=47	sequence_number=48	rbr_only=yes	original_committed_timestamp=1738510834730519	immediate_commit_timestamp=1738510834730519	transaction_length=325
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834730519 (2025-02-02 10:40:34.730519 EST)
# immediate_commit_timestamp=1738510834730519 (2025-02-02 10:40:34.730519 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834730519*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 15260
#250202 10:40:34 server id 1  end_log_pos 15336 CRC32 0x12371c10 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 15336
#250202 10:40:34 server id 1  end_log_pos 15402 CRC32 0xaaa8a72d 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 15402
#250202 10:40:34 server id 1  end_log_pos 15475 CRC32 0xea34c662 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAACo8AAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wAtp6iq
8pGfZx4BAAAASQAAAHM8AAAAAHwAAAAAAAMAAgAF/wBBBwAAB0tlbG93bmEDQ0FOEEJyaXRpc2gg
Q29sb21iaWFiXQEAYsY06g==
'/*!*/;
# at 15475
#250202 10:40:34 server id 1  end_log_pos 15506 CRC32 0xbeb58d0c 	Xid = 10605
COMMIT/*!*/;
# at 15506
#250202 10:40:34 server id 1  end_log_pos 15585 CRC32 0x5a15d52a 	Anonymous_GTID	last_committed=48	sequence_number=49	rbr_only=yes	original_committed_timestamp=1738510834734789	immediate_commit_timestamp=1738510834734789	transaction_length=315
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1738510834734789 (2025-02-02 10:40:34.734789 EST)
# immediate_commit_timestamp=1738510834734789 (2025-02-02 10:40:34.734789 EST)
/*!80001 SET @@session.original_commit_timestamp=1738510834734789*//*!*/;
/*!80014 SET @@session.original_server_version=80041*//*!*/;
/*!80014 SET @@session.immediate_server_version=80041*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 15585
#250202 10:40:34 server id 1  end_log_pos 15661 CRC32 0x21d72af2 	Query	thread_id=12	exec_time=0	error_code=0
SET TIMESTAMP=1738510834/*!*/;
BEGIN
/*!*/;
# at 15661
#250202 10:40:34 server id 1  end_log_pos 15727 CRC32 0x47dea95a 	Table_map: `world`.`city` mapped to number 124
# has_generated_invisible_primary_key=0
# at 15727
#250202 10:40:34 server id 1  end_log_pos 15790 CRC32 0x5cb77c3d 	Write_rows: table id 124 flags: STMT_END_F

BINLOG '
8pGfZxMBAAAAQgAAAG89AAAAAHwAAAAAAAEABXdvcmxkAARjaXR5AAUD/v7+Awb+jP4M/lAAAQEA
AgP8/wBaqd5H
8pGfZx4BAAAAPwAAAK49AAAAAHwAAAAAAAMAAgAF/wBCBwAABkJhcnJpZQNDQU4HT250YXJpb7Vc
AQA9fLdc
'/*!*/;
# at 15790
#250202 10:40:34 server id 1  end_log_pos 15821 CRC32 0x9c332c01 	Xid = 10606
COMMIT/*!*/;
# at 15821
#250202 10:41:43 server id 1  end_log_pos 15844 CRC32 0x126ffeaf 	Stop
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
# at 4
#250202 10:43:14 server id 1  end_log_pos 126 CRC32 0x12508264 	Start: binlog v 4, server v 8.0.41-0ubuntu0.22.04.1 created 250202 10:43:14 at startup
# Warning: this binlog is either in use or was not closed properly.
ROLLBACK/*!*/;
BINLOG '
kpKfZw8BAAAAegAAAH4AAAABAAQAOC4wLjQxLTB1YnVudHUwLjIyLjA0LjEAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAACSkp9nEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAWSCUBI=
'/*!*/;
# at 126
#250202 10:43:14 server id 1  end_log_pos 157 CRC32 0x1b430ea4 	Previous-GTIDs
# [empty]
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
