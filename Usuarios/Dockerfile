FROM nginx:1.27.2

RUN apt-get update && apt-get -y upgrade

RUN groupadd -r jcaceres && useradd -r -g jcaceres jcaceres
RUN chown -R jcaceres:jcaceres /usr/share/nginx/html

USER jcaceres

CMD [ "bash", "-c", "echo Hello from appuser!" ]