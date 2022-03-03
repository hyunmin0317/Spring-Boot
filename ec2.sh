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