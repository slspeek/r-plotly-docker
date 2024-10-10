FROM debian:12.7

RUN apt-get update && \
    apt-get install -y r-base 
RUN apt-get install -y build-essential  r-base-dev libxml2-dev libssl-dev libcurl4-openssl-dev && \
    R -q -e "install.packages(c('curl'))" && \
    R -q -e "install.packages('plotly')"  && \
    apt-get purge -y build-essential  libxml2-dev libssl-dev libcurl4-openssl-dev r-base-dev && \
    apt-get -y autoremove && \
    apt-get clean 

CMD ["bash"]
