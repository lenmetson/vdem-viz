library(here)
library(tidyverse)


data <- readRDS(here("data", "Country_Year_V-Dem_Core_R_v12", "V-Dem-CY-Core-v12.rds"))

brazil <- data %>% filter(country_text_id == "BRA")

plot_br_partidem <- ggplot(data = brazil, aes(x=year, y=v2x_partipdem)) +
  ggtitle("Expert ratings of Participatory Democracy in Brazil") +
  geom_line() +
  theme_bw()

plot_br_partidem

plot_br_libdem <- ggplot(data = brazil, aes(x=year, y=v2x_libdem)) +
  ggtitle("Expert ratings of Liberal Democracy in Brazil") +
  geom_vline(xintercept = 2018, color = "Red") +
  geom_vline(xintercept = 2016, color = "Red") +
  geom_line() + theme_bw()

plot_br_libdem
