ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE USER web IDENTIFIED BY web DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;
GRANT RESOURCE, CONNECT TO WEB;
GRANT CREATE TABLE TO WEB;
