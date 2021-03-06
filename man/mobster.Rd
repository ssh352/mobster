\name{mobster}
\title{Model Order Book State Explorer.}
\description{Model Order Book State Explorer.}
\details{A lightweight tool set for modelling exchange orderbook dynamics. This package maintains an internal order book
following the standard Central Limit Order Book algorithm. It currently supports FAK and GTC type orders.

Orders can be placed in the book using the 'limit' method and 'market' methods. Quotes could be generated from 
historical data, or from a statistical model. Executions in the order book and the full orderbook history
can be obtained for analysis purposes. Trades are modelled as a sequence of ordered events.

The main engine was designed to be fast for use with largish datasets (up to 1000000 records currently).

Uses include modelling market impact of trades, predicting market moves based on orderbook
microstructure, analysing trading strategies against an orderbook, modelling trade arrival etc.

Currently only one symbol is supported (ie one instrument). Future versions may be enhanced to 
model multiple symbols.}
\docType{package}
\alias{mobster}
\alias{mobster-package}
\examples{# first initialise the book (sets the start price, and how many historical rows to clear) 
init.book(1000)

# get the orderbook
ob <- get.ob()

# add some sell limit orders - fill multiple levels
limit("sym", "trader", 1, 100.00, 1, "GTC")
limit("sym", "trader", 1, 100.01, 1, "GTC")
limit("sym", "trader", 1, 100.02, 1, "GTC")
limit("sym", "trader", 1, 100.03, 1, "GTC")
limit("sym", "trader", 1, 100.04, 1, "GTC")

ob <- get.ob()

# get the historical order book
hob <- get.hob(10)

# cross (ie execute a trade)
id <- limit("sym", "trader", 0, 100.02, 1, "GTC")

# crossed at the lowest price level - ie 100.00. Check the execution history.
# both sides are reoprted 
get.execs(10)

# get the filled qty for the order
get.filled.qty(id)

# see applett/rstuff for examples of how the toolkit 
# can be used to perform more sophisticated scenarios.}
