data(cars)
cars.lo <- loess(dist ~ speed, cars)
predict(cars.lo, data.frame(speed = seq(5, 30, 1)), se = TRUE)
# to allow extrapolation
cars.lo2 <- loess(dist ~ speed, cars, control = loess.control(surface = "direct"))
predict(cars.lo2, data.frame(speed = seq(5, 30, 1)), se = TRUE)

source("lab8/student-merge.R")

head(d3)

students.lo <- loess(freetime.x ~ failures.x, d3, control=loess.control(surface = "direct"))


predict(students.lo, data.frame(failures.x = seq(1, 5, 0.1)), se = TRUE)
