% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ApiKey.R
\name{bitly_auth}
\alias{bitly_auth}
\title{Assign bit.ly API tokens using OAuth2.0}
\usage{
bitly_auth(
  key = "be03aead58f23bc1aee6e1d7b7a1d99d62f0ede8",
  secret = "f9c6a3b18968e991e35f466e90c7d883cc176073",
  debug = F,
  token
)
}
\arguments{
\item{key}{- Client ID}

\item{secret}{- Client Secret}

\item{debug}{- whether to print additional debug messages}

\item{token}{- a \code{Token} object or a file path to an rds file containing a token.}
}
\description{
There are 2 ways of how you can authenticate using this package.

1. The recommended practise for the end-user of this package is to use default API keys which
are provided using this method.

2. Alternatively, you can register your own application via the web in order to get Client ID
and Client Secret code.

For that go first to \url{https://app.bitly.com/settings/integrations/}. Click \code{REGISTERED OAUTH APPLICATIONS},
then \code{REGISTER NEW APPLICATION} followed by \code{GET REGISTRATION CODE}.
Open your email that you will receive and click \code{COMPLETE REGISTRATION}.
Make up an \code{APPLICATION NAME} that is unique. Unless you know to do otherwise,
type "http://localhost:1410/" (slash at the end is important) in \code{REDIRECT URIs}. For
\code{APPLICATION LINK} and \code{APPLICATION DESCRIPTION} you can type whatever you like.
}
\section{However Important Information}{

Before choosing registering new application yourself, you can try using my API keys (the default option). No
worries, no information is exposed to me at all: neither what you shorten nor who does it, etc.
In fact, quote: "If you are shortening URLs on behalf of end-users, we ask that you use our OAuth 2
implementation to authenticate end-users before shortening. URLs shortened in this manner
will be added to the specified end-user's history, allowing the end-user to manage and
track the shortened URLs".
}

\section{WARNING}{

If using RStudio in the browsers via RStudio Server, then authentication may not work well. In
such case, use desktop RStudio application. Look for help at <https://support.rstudio.com/>.
}

\examples{
\dontrun{
# overwrite keys - Variant 2
bitly_token <-
  bitly_auth(
    key = "be03aead58f23bc1aee6e1d7b7a1d99d62f0ede8",
    secret = "f9c6a3b18968e991e35f466e90c7d883cc176073"
  )

# default variant
bitly_token <- bitly_auth()
saveRDS(bitly_token, "bitly_token.rds")
# for non-interactive use:
bitly_auth(token = "bitly_token.rds")
}

}
\seealso{
See \url{https://dev.bitly.com/api-reference}
}
