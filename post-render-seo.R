#!/usr/bin/env Rscript
# Post-render SEO pass for the Vietnamese edition.
#
# Quarto emits neither a canonical link nor hreflang alternates, and this book
# is a page-for-page translation of tidy_finance_vn (identical file names), so
# without hreflang the two editions compete with each other in search instead of
# being served to the right audience. Run automatically via the
# `project: post-render:` key in _quarto.yml, and safe to re-run by hand:
#   Rscript post-render-seo.R

SELF  <- "https://mikenguyen13.github.io/tidy_finance_vn_vi/"
OTHER <- "https://mikenguyen13.github.io/tidy_finance_vn/"
SELF_LANG  <- "vi"
OTHER_LANG <- "en"
XDEFAULT   <- OTHER # English edition is the default for unmatched locales
OUT <- "docs"

page_url <- function(base, file) {
  if (identical(file, "index.html")) base else paste0(base, file)
}

files <- list.files(OUT, pattern = "\\.html$", full.names = TRUE)
changed <- 0L

for (f in files) {
  html <- paste(readLines(f, warn = FALSE, encoding = "UTF-8"), collapse = "\n")
  if (!grepl("</head>", html, fixed = TRUE)) next

  file <- basename(f)
  self_url  <- page_url(SELF, file)
  other_url <- page_url(OTHER, file)

  # Only pair pages that actually exist in both editions.
  tags <- sprintf('<link rel="canonical" href="%s">', self_url)
  if (file %in% basename(files)) {
    tags <- c(
      tags,
      sprintf('<link rel="alternate" hreflang="%s" href="%s">', SELF_LANG, self_url),
      sprintf('<link rel="alternate" hreflang="%s" href="%s">', OTHER_LANG, other_url),
      sprintf('<link rel="alternate" hreflang="x-default" href="%s">',
              page_url(XDEFAULT, file))
    )
  }
  block <- paste0(paste(tags, collapse = "\n"), "\n")

  # Idempotent: strip any block we wrote before, then re-insert.
  html <- gsub('<link rel="canonical"[^>]*>\n?', "", html)
  html <- gsub('<link rel="alternate" hreflang="[^"]*"[^>]*>\n?', "", html)
  html <- sub("</head>", paste0(block, "</head>"), html, fixed = TRUE)

  writeLines(html, f, useBytes = TRUE)
  changed <- changed + 1L
}

cat(sprintf("post-render-seo: canonical + hreflang written to %d pages\n", changed))
