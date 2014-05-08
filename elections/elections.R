#Statistical detection of systematic election irregularities

library("jsonlite")

json_file <- "data/resultats_algerie.json"
json_data <- fromJSON(json_file)

voter_turnout <- as.numeric(sub(",",".",json_data$rows[,5],fixed=TRUE))
voter_for_winner <- as.numeric(json_data$rows[,9])
par(mfrow=c(1,1))
plot(voter_turnout, voter_for_winner)

df.voter <- data.frame(voter_turnout,voter_for_winner)

library(mclust)
cluster.fit <- Mclust(df.voter)
par(mfrow=c(2,2))
plot(cluster.fit)



