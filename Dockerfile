# 이미 pull한 tomcat:9.0 이미지를 사용
FROM tomcat:9.0

# 로컬 war 폴더 안의 모든 .war 파일을 Tomcat 웹앱 폴더로 복사
COPY war/*.war /usr/local/tomcat/webapps/

# Tomcat 서버를 실행하도록 CMD 명령어 추가
CMD ["catalina.sh", "run"]
