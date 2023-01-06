drop table tbl_member;

create table tbl_member (
    userId      varchar(50)     not null,
    userPass    varchar(100)    not null,
    userName    varchar(30)     not null,
    userPhon    varchar(20)     not null,
    userAddr1   varchar(20)     null,
    userAddr2   varchar(50)     null,
    userAddr3   varchar(50)      null,
    regiDate    datetime      not null   default now(),
    verify      int                default 0,
    primary key(userId)
);

--------------------------------------------------
drop table tbl_goods;

create table tbl_goods (
    gdsNum       int            not null,
    gdsName      varchar(50)   not null,
    cateCode     varchar(30)    not null,
    gdsPrice     int            not null,
    gdsStock     int            null,
    gdsDes       varchar(500)   null,
    gdsImg       varchar(200)   null,
    gdsDate      datetime       not null   default now(),  
    primary key(gdsNum)  
);

----------------------------------------------------
drop table goods_category;

create table goods_category (
   cateNo        int          auto_increment       primary key,
    cateName     varchar(20)    not null,
    cateCode     varchar(30)    not null         unique,
    cateCodeRef  varchar(30)    null ,
    
    constraint code_goods_category
   foreign key (cateCodeRef) 
    references goods_category(cateCode)    
);

-------------------------------------------------------
alter table tbl_goods 
   add constraint fk_goods_category
    foreign key(cateCode)
   references goods_category(cateCode);

insert into tbl_member(userId, userPass, userName, userPhon)
values('아이디', '비밀번호', '닉네임', '전화번호');

select * from tbl_member;

 

select userId, verify from tbl_member;





update tbl_member 
    set verify = 9
    where userId = 'abc@naver.com';
    
