% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bitly_camp.R
\name{bitly_retrieve_channel}
\alias{bitly_retrieve_channel}
\title{Get a Channel (Premium)}
\usage{
bitly_retrieve_channel(channel_guid = NULL, showRequestURL = T)
}
\arguments{
\item{channel_guid}{- GUID of a target channel}

\item{showRequestURL}{- an optional T/F value to whether show URL which has been
build and requested from server. For debug purposes, default FALSE.}
}
\description{
Get a channel's details
}
\section{Campaigns}{

Bit.ly Campaigns allows you to build and manage omnichannel campaigns.
}

\examples{
\dontrun{
gc <- bitly_retrieve_channel(channel_guid = "testing")
}

}
\seealso{
\url{https://dev.bitly.com/api-reference/#getChannel}
}
