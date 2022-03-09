# 데이터베이스 사용 (springboot = 데이터베이스명)
use springboot;

# 현재의 character_set, collation 설정 확인
show variables like '%c';

# character_set collation 설정 변경 (springboot = 데이터베이스명)
ALTER DATABASE springboot
CHARACTER SET = 'utf8mb4'
COLLATE = 'utf8mb4_general_ci';

# 타임존 설정 확인
select @time_zone, now();

# 테스트 쿼리
CREATE TABLE test (
    id bigint(20) NOT NULL AUTO_INCREMENT,
    content varchar(255) DEFAULT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB;
insert into test(content) values ('테스트');
select * from test;

# 사용자 권한 설정
UPDATE user SET role = 'USER';