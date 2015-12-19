library(RODBC)
install.packages("DBI_0.3.1.zip",repos=NULL,type="source")
install.packages("RMySQL_0.10.2.zip",repos=NULL,type="source")
library(DBI)
library(RMySQL)
hg19<-dbConnect(MySQL(),user="genome",db="hg19",host="genome-mysql.cse.ucsc.edu")
allTables<-dbListTables(hg19)
length(allTables)
allTables[1:5]
dbDisconnect(hg19)

source("http://bioconductor.org/bioLite.R")
biocLite("rhd5")

library(httr)
oauth_endpoints("github")
myapp <- oauth_app("github",
                   key = "56b637a5baffac62cad9",
                   secret = "8e107541ae1791259e9987d544ca568633da2ebf")
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
req
gtoken
json1=content(req)
install.packages("rjson")
library(rjson)
json2=jsonlite::fromJSON(toJSON(json1))
json2


con=url("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for ")
htmlcode=readLines(con)
htmlcode[10]
close(con)
