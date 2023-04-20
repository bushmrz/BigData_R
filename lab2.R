df<-read.csv("C:\\Users\\ASUS\\Documents\\Лучший город России.csv", sep=";", header=T, fileEncoding="cp1251")
df

max_vec <- sapply(df[3:12], max, simplify=FALSE, na.rm = T)
min_vec <- sapply(df[3:12], min, simplify=FALSE, na.rm = T)
mean_vec <- sapply(df[3:12], mean, simplify=FALSE, na.rm = T)

vec1 <- sapply(df[3:12], function(x)length(which(x>7)))
vec2 <- sapply(df[3:12], function(x)length(which(x<3)))

sort_list <- mean_vec[order(unlist(mean_vec), decreasing = T)]

names.f <- factor(names(mean_vec))

barplot(unlist(mean_vec), col = "green", horiz = T)
hist(unlist(mean_vec) ,col = "blue")
boxplot(df[3:12])

