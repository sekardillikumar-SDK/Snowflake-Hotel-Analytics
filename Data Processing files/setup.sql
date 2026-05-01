-- create a database

CREATE DATABASE HOTEL_DB;

--  create a file format

CREATE OR REPLACE FILE FORMAT FF_CSV
    TYPE = 'CSV'
    FIELD_OPTIONALLY_ENCLOSED_BY='"'
    SKIP_HEADER = 1
    NULL_IF= ('NULL','null', '');
    
-- create stage

CREATE OR REPLACE STAGE STG_HOTELBOKKING
    FILE_FORMAT = FF_CSV;

