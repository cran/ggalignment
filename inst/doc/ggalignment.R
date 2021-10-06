## ----setup, include = FALSE, echo = FALSE-------------------------------------

knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  dpi = 300,
  fig.width = 1.8,
  fig.height = 1.8
)

## ----example-alignment-plot, warning = FALSE, message = FALSE-----------------
library(ggalignment)
library(dplyr)

ggalignment(alignment = data.frame(img = character(),
                                   alignment = character()),
            font_size = 3)

## ----example-plotting-data----------------------------------------------------
align_cats <- example_cats()

## ----example-alignment-plot-with-data-----------------------------------------
ggalignment(align_cats, font_size = 3)

## ----example-plot-with-rect---------------------------------------------------
cats_rect <-
  align_cats %>%
  mutate(img = c(align_cats$img[1:3],
                 system.file("img/gray_2.png", package = "ggalignment")))

ggalignment(alignment = cats_rect, font_size = 3)

## ----example-plot-with-coord--------------------------------------------------
cats_with_coords <-
  align_cats %>%
  mutate(x = c(0.5, -0.5, -0.5, 0.5),
                y = c(-0.5, -0.5, 0.5, 0.5))

ggalignment(alignment = cats_with_coords, font_size = 3)

## ----multi-plot-example-------------------------------------------------------
cats_with_multi_image <-
  align_cats %>%
  mutate(alignment = rep("chaotic neutral")) %>%
  mutate(x = c(0.5, -0.5, -0.5, 0.5),
                y = c(-0.5, -0.5, 0.5, 0.5))

ggalignment(alignment = cats_with_multi_image,
            font_size = 3)

## ----image-size-1-example-----------------------------------------------------
ggalignment(alignment = align_cats, 
            font_size = 3,
            max_images_per_dim = 1)

## ----image-size-2-example-----------------------------------------------------
ggalignment(alignment = align_cats, 
            font_size = 3,
            max_images_per_dim = 2)

## ----image-size-4-example-----------------------------------------------------
ggalignment(alignment = align_cats, 
            font_size = 3,
            max_images_per_dim = 4)

## ----change-chart-color-------------------------------------------------------
ggalignment(alignment = align_cats,
            line_type = "dotted",
            line_color = "seagreen1",
            background_color = "turquoise4",
            font_color = "skyblue1",
            font_size = 3)

## ----local-file-example-------------------------------------------------------
local_example <-
  data.frame(img = c("r_logo.png",
                     "obie_portrait.png"),
             alignment = c("lawful good",
                           "chaotic neutral"))

ggalignment(local_example,
            font_size = 3)

## ----url-example--------------------------------------------------------------
url_example <-
  data.frame(img = c("https://www.r-project.org/Rlogo.png",
                     "https://avatars.githubusercontent.com/u/18043377?v=4"),
             alignment = c("lawful good",
                           "chaotic neutral"))

ggalignment(url_example,
            font_size = 3)

