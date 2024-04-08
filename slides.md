---
title: MD Slides
author: Yangyunchen Liu
data: March 29, 2024
bibliography: ./refs/bib.bib

# beamer var
aspectratio: 169
institute: Duke University

# revealjs var
theme: simple
height: 1080
width: 1920
slideNumber: true
scrollable: true
css: theme/duke.css
title-slide-attributes:
    data-background-image: theme/logos/duke.png
    data-background-size: 15%
    data-background-position: 50% 50%
---

# H1 header

## H2 header

### H3 header

#### H4 header

##### H5 header

###### H6 header

# Layout

## Columns

::: columns

:::: {.column width=50%}
* Point 1
* Point 2
* d
::::

:::: {.column width=50%}
![Some picture](https://placehold.co/600x400/png)
::::

:::

# Syntax

## Math blocks {.logo}

\begin{equation}
  \begin{aligned}
  \dot{x} &= \sigma(y-x) \\
  \dot{y} &= \rho x - y - xz \\
  \dot{z} &= -\beta z + xy
  \end{aligned}
\end{equation}


## Code blocks {.logo}

```{.r .scrollable}
#| fig-height: 8
#| fig-align: center
#| fig-cap: A random walk with noise
library(ggplot2)
theme_set(theme_classic(base_size = 25))
library(latex2exp)
library(patchwork)
set.seed(42)
Y0 <- 10
wt <- rnorm(100, sd = 1)
vt <- rnorm(100, sd = 3)
dat <- data.frame(
  t = 1:100,
  Y = Y0 + cumsum(wt) + vt,
  vt = vt,
  wt = wt
)
p1 <- dat |>
  ggplot(aes(t,Y)) +
    geom_line() +
    geom_line(aes(y=Y0+cumsum(wt)), lty=1, color='darkgreen') +
    labs(y=TeX('$Y_t$')) +
    theme(axis.title.x.bottom = element_blank())
p2 <- dat |>
  ggplot(aes(t,vt)) +
    geom_point(color='red', size=.5) +
    geom_linerange(aes(ymin=0,ymax=vt), color='red') +
    geom_hline(yintercept = 0, alpha=.5) +
    labs(y=TeX('$v_t$')) +
    theme(axis.title.x.bottom = element_blank())
p3 <- dat |>
  ggplot(aes(t,wt)) +
    geom_segment(aes(x=t,xend=t,y=0,yend=wt), color='darkgreen',
                  arrow = arrow(length = unit(0.2, "cm"))) +
    geom_hline(yintercept = 0, alpha=.5) +
    labs(y=TeX('$w_t$'))
p1/p2/p3
```

## Citation

Here is a reference paper [@gardiner2015discrete], and another [@van2010particlebased]

## Reference

