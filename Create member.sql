--member table 생성
CREATE SEQUENCE member_seq
INCREMENT BY 1
START WITH 1;

CREATE TABLE member(
    member_id NUMBER CONSTRAINT member_member_id_pk primary key,
    member_user_id VARCHAR2(200),
    member_password varchar2(200),
    member_name varchar2(200),
    member_phone number,
    member_email varchar2(200),
    member_birth number,  
    member_marketing_sms number,
    member_marketing_email number,
    member_type number
);
desc member;

-----관리자 아이디 삽입(member_type=1)
INSERT INTO member(member_id,member_user_id,member_password,member_name,member_phone,member_email,member_birth,member_type)
values(member_seq.nextval,'admin','1234','관리자',01011111111,'1111@naver.com',19991111,1);

----일반 유저 아이디 추가(marketing수신 0=미수신 1=수신)
INSERT INTO member(member_id,member_user_id,member_password,member_name,member_phone,member_email,member_birth,member_marketing_sms,member_marketing_email)
values(member_seq.nextval,'ekdud','1234','다영',01022222222,'2222@naver.com',19881222,1,0);
----일반 유저 아이디 추가2(marketing수신 0=미수신 1=수신)
INSERT INTO member(member_id,member_user_id,member_password,member_name,member_phone,member_email,member_birth,member_marketing_sms,member_marketing_email)
values(member_seq.nextval,'cing','1234','어피치',01033333333,'3333@naver.com',20001222,0,0);

select * from member;

delete from member where member_id=41;

------배송지 관리 테이블 생성
CREATE SEQUENCE address_seq
INCREMENT BY 1
START WITH 1;

CREATE TABLE address(
    address_id NUMBER,
    member_id NUMBER,
    address varchar2(200),
    address_name varchar2(100),
    CONSTRAINT address_id_PK PRIMARY KEY (address_id),
    CONSTRAINT member_id_FK FOREIGN KEY (member_id) REFERENCES member(member_id) 
);

desc address;
select * from address;

---일반 유저2의 주소지 2개 등록
insert into address(address_id,member_id,address,address_name)
values(ADDRESS_SEQ.nextval,2,'고양시 일산동구','집');
insert into address(address_id,member_id,address,address_name)
values(ADDRESS_SEQ.nextval,2,'서울시 동작구','직장');

---일반 유저3의 주소지 1개 등록
insert into address(address_id,member_id,address,address_name)
values(ADDRESS_SEQ.nextval,21,'고양시 덕양구','자택');

select* from address;

commit;