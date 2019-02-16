FROM rundel/r-ver:test

RUN install2.r \
  RhpcBLASctl \
  spBayes
  
COPY ../*.R ../data.rds /
