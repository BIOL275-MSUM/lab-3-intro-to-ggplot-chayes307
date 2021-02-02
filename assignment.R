
# load packages -----------------------------------------------------------

library(tidyverse)

# spermatophore data ---------------------------------------------------------------

spermatophore_data <- read_csv("https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q19FireflySpermatophoreMass.csv")

ggplot(data = spermatophore_data)

ggplot(data = spermatophore_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass))
#> `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

ggplot(data = spermatophore_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = 50)

ggplot(data = spermatophore_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = 50,
                 boundary = 0, closed = "left")

ggplot(data = spermatophore_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = 50,
                 boundary = 0, closed = "left")


# Correct histogram -------------------------------------------------------

ggplot(data = spermatophore_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = 50,
                 boundary = 0, closed = "left", 
                 fill = "#C5351B", color = "black") +
  labs(x = "Abundance", y = "Frequency (number of species)") +
  scale_y_continuous(breaks = seq(0, 30, 5), limits = c(0, 30), 
                     expand = expansion(mult = 0)) +
  scale_x_continuous(breaks = seq(0, 600, 100)) +
  theme_classic() +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1))
  )

