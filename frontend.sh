yum install nginx -y
cp nginx /etc/nginx/default.d/roboshop.conf


rm -rf /usr/share/nginx/html/*
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
# shellcheck disable=SC2164
cd /usr/share/nginx/html

unzip /tmp/frontend.zip

systemctl enable nginx
systemctl restart nginx