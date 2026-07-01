FROM nginx:alpine

#Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

#Copy our page in container
COPY index.html /usr/share/nginx/html/index.html

#Nginx runs on port 80 inside conatainer
EXPOSE 80

