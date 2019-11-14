rm(list=ls(all=TRUE))
cat("\014")
if (!require("data.table")) install.packages("data.table")
library("data.table")
header <- read.table("DDSM01USA066NWDB.csv", header = TRUE,
                     sep=",", nrow = 1)
DDSM01USA066NWDB <- fread("DDSM01USA066NWDB.csv",
                         skip=1, sep=",",header=FALSE,
                         data.table=FALSE)
setnames(DDSM01USA066NWDB, colnames(header))
rm(header)
View(DDSM01USA066NWDB)
str(DDSM01USA066NWDB)
summary(DDSM01USA066NWDB)
