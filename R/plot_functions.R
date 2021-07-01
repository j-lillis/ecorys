#' List of Ecorys brand colours
#'
#' Use \code{\link{ecorys_colours}} to access Ecorys brand colours.
#'
#' @examples
#' ecorys_colours$blue
#'
#' @export
ecorys_colours <- list(
  "blue" = "#006EB8",
  "light_blue"=  "#3FA7DF",
  "dark_grey" = "#4c4c4c",
  "grey" = "#c9d4d9",
  "green" = "#2FA26D",
  "jade" = "#0F9EA0",
  "dark_blue" = "#273582",
  "purple" = "#2D285F",
  "magenta" = "#A24090",
  "red" = "#BC2131",
  "orange" = "#EA5437",
  "yellow" = "#F7A72A")

#' List of palettes constructed from Ecorys brand colours
#'
#' Use \code{\link{ecorys_palettes}} to access palettes of Ecorys brand colours.
#'
#' @examples
#' ecorys_palettes$primary
#'
#' @export
ecorys_palettes <- list(
  primary = c("#006EB8", "#3FA7DF", "#4c4c4c", "#c9d4d9"),
  accent = c("#2FA26D", "#0F9EA0", "#273582", "#2D285F", "#A24090", "#BC2131", "#EA5437", "#F7A72A"),
  blue_1 = c("#006EB8", "#3FA7DF", "#0F9EA0","#273582", "#2D285F"),
  blue_2 = c("#006EB8", "#3FA7DF", "#0F9EA0","#273582", "#2D285F", "#A24090")
)

#' Function to return monochrome blue palette of length \emph{n}
#'
#' Use \code{\link{ecorys_mono_pal()}} to create a monochrome blue palette, where you can specify the number of shades.
#'
#' @examples
#' ecorys_mono_pal(4)
#'
#' @export
ecorys_mono_pal <- colorRampPalette(colors = c("#84C2E3",ecorys_colours$light_blue, ecorys_colours$blue, ecorys_colours$dark_blue, "#0E1C69"))

#' Theme to format ggplot2 charts in Ecorys style
#'
#' Use \code{\link{theme_ecorys}} to format ggplot2 plots in the Ecorys style.
#'
#' @param grid.major.x Set to TRUE to display major grid lines for x axis (defaults to FALSE).
#' @param grid.major.y Set to TRUE to display major grid lines for y axis (defaults to FALSE).
#' @param axis.line Set to TRUE to display lines for x and y axis (defaults to FALSE),
#' @param strip.background Set to FALSE to hide facet label backgrounds (defaults to TRUE).
#'
#' @examples
#' example_data <- tibble(x = seq(1,10,1), y = seq(1,10,1))
#'
#' ggplot(data = example_data, aes(x = x, y = y)) +
#' geom_line() +
#' theme_ecorys()
#'
#'
#' @export
theme_ecorys <- function(grid.major.x = FALSE, grid.major.y = FALSE, axis.line = FALSE, strip.background = TRUE) {
  font <- "Open Sans"
  font_bold <- "Open Sans Semibold"
  ggplot2::theme(plot.title = ggplot2::element_text(family = font_bold, size = 18, color = "#222222"),
                 plot.subtitle = ggplot2::element_text(family = font, size = 14, color = "#4c4c4c"),
                 plot.caption = ggplot2::element_blank(),
                 legend.text = ggplot2::element_text(family = font, size = 10, color = "#4c4c4c"),
                 axis.title = ggplot2::element_text(family = font, size = 12, color = "#222222"),
                 legend.title = ggplot2::element_text(family = font, size = 12, color = "#222222"),
                 axis.text = ggplot2::element_text(family = font, size = 10, color = "#4c4c4c"),
                 axis.ticks = ggplot2::element_blank(),
                 panel.grid.major.x = ggplot2::element_line(colour = ifelse(grid.major.x == T, ecorys_colours$grey, alpha("white", 0))),
                 panel.grid.major.y = ggplot2::element_line(colour = ifelse(grid.major.y == T, ecorys_colours$grey, alpha("white", 0))),
                 panel.grid.minor.x = ggplot2::element_blank(),
                 panel.grid.minor.y = ggplot2::element_blank(),
                 axis.line = ggplot2::element_line(colour = ifelse(axis.line == T, ecorys_colours$dark_grey, alpha("white", 0))),
                 panel.background = ggplot2::element_blank(),
                 plot.title.position = "plot",
                 legend.key=element_blank(),
                 strip.background = ggplot2::element_rect(fill = ifelse(strip.background == F, "white", ecorys_colours$grey)),
                 strip.text = ggplot2::element_text(family = font_bold, size = 12, color = "#222222")
  )
}


