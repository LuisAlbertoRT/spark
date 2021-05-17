install.packages("sparklyr")
install.packages("dbplot")
install.packages("nycflights13")

library(sparklyr)
library(dbplot)
library(nycflights13)

spark_install("3.0.1")

sc<-spark_connect(master="local",version="3.0.1" )

vuelos<-sdf_copy_to(sc,flights)

