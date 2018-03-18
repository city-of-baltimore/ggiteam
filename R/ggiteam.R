#' Baltimore i-team colors
#' @export
iteam.colors <- c(
  "#EAAB00", # yellow
  "#666666", # med gray
  "#981E32", # maroon
  "#5EB5CB", # blue
  "#0A83A1", # dark blue
  "#f4d57f"  # pale yellow
)

#' Baltimore i-team's ggplot2 colors for discrete aesthetics
#'
#' Works the same as scale_color_discrete for ggplot plots.
#' @examples
#' library(tidyverse)
#' mtcars %>%
#'   ggplot(aes(wt, mpg, color = factor(cyl))) +
#'   geom_point() +
#'   scale_color_discrete_iteam()
#' @export
scale_color_discrete_iteam <- function(){
  structure(list(
    scale_color_manual(values = iteam.colors)
  )
  )

}

#' Baltimore i-team's ggplot2 colors for discrete aesthetics
#'
#' Works the same as scale_fill_discrete for ggplot plots.
#' @examples
#' library(tidyverse)
#' mtcars %>%
#'   ggplot(aes(x = am, y = ..count.., fill = factor(cyl))) +
#'   geom_bar() +
#'   scale_fill_discrete_iteam()
#' @export
scale_fill_discrete_iteam <- function(){
  structure(list(
    scale_fill_manual(values = iteam.colors)
  )
  )

}

#' Baltimore i-team's ggplot2 colors for continuous color aesthetics
#'
#' Works the same as scale_color_continuous for ggplot plots.
#' @examples
#' library(tidyverse)
#' mtcars %>%
#'   ggplot(aes(wt, hp, color = disp)) +
#'   geom_point() +
#'   scale_color_continuous_iteam()
#' @export
scale_color_continuous_iteam <- function(){
  structure(list(
    scale_color_continuous(low = iteam.colors[6], high  = iteam.colors[3])
  ))
}

#' Baltimore i-team's ggplot2 Theme for Google Docs
#'
#' This function will theme a ggplot2 theme for Google Docs using the i-team's
#' colors and design choices. It works the same as any other ggplot2 theme.
#' @examples
#' library(tidyverse)
#' mtcars %>%
#'  ggplot(aes(x = wt, y = mpg, color = disp)) +
#'  geom_point(size = 5) +
#'  theme_iteam_google_docs()
#' @export
theme_iteam_google_docs <- function (){
  theme(
    text = element_text(size = 10, color = "black"),
    title = element_text(size = 10, color = "black"),
    plot.title = element_text(color = "black"),
    axis.ticks = element_line(color = NA),
    panel.background = element_rect(fill = "white", colour = NA),
    panel.border = element_rect(fill = NA, colour = NA),
    panel.grid.major.y = element_line(colour="gray90", size=0.5),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.y = element_blank(),
    strip.background = element_rect(fill = NA, colour = NA, size = 0.2),
    legend.background = element_rect(color="white"),
    legend.box.background = element_rect(color="white"),
    legend.key = element_rect(fill = "white"),
    legend.margin = ggplot2::margin(0, 0, 0, 0),
    legend.box.margin = ggplot2::margin(0, 0, 0, 0),
    plot.margin = ggplot2::margin(10, 10, 10, 10, unit = "pt"),
    axis.title.y = element_text(margin = ggplot2::margin(t = 0, r = 10, b = 0, l = 10)),
    axis.text.x = element_text(margin = ggplot2::margin(0, unit = "pt"))
  )
}


#' Baltimore i-team's ggplot2 Theme for Slide Decks
#'
#' This function will theme a ggplot2 theme for slide decks using the i-team's
#' colors and design choices. It works the same as any other ggplot2 theme.
#' @examples
#' mtcars %>%
#'  ggplot(aes(x = wt, y = mpg, color = disp)) +
#'  geom_point(size = 5) +
#'  theme_iteam_presentations()
#' @export
theme_iteam_presentations <- function (){
  theme(
    text = element_text(size = 16, color = "black"),
    title = element_text(size = 16, color = "black"),
    plot.title = element_text(color = "black"),
    axis.ticks = element_line(color = NA),
    panel.background = element_rect(fill = "white", colour = NA),
    panel.border = element_rect(fill = NA, colour = NA),
    panel.grid.major.y = element_line(colour="gray90", size=0.5),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.y = element_blank(),
    strip.background = element_rect(fill = NA, colour = NA, size = 0.2),
    legend.background = element_rect(color="white"),
    legend.box.background = element_rect(color="white"),
    legend.key = element_rect(fill = "white"),
    legend.margin = ggplot2::margin(0, 0, 0, 0),
    legend.box.margin = ggplot2::margin(0, 0, 0, 0),
    plot.margin = ggplot2::margin(10, 10, 10, 10, unit = "pt"),
    axis.title.y = element_text(margin = ggplot2::margin(t = 0, r = 10, b = 0, l = 10)),
    axis.text.x = element_text(margin = ggplot2::margin(0, unit = "pt"))
  )
}
