# 자바 8 설치
sudo yum install -y java-1.8.0-openjdk-devel.x86_64
# 자바 버전 변경
sudo /usr/sbin/alternatives --config java
# 자바 버전 확인 (openjdk version "1.8.0")
java -version

# 타임존 변경
sudo rm /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Seoul /etc/localtime

# Hostname 영구 변경
# CentOS 6
sudo vim /etc/sysconfig/network
HOSTNAME=host이름
# CentOS 7
sudo hostnamectl set-hostname host이름
# 서버 재부팅
sudo reboot

# Hostname 등록
sudo vim /etc/hosts
127.0.0.1 host이름
curl host이름

# MySQL 접근 테스트 (MySQL CLI 설치)
sudo yum install mysql

# RDS 접속
mysql -u 계정 -p -h Host주소

# RDS 접속 확인 (데이터베이스 확인)
show databases;

# EC2에 깃 설치
sudo yum install git

# 깃 설치 상태 확인
git --version

# 프로젝트를 저장할 디렉토리 생성 후 이동
mkdir ~/app && mkdir ~/app/step1
cd ~/app/step1

# git clone 진행
git clone https://github.com/hyunmin0317/Spring-Boot.git
cd Spring-Boot
ll

# 코드 테스트
./gradlew test

# gradlew 실행 권한 변경
chmod +x ./gradlew

# 배포 쉘 스크립트 작성
vim ~/app/step1/Spring-Boot/deploy.sh

# 스크립트 실행 권한 변경
chmod +x ./deploy.sh
ll

# 스크립트 실행
./deploy.sh
vim nohup.out

# application-oauth.properties 파일 생성
vim /home/ec2-user/app/application-oauth.properties