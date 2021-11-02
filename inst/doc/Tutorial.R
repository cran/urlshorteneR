## -----------------------------------------------------------------------------
library("knitr")
library(urlshorteneR)

if(interactive()) {
  opts_knit$set(root.dir = "~/Documents/Documents2/R-package-urlshortener")
  bitly_token <- readRDS("tests/bitly_local_token.rds")

# You can register a new pair of keys yourself - but you can also use mine - an option which is also by default
# bitly_token <- bitly_auth(key = "be03aead58f23bc1aee6e1d7b7a1d99d62f0ede8", secret = "f9c6a3b18968e991e35f466e90c7d883cc176073")
# bitly_token <- bitly_auth()

  ui <- bitly_user_info(showRequestURL = TRUE)
  is_bitly_user_premium_holder()
}

## -----------------------------------------------------------------------------
if (interactive()) {
bitly_update_user(name = "John Malc", showRequestURL = TRUE)
}

## -----------------------------------------------------------------------------
if (interactive()) {
bitly_app_details()
}

## -----------------------------------------------------------------------------
if (interactive()) {

bitly_retrieve_group(ui$default_group_guid)
bitly_retrieve_groups()
}

## -----------------------------------------------------------------------------
if (interactive()) {
bitly_user_info()
}

## -----------------------------------------------------------------------------
if (interactive()) {
  df <- data.frame(pubDate = rep("2016-02-10", 4),
                   link = c("http://wwaaw.opencasdoesione.gov.it/progetti/1misepac01_000443/",
                            "http://wwssw.opencasdoesione.gov.it/progetti/1misepac01_000031/"),
                   stringsAsFactors = FALSE)
  df
  
  fin = NULL
  for (p in 1:length(df$link)) {
    fin[[p]] <- bitly_create_bitlink(long_url = df$link[p])
  }
}

## -----------------------------------------------------------------------------
isgd_LinksShorten(longUrl = "https://us.cnn.com/", showRequestURL = TRUE)

## -----------------------------------------------------------------------------
vgd_LinksShorten(longUrl = "https://www.cbs.com/", showRequestURL = TRUE)

