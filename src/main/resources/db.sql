show databases;
use user_inform;
select *from tb_user;
CREATE TABLE TB_USER (
    USER_NO int(11) NOT NULL AUTO_INCREMENT COMMENT '사용자번호',
    USER_ID varchar(255) NOT NULL COMMENT '아이디',
    USER_PW varchar(256) NOT NULL COMMENT '비밀번호',
    USER_NAME varchar(255) NOT NULL COMMENT '사용자명',
    USER_AUTH varchar(255) NOT NULL COMMENT '권한',
    USER_DOB int(6)NOT NULL COMMENT '생일',
    USER_EMAIL varchar(255) DEFAULT NULL COMMENT '이메일',
    USER_PHONE varchar(255) NOT NULL COMMENT '전화번호',
    APPEND_DATE datetime DEFAULT NULL COMMENT '추가날짜',
    UPDATE_DATE datetime DEFAULT NULL COMMENT '수정날짜',
     PRIMARY KEY (`USER_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
UPDATE user_inform.tb_user SET USER_AUTH = "ROLE_ADMIN" WHERE USER_NO=4;


CREATE TABLE RESERVATION(
    RESERVATION_NO int(11) NOT NULL AUTO_INCREMENT COMMENT '예약번호',
    USER_ID VARCHAR(255) NOT NULL COMMENT '사용자 아이디',
    USER_NAME VARCHAR(255) NOT NULL COMMENT '사용자 이름',
    USER_PHONE VARCHAR(255) NOT NULL COMMENT '전화번호',
    TABLE_NO int(20)NOT NULL COMMENT '테이블 번호',
    TABLE_SITS int(20)NOT NULL COMMENT '테이블 자리 수',
    RESERVATION_DATE date DEFAULT NULL COMMENT '예약 날짜',
    RESERVATION_TIME time DEFAULT NULL COMMENT '예약 시간',
    PRIMARY KEY (RESERVATION_NO),
    CONSTRAINT FK1 FOREIGN KEY (USER_ID)REFERENCES tb_user(USER_ID),
    CONSTRAINT FK2 FOREIGN KEY (USER_NAME)REFERENCES tb_user(USER_NAME),
    CONSTRAINT FK3 FOREIGN KEY (USER_PHONE)REFERENCES tb_user(USER_PHONE)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE REVIEW (
    REVIEW_NO int(11) NOT NULL AUTO_INCREMENT COMMENT '후기 번호',
    USER_ID VARCHAR(255) NOT NULL COMMENT '아이디',
    REVIEW_TITLE varchar(255) NOT NULL COMMENT '후기 제목',
    REVIEW_TEXT varchar(255) NOT NULL COMMENT '후기 내용',
    REVIEW_POINT double NOT NULL COMMENT '평점',
    REVIEW_DATE date DEFAULT NULL COMMENT '작성날짜',
    PRIMARY KEY (`REVIEW_NO`),
    CONSTRAINT FK4 FOREIGN KEY (USER_ID)REFERENCES tb_user(USER_ID)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
