FROM nginx:1.21.6

# No usar cache
ARG CACHEBUST=1 
RUN apt-get update && apt-get -y upgrade

RUN echo '<html><body>Mi pagina de inicio personalizada 2da version</bidy></html>' > /usr/share/nginx/html/index.html