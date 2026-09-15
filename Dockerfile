FROM nginx

COPY ./ /usr/share/nginx/html/
RUN mkdir -p /usr/share/nginx/html/.well-known/appspecific/
COPY .well-known/appspecific/com.tesla.3p.public-key.pem /usr/share/nginx/html/.well-known/appspecific/
RUN ls -la /usr/share/nginx/html/.well-known/appspecific/
WORKDIR /usr/share/nginx/html/
RUN rm Dockerfile
RUN rm -rf .git
RUN rm -rf .idea
RUN rm .gitignore
RUN rm Readme.txt
RUN rm changelog.txt
RUN rm -rf templates/
