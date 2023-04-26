CREATE TABLE USER_ACCOUNTS_TEST (
    ID BIGINT AUTO_INCREMENT,
    STATUS_ID BIGINT,
    ROLE_ID BIGINT,
    USER_NAME VARCHAR(255) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE USER_INFORMATIONS_TEST (
    ACCOUNT_ID BIGINT,
    NAME VARCHAR(255) NOT NULL,
    PHONE_NUMBER VARCHAR(255) NOT NULL UNIQUE,
    EMAIL VARCHAR(255) NOT NULL,
    REGISTERED_TIME TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    RECENT_CONNECTION TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    BONUS_POINT BIGINT NOT NULL DEFAULT 0,
    USER_GRADE_ID BIGINT DEFAULT 1
);

CREATE TABLE PASSWORDS_TEST(
    ACCOUNT_ID BIGINT,
    PASSWORD CHAR(255)
);

CREATE TABLE USER_GRADES_TEST(
    ID BIGINT AUTO_INCREMENT,
    GRADE_NAME VATCHAR(255) NOT NULL UNIQUE,
    ACCUMULATE_RATE DECIMAL(4,3) NOT NULL,
    ACHIEVEMENT_CONDITION BIGINT NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE ROLES_TEST(
    ID BIGINT AUTO_INCREMENT,
    ROLE_NAME VARCHAR(255) NOT NULL UNIQUE,
    PRIMARY KEY (ID)
);

CREATE TABLE GRANTS_TEST(
    ID BIGINT AUTO_INCREMENT,
    GRANT_NAME VARCHAR(255) NOT NULL UNIQUE,
    PRIMARY KEY (ID)
);

CREATE TABLE ROLES_GRANTS_TEST(
    ROLE_ID BIGINT,
    GRANT_ID BIGINT
);