% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bitly_groups.R
\name{bitly_retrieve_group_click_metrics_by_devices}
\alias{bitly_retrieve_group_click_metrics_by_devices}
\title{Get Click Metrics for a specified group by devices (Premium)}
\usage{
bitly_retrieve_group_click_metrics_by_devices(
  group_id = NA,
  showRequestURL = F
)
}
\arguments{
\item{group_id}{- a required string | A GUID for a Bitly group}

\item{showRequestURL}{- an optional T/F value to whether show URL which has been
build and requested from server. For debug purposes, default FALSE.}
}
\description{
Returns the device types generating click traffic to the specified group's links.
Requires a premium account.
}
\section{Group}{

Groups are a subdivision within an organization. A user will belong to a group within an organization.
Most actions on our API will be on behalf of a group. For example, when you
shorten a link, it will be on behalf of a user and a group.
}

\examples{
\dontrun{
ui <- bitly_user_info(showRequestURL = TRUE)
rg <- bitly_retrieve_group_click_metrics_by_devices(group_id = ui$default_group_guid[1])
}
}
\seealso{
\url{https://dev.bitly.com/api-reference/#getGroupMetricsByDevices}
}
