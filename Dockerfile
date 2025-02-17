# 베이스 이미지 설정: Nginx 최신 버전 사용
FROM nginx:latest

# index.html 파일 복사: 현재 디렉토리의 index.html 파일을 컨테이너 내의 /usr/share/nginx/html 디렉토리에 복사
COPY index.html /usr/share/nginx/html

# 80번 포트 개방: Nginx는 기본적으로 80번 포트에서 실행되므로, 외부에서 접근할 수 있도록 80번 포트를 개방
EXPOSE 80

# 컨테이너 시작 시 실행할 명령: Nginx 실행
CMD ["nginx", "-g", "daemon off;"]