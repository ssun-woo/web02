-- test 테이블 생성
create table test(
    num number(38),
    name varchar2(20)
);

select * from test;

delete from test;

commit;