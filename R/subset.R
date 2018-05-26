# @todo Extract subpoints too
# @body Extract some/all subpoints and display how many

#' Extract Components of GDPR Chapters/Articles/Points
#'
#' @md
#' @param chapter chapter from which to extract
#' @param article article from which to extract
#' @param points points to extract (default all available)
#'
#' @return Either a vector of article titles or a vector of points.
#' @importFrom utils data
#' @export
#'
#' @examples
#' chapter_components(chapter = 1) # list all articles in chapter (1)
#' chapter_components(chapter = 1, article = 1) # extract all points in (1, 1)
#' chapter_components(chapter = 1, article = 1, points = 2) # extract (1, 1, 2)
chapter_components <- function(chapter = NULL, article = NULL, points = NULL) {

  GDPR_chapters <- NULL
  utils::data("GDPR_chapters", envir = environment())

  if (is.null(chapter)) stop("Must specify at least a chapter")

  if (is.null(article)) return(GDPR_chapters$contents[[chapter]]$title)

  chap_art <- GDPR_chapters$contents[[chapter]]$contents[[article]]$text

  # @todo Count points
  # @body Display the total number of points shown/available
  if (!is.null(points)) {
    return(chap_art[points[points <= length(chap_art)]])
  } else {
    return(chap_art)
  }

}

# @todo Text Search
# @body Add functionality to search entire text for a string and return containing chapter, article, points.
