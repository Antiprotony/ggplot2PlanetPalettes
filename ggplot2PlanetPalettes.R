# Required library
library(ggplot2)

# Definition of discrete palettes
planet_palettes <- list(
  Mercury = list(
    discrete = c("#9E9E9E", "#6D6D6D", "#A8A8A8", "#CFCFCF", "#E0E0E0"),
    continuous = c("#6D6D6D", "#A8A8A8", "#E0E0E0")
  ),
  Venus = list(
    discrete = c("#E3AA76", "#C97B43", "#9E5525", "#603B16", "#FFD39B"),
    continuous = c("#603B16", "#C97B43", "#FFD39B")
  ),
  Earth = list(
    discrete = c("#2B65EC", "#50C878", "#FFD700", "#C2B280", "#B0E0E6"),
    continuous = c("#2B65EC", "#50C878", "#FFD700")
  ),
  Mars = list(
    discrete = c("#B22222", "#A52A2A", "#8B0000", "#E9967A", "#F4A460"),
    continuous = c("#8B0000", "#E9967A", "#F4A460")
  ),
  Jupiter = list(
    discrete = c("#D2B48C", "#A0522D", "#FFDEAD", "#FFF8DC", "#FFD700"),
    continuous = c("#A0522D", "#D2B48C", "#FFD700")
  ),
  Saturn = list(
    discrete = c("#FFDAB9", "#F4A460", "#D2B48C", "#FFE4B5", "#FFF8DC"),
    continuous = c("#F4A460", "#D2B48C", "#FFF8DC")
  ),
  Uranus = list(
    discrete = c("#AFEEEE", "#48D1CC", "#20B2AA", "#87CEEB", "#B0E0E6"),
    continuous = c("#48D1CC", "#87CEEB", "#B0E0E6")
  ),
  Neptune = list(
    discrete = c("#000080", "#4682B4", "#5F9EA0", "#87CEFA", "#B0C4DE"),
    continuous = c("#000080", "#4682B4", "#87CEFA")
  ),
  Moon = list(
    discrete = c("#DCDCDC", "#A9A9A9", "#808080", "#696969", "#F5F5F5"),
    continuous = c("#A9A9A9", "#808080", "#F5F5F5")
  ),
  Io = list(
    discrete = c("#FFD700", "#FFA500", "#F4A460", "#D2B48C", "#8B4513"),
    continuous = c("#FFD700", "#F4A460", "#8B4513")
  ),
  Europa = list(
    discrete = c("#F4A460", "#FFE4B5", "#D2B48C", "#FFDAB9", "#FFF8DC"),
    continuous = c("#FFE4B5", "#D2B48C", "#FFF8DC")
  ),
  Ganymede = list(
    discrete = c("#8B4513", "#A0522D", "#D2B48C", "#CD853F", "#F5F5DC"),
    continuous = c("#A0522D", "#D2B48C", "#F5F5DC")
  ),
  Callisto = list(
    discrete = c("#808080", "#696969", "#A9A9A9", "#DCDCDC", "#F5F5F5"),
    continuous = c("#696969", "#A9A9A9", "#F5F5F5")
  ),
  Titan = list(
    discrete = c("#F4A460", "#D2B48C", "#FFE4B5", "#FFDAB9", "#FFFACD"),
    continuous = c("#D2B48C", "#FFE4B5", "#FFFACD")
  ),
  Enceladus = list(
    discrete = c("#F5F5F5", "#E0E0E0", "#DCDCDC", "#B0E0E6", "#87CEFA"),
    continuous = c("#DCDCDC", "#B0E0E6", "#87CEFA")
  ),
  Triton = list(
    discrete = c("#4682B4", "#5F9EA0", "#AFEEEE", "#87CEEB", "#B0E0E6"),
    continuous = c("#4682B4", "#87CEEB", "#B0E0E6")
  ),
  Ceres = list(
    discrete = c("#696969", "#808080", "#A9A9A9", "#DCDCDC", "#F5F5F5"),
    continuous = c("#808080", "#A9A9A9", "#F5F5F5")
  ),
  Vesta = list(
    discrete = c("#D2B48C", "#A0522D", "#FFE4B5", "#F5F5DC", "#FFE4C4"),
    continuous = c("#A0522D", "#D2B48C", "#FFE4C4")
  ),
  Pallas = list(
    discrete = c("#A9A9A9", "#DCDCDC", "#808080", "#F5F5F5", "#E0E0E0"),
    continuous = c("#808080", "#DCDCDC", "#F5F5F5")
  )
)

# Function for discrete palettes
scale_color_planet_discrete <- function(planet) {
  if (!planet %in% names(planet_palettes)) {
    stop("Invalid planet name. Choose from: ", paste(names(planet_palettes), collapse = ", "))
  }
  scale_color_manual(values = planet_palettes[[planet]]$discrete)
}

# Function for continuous palettes
scale_color_planet_continuous <- function(planet) {
  if (!planet %in% names(planet_palettes)) {
    stop("Invalid planet name. Choose from: ", paste(names(planet_palettes), collapse = ", "))
  }
  scale_color_gradientn(colors = planet_palettes[[planet]]$continuous)
}

# Function for discrete fill palettes
scale_fill_planet_discrete <- function(planet) {
  if (!planet %in% names(planet_palettes)) {
    stop("Invalid planet name. Choose from: ", paste(names(planet_palettes), collapse = ", "))
  }
  scale_fill_manual(values = planet_palettes[[planet]]$discrete)
}

# Example usage for discrete data
data_discrete <- data.frame(
  x = 1:5,
  y = c(3, 5, 2, 8, 7),
  group = factor(c("A", "B", "C", "D", "E"))
)

ggplot(data_discrete, aes(x, y, color = group)) +
  geom_point(size = 5) +
  scale_color_planet_discrete("Earth") +
  theme_minimal()

# Example usage for continuous data
data_continuous <- data.frame(
  x = 1:100,
  y = rnorm(100),
  z = rnorm(100)
)

ggplot(data_continuous, aes(x, y, color = z)) +
  geom_point(size = 3) +
  scale_color_planet_continuous("Mars") +
  theme_minimal()

