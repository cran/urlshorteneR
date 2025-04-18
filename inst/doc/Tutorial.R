## -----------------------------------------------------------------------------
library("knitr")
library(urlshorteneR)

if (interactive()) {
  bitly_bearerToken("access token")
  ui <- bitly_user_info(showRequestURL = TRUE)
  is_bitly_user_premium_holder()
}

## -----------------------------------------------------------------------------
if (interactive()) {
  bitly_update_user(name = "John Malc", showRequestURL = TRUE)
}

## -----------------------------------------------------------------------------
if (interactive()) {
  bitly_bearerToken("access token")
  bitly_app_details()
}

## -----------------------------------------------------------------------------
if (interactive()) {
  bitly_bearerToken("access token")
  bitly_retrieve_group(ui$default_group_guid)
  bitly_retrieve_groups()
}

## -----------------------------------------------------------------------------
if (interactive()) {
  bitly_bearerToken("access token")
  bitly_user_info()
}

## -----------------------------------------------------------------------------
bitly_bearerToken("access token")
if (interactive()) {
  df <- data.frame(
    pubDate = rep("2016-02-10", 4),
    link = c(
      "https://www.google.com",
      "https://www.apple.com"
    )
  )
  df

  fin <- NULL
  for (p in 1:length(df$link)) {
    fin[[p]] <- bitly_create_bitlink(long_url = df$link[p])
  }
}

## -----------------------------------------------------------------------------
if (interactive()) {
  isgd_LinksShorten(longUrl = "https://www.google.com", showRequestURL = TRUE)
}

## -----------------------------------------------------------------------------
if (interactive()) {
  vgd_LinksShorten(longUrl = "https://www.apple.com", showRequestURL = TRUE)
}

