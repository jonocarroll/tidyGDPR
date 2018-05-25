#' Download the latest GDPR text
#'
#' Use this to obtain a (potentially updated) GDPR regulation text.
#'
#' @md
#' @return the latest GDPR regulation text as a list. See `?`[GDPR_list] for a more
#'   detailed description of the returned object.
#' @import tibble
#' @importFrom jsonlite fromJSON
#' @export
#'
#' @source \url{http://openscience.adaptcentre.ie/projects/GDPRtEXT/} Made
#'   available under the
#'   [CC-by-4.0](https://creativecommons.org/licenses/by/4.0/) license
get_GDPR <- function() {
  GDPR_json <- "http://purl.org/adaptcentre/openscience/resources/GDPRtEXT/gdpr.json"
  res <- jsonlite::fromJSON(GDPR_json)

  GDPR_recitals <- tibble::as_tibble(res$recitals)

  GDPR_chapters <- tibble::tibble(number = res$chapters$number,
                                  title = res$chapters$title,
                                  type = res$chapters$type,
                                  contents = res$chapters$contents)

  n_citations <- length(res$citations)
  get_from_citations <- function(n, val) {
    sapply(n, function(x) res[["citations"]][[x]][[val]])
  }
  GDPR_citations <- tibble::tibble(number = get_from_citations(seq_len(n_citations), "number"),
                                   text = get_from_citations(seq_len(n_citations), "text"),
                                   type = get_from_citations(seq_len(n_citations), "type"))

  class(GDPR_recitals) <- c("GDPR", class(GDPR_recitals))
  class(GDPR_chapters) <- c("GDPR", class(GDPR_chapters))
  class(GDPR_citations) <- c("GDPR", class(GDPR_citations))

  for (a in c("title", "abbrv", "regulation",
              "dated", "updated", "about",
              "identifier", "language")) {
    attr(GDPR_recitals, a) <- res[[a]]
    attr(GDPR_chapters, a) <- res[[a]]
    attr(GDPR_citations, a) <- res[[a]]
  }

  return(list(res, GDPR_recitals, GDPR_chapters, GDPR_citations))

}


