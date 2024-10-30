FROM docker.io/library/nginx
# 把根目录的nginx配置文件复制到容器中的相应目录，copy到image里
COPY ./nginx.conf /etc/nginx/
# 删除image里面nginx缺省目录文件的内容，复制制作内容进去
RUN rm -rf /usr/share/nginx/html/*
COPY ./dist/shop/ /usr/share/nginx/html/
