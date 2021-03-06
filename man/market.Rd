\name{market}
\alias{market}
\title{Place a market order.}
\usage{market(sym, trader, side, price, qty, time=0, externalId=0)}
\description{Place a market order.
A market order will scan the orderbook until the amount required has been matched, or there is no
more depth in the orderbook.}
\arguments{\item{sym}{string. The symbol of the instrument being traded}
\item{trader}{string. The trader (or strategy name) making the trade}
\item{side}{int. The side of the trade. buy=0, sell=1}
\item{price}{double. not used}
\item{qty}{int. The qty to be traded}
\item{time}{the time the order was cancelled (when replaying historical data).}
\item{externalId}{the id of the original order (use when replaying historical data).}}
