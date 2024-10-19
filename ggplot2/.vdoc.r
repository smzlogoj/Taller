#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| echo: true
#| output-location: fragment
library('ggplot2')
#
#
#
#
#
#
#| echo: true
#| output-location: fragment
library('ggplot2')
df <- diamonds
summary(df)
```
#
#
#
#
#| echo: true
#| output-location: fragment

ggplot(df, aes(x = carat, y = price)) +
    geom_point()
```
#
#
#
#
#| echo: true
#| output-location: fragment

ggplot(df, aes(x = carat, y = price)) +
    geom_point(color = 'steelblue') +
    theme_bw()
```
#
#
#
#
#| echo: true
#| output-location: fragment

ggplot(df, aes(x = carat, y = price)) +
    geom_point(aes(color = cut)) +
    theme_bw() +
    theme(legend.position = 'top')
```
#
#
#
#| echo: true
#| output-location: fragment

ggplot(df, aes(x = carat, y = price)) +
    geom_point(aes(color = cut)) +
    theme_bw() +
    theme(legend.position = 'top') +
    facet_wrap(~ cut)
#
#
#
#
#
#| echo: true
#| output-location: fragment

ggplot(df, aes(x = cut, y = price)) +
    geom_boxplot(color = 'navy') +
    theme_bw()
```
#
#
#
#| echo: true
#| output-location: fragment

ggplot(df, aes(x = cut, y = price)) +
    geom_boxplot(aes(fill = cut), color = 'navy') +
    theme_bw() +
    theme(legend.position = 'top')
```
#
#
#
#| echo: true
#| output-location: fragment

ggplot(df, aes(x = cut, y = price)) +
    geom_boxplot(aes(fill = color), color = 'navy') +
    theme_bw() +
    theme(legend.position = 'top')
```
#
#
#| echo: true
#| output-location: fragment

ggplot(df, aes(x = cut, y = price)) +
    geom_boxplot(aes(fill = color), color = 'navy') +
    theme_bw() +
    theme(legend.position = 'top') +
    facet_wrap(~ color)
#
#
#
