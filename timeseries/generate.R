timeindex<-seq(from = as.POSIXct("2014-05-15 07:00"), to = as.POSIXct("2014-06-15 18:00"), by = "hour")
value <- rpois(n = length(timeindex),1)

timestampindex<-as.numeric(timeindex)
write.table(cbind(as.character(timestampindex),as.numeric(value)), "./ts.csv", row.names = F, col.names = FALSE, sep=":", eol=",\n")

