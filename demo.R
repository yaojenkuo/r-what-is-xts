library(quantmod)

# what is xts
start_date <- "2018-01-01"
AAPL <- getSymbols(Symbols = "AAPL", from = start_date, auto.assign = FALSE) # create a AAPL xts object in global environment
class(AAPL)
# deconstruct xts
xts_index <- index(AAPL)
xts_coredata <- coredata(AAPL)
class(xts_index)
class(xts_coredata)
as.numeric(xts_index)
# matrix with column names
colnames(xts_coredata)
xts_coredata[1, 1]
xts_coredata[1, "AAPL.Open"]
