FROM rocker/r-ver:3.5.2

RUN install2.r \
  RhpcBLASctl \
  spBayes
  
COPY ../*.R ../data.rds /
