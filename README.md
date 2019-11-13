
ggiteam
=======

Overview
--------

Want to make your plots in R look like the Baltimore innovation team's? Look no further! These functions will spruce up your plots, make them clear and legible, and give them a bit of Baltimore charm in one go.

Based on data visualization principles put forth by [Edward Tufte](https://www.edwardtufte.com/tufte/) (e.g. getting rid of chart junk, maximizing the ratio of information to ink, etc.) and incorporating Baltimore, Maryland thematic colors, your data viz can bear the brand of the City of Baltimore Mayor's Office of Innovation.

Installation
------------

``` r
# You'll first need to install devtools if you don't already have it
# so that you can install a package from Github rather than CRAN.
# install.packages("devtools")
# library(devtools)
# install_github("city-of-baltimore/ggiteam")
```

Usage
-----

This package is for use with ggplot2, a data graphics package that is part of Hadley Wickham's [tidyverse](https://www.tidyverse.org/). If you haven't used it before, check out chapter 3 on data visualization of his excellent online book [R for Data Science](http://r4ds.had.co.nz/data-visualisation.html).

``` r
library(tidyverse)
```

    ## -- Attaching packages ---------------------------------------------- tidyverse 1.2.1 --

    ## v ggplot2 2.2.1.9000     v purrr   0.2.4     
    ## v tibble  1.4.2          v dplyr   0.7.4     
    ## v tidyr   0.8.0          v stringr 1.3.0     
    ## v readr   1.1.1          v forcats 0.3.0

    ## -- Conflicts ------------------------------------------------- tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
library(ggiteam)

mtcars %>%
  ggplot(aes(wt, mpg, color = factor(cyl))) +
  geom_point(size = 3) +
  theme_iteam_presentations() +
  scale_color_discrete_iteam()
```

![](README_files/figure-markdown_github/unnamed-chunk-2-1.png)
