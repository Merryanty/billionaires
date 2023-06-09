# Set Library 
message("Load the libraries")
library(rvest)
library(dplyr)
library(mongolite)
library(jsonlite)

#list of billionaires website
#https://www.forbes.com/real-time-billionaires/#6a2c02bd3d78

message("Define function to Scrape Real Time Billionaires")
url <- "https://www.forbes.com/forbesapi/person/rtb/0/-estWorthPrev/true.json?fields=rank,uri,personName,lastName,gender,source,industries,countryOfCitizenship,birthDate,finalWorth,estWorthPrev,imageExists,squareImage,listUri"
rich <- fromJSON(url)
data <- rich$personList$personsLists
data2 <- data[,c(2,5,12,10,14,4,6,8)]
data2$Change <- data2$finalWorth-data2$estWorthPrev
data2$Scraping_time <- Sys.Date()
data2 <- data2[,c(1:6,9,7:8,10)]
colnames(data2) <- c("Rank","Name","Last_Name","Gender",
                     "Prev.Worth($M)","Final.Worth($M)","Change($M)","Source","Citizenship","Scraping_Time")
data3 <- data2[order(data2$Change,decreasing = TRUE,na.last = NA),]
# Today's Winner
winner <- head(data3,n=5)
# Today's Losers
loser <- tail(data3,n=5)
# Top 5 Billionaires Today Ranking
ranking <- head(data2[order(data2$`Final.Worth($M)`,decreasing = TRUE,na.last = NA),],n=5)


message("Connect to Mongo Cloud")
atlas_collection1 <- mongo(
  collection = Sys.getenv("ATLAS_COLLECTION1"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)

atlas_collection2 <- mongo(
  collection = Sys.getenv("ATLAS_COLLECTION2"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)

atlas_collection3 <- mongo(
  collection = Sys.getenv("ATLAS_COLLECTION3"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)

atlas_collection1$insert(winner)
atlas_collection2$insert(loser)
atlas_collection3$insert(ranking)

atlas_collection1$disconnect()
atlas_collection2$disconnect()
atlas_collection3$disconnect()