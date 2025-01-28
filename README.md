# ggplot2PlanetPalettes

## Introduction
`ggplot2PlanetPalettes` is an R package that provides color palettes inspired by the planets, moons, and asteroids of our Solar System. These palettes are designed for use with `ggplot2`, supporting both discrete and continuous scales.

## Installation
You can install `ggplot2PlanetPalettes` directly from GitHub using the `remotes` package:

```r
install.packages("remotes")
remotes::install_github("Antiprotony/ggplot2PlanetPalettes")
```

## Usage

Load the library after installation:

```r
library(ggplot2PlanetPalettes)
```

### Discrete Color Palettes
Use `scale_color_planet_discrete()` for categorical variables.

```r
ggplot(data_discrete, aes(x, y, color = group)) +
  geom_point(size = 5) +
  scale_color_planet_discrete("Earth") +
  theme_minimal()
```

### Continuous Color Palettes
Use `scale_color_planet_continuous()` for continuous data.

```r
ggplot(data_continuous, aes(x, y, color = z)) +
  geom_point(size = 3) +
  scale_color_planet_continuous("Mars") +
  theme_minimal()
```

## Available Palettes
The following celestial bodies are supported:
- **Planets**: Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
- **Moons**: Moon, Io, Europa, Ganymede, Callisto, Titan, Enceladus, Triton
- **Asteroids**: Ceres, Vesta, Pallas

## License
This package is licensed under the MIT License.

## Contributions
Contributions are welcome! Feel free to open an issue or submit a pull request on [GitHub](https://github.com/Antiprotony/ggplot2PlanetPalettes).

## Acknowledgments
Inspired by the beauty of our Solar System and the power of ggplot2.

## Citation
If you use "ggplot2PlanetPalettes" in your work, please cite it as: 
Luca Tonietti. (2025). ggplot2PlanetPalettes (Version 1.0.0)  [R package] Zenodo. https://doi.org/10.5281/zenodo.14755864
