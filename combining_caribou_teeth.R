sample01A <- read.csv("01A.csv", header = FALSE)
colnames(sample01A) <- c("time", "Sr")

sample01B <- read.csv("01B.csv", header = FALSE)
colnames(sample01B) <- c("time", "Sr")

sample01C <- read.csv("01C.csv", header = FALSE)
colnames(sample01C) <- c("time", "Sr")

sample01 <- rbind(sample01A, sample01B, sample01C)
plot(sample01, type = "p", pch = 20, cex = 0.5)


#Each sample has 3 parts (A, B, and C), and I want to plot them together as done above.
#I would like to figure out a way to make this more efficient, perhaps by making a function
#that reads every csv in the folder at once, combines the ones that have the same numerical
#part of their name using rbind, and then plots them.