library(xts)
library(zoo)
library(tidyverse)
head(data)

data_xts <- xts(data[,2], order.by = as.Date(data$date))
head(data_xts)


data_2022 <- data_xts["2022"]
data_2021 <- data_xts["2021"]
data_2020 <- data_xts["2020"]
data_2019 <- data_xts["2019"]

mean(data_2022$pm25)
mean(data_2021$pm25)
mean(data_2020$pm25)
mean(data_2019$pm25)




