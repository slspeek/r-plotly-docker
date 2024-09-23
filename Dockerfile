FROM debian:12.7

RUN apt-get update
RUN apt-get install -y r-base r-base-dev
RUN apt-get install -y build-essential  libxml2-dev libssl-dev libcurl4-openssl-dev
RUN R -q -e "install.packages(c('curl'))"
RUN R -q -e "install.packages('plotly')"
RUN apt-get purge -y build-essential  libxml2-dev libssl-dev libcurl4-openssl-dev r-base-dev
RUN apt-get -y autoremove
RUN apt-get clean

CMD ["bash"]
