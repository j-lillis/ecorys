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

ecorys_palettes <- list(
  primary = c("#006EB8", "#3FA7DF", "#4c4c4c", "#c9d4d9"),
  accent = c("#2FA26D", "#0F9EA0", "#273582", "#2D285F", "#A24090", "#BC2131", "#EA5437", "#F7A72A"),
  blue_1 = c("#006EB8", "#3FA7DF", "#0F9EA0","#273582", "#2D285F"),
  blue_2 = c("#006EB8", "#3FA7DF", "#0F9EA0","#273582", "#2D285F", "#A24090")
)


theme_ecorys <- function(){
  font <- "Open Sans"
  ggplot2::theme(plot.title = ggplot2::element_text(family = font, size = 18, color = "#222222"),
                 plot.subtitle = ggplot2::element_text(family = font, size = 14, color = "#4c4c4c"),
                 plot.caption = ggplot2::element_blank(),
                 legend.text = ggplot2::element_text(family = font, size = 10, color = "#4c4c4c"),
                 axis.title = ggplot2::element_text(family = font, size = 12, color = "#222222"),
                 axis.text = ggplot2::element_text(family = font, size = 10, color = "#4c4c4c"),
                 axis.ticks = ggplot2::element_blank(), #optional tick marks
                 #axis.line = element_line(colour = ecorys_dark_grey), #optional axis lines
                 panel.grid.major.y = ggplot2::element_line(colour = ecorys_grey), #optional gridlines
                 panel.background = ggplot2::element_blank(),
                 plot.title.position = "plot",
                 #strip.background = ggplot2::element_rect(fill = "white"),  # alternative background for facets
  )
}


