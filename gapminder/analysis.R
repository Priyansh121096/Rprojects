# 1

library(gapminder)
library(ggplot2)

data("gapminder")

main <- function() {
    # 2    
    head(gapminder, 5)
    tail(gapminder, 5)
    
    # 3
    ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
        geom_point(shape = 16, color = "blue") +
        labs(title = "Scatterplot of GDP per Capita against Life Expectancy",
             x = "GDP per Capita",
             y = "Life Expectancy",
        )
    
    # 4
    ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
        geom_point(shape = 16, color = "blue") +
        labs(title = "Scatterplot of GDP per Capita against Life Expectancy",
             x = "GDP per Capita",
             y = "Life Expectancy",
             ) +
        scale_x_log10()
    
    # 5
    ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, color=factor(continent))) +
        geom_point(shape = 16) +
        labs(title = "Scatterplot of GDP per Capita against Life Expectancy",
             x = "GDP per Capita",
             y = "Life Expectancy",
             color = "Continent", 
             ) +
        scale_x_log10()
    
    # 6
    ggplot(gapminder, aes(x = factor(continent), y = lifeExp, fill = factor(continent))) +
        geom_boxplot() +
        labs(title = "Boxplot of Life Expectancy across Continents",
             x = "Continents",
             y = "Life Expectancy",
             ) +
        theme_minimal()
    
    # 7
    ggplot(gapminder, aes(x = lifeExp, fill = factor(continent))) +
        geom_histogram(binwidth = 2, position = "identity", alpha = 0.7) +
        labs(title = "Histogram of Life Expectancy across Continents",
             x = "Life Expectancy",
             y = "Frequency",
             ) +
        theme_minimal()
    
    # 8
    ggplot(gapminder, aes(x = lifeExp, fill = factor(continent))) +
        geom_density(alpha = 0.7) +
        labs(title = "Density plot of Life Expectancy across Continents",
             x = "Life Expectancy",
             y = "Frequency density",
        ) +
        theme_minimal()
}

main()
