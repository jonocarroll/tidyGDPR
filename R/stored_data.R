#' GDPR Regulations Recitals as a list
#'
#' The GDPR full regulations stored as a list, converted from raw JSON via
#' [fromJSON].
#'
#' @md
#' @source \url{http://openscience.adaptcentre.ie/projects/GDPRtEXT/} Made
#'   available under the
#'   [CC-by-4.0](https://creativecommons.org/licenses/by/4.0/) license
# "GDPR_list"

#' GDPR Regulations Recitals as a Tidy Object
#'
#' The GDPR regulations recitals stored as a [tibble].
#'
#' @md
#' @format A [tibble] with 173 rows and 3 variables:
#' \describe{
#'   \item{number}{Recital number}
#'   \item{text}{Recital text}
#'   \item{type}{"citation"}
#' }
#'
#' @source \url{http://openscience.adaptcentre.ie/projects/GDPRtEXT/} Made
#'   available under the
#'   [CC-by-4.0](https://creativecommons.org/licenses/by/4.0/) license
"GDPR_recitals"


#' GDPR Regulations Chapters as a Tidy Object
#'
#' The GDPR regulations chapters stored as a (nested) [tibble].
#'
#' @md
#' @format A [tibble] with 11 rows and 4 variables:
#' \describe{
#'   \item{number}{Chapter number (Roman Numerals)}
#'   \item{title}{Chapter title}
#'   \item{type}{"chapter"}
#'   \item{contents}{A [data.frame] of additional nested contents,
#'    from articles down to subpoints}
#' }
#'
#' The `contents` column [data.frame] is a nested object, itself containing a
#' `number`, `title`, `type`, and `contents` column, corresponding to article
#' numbers. That `contents` column contains further nested [data.frame]s of
#' points and subpoints, which have not been de-nested.
#'
#' The top-level article texts are found in
#'
#' `GDPR_chapters$contents[[chapter]]$contents[[article]]$text`
#'
#' which returns some number of points. See [extract_points] for a more
#' accessible method.
#'
#' @source \url{http://openscience.adaptcentre.ie/projects/GDPRtEXT/} Made
#'   available under the
#'   [CC-by-4.0](https://creativecommons.org/licenses/by/4.0/) license
"GDPR_chapters"

#' GDPR Regulations Citations as a Tidy Object
#'
#' The GDPR regulations citations stored as a [tibble].
#'
#' @md
#' @format A [tibble] with 21 rows and 3 variables:
#' \describe{
#'   \item{number}{Citation number}
#'   \item{text}{Citation text}
#'   \item{type}{"citation"}
#' }
#'
#' @source \url{http://openscience.adaptcentre.ie/projects/GDPRtEXT/} Made
#'   available under the
#'   [CC-by-4.0](https://creativecommons.org/licenses/by/4.0/) license
"GDPR_citations"
