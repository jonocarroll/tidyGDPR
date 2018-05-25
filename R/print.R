#' @export
print.GDPR <- function(x, ...) {
  cat(attr(x, "title"), "(", attr(x, "abbrv"), attr(x, "regulation"), ")\n")
  cat("Dated:", attr(x, "dated"), ", Updated:", attr(x, "dated"), "\n")
  NextMethod()
}
