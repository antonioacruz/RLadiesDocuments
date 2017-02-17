---
title: "Mini-projecto: Fandango - Classificação de Filmes "
subtitle: "Reproduzir um dos gráficos"
output: html_document
---

***

**Objetivo do exercício:** Usar ggplot2 para produzir uma ou mais visualizações de dados

**Instruções**:

1. Fazer o download do documento `fandango.Rmd`, copiá-lo para uma pasta no desktop e abrir no RStudio.
2. Consultar a ajuda do R-Studio para saber mais sobre as variáveis da base de dados
3. Usar comandos de ggplot2 disponíveis na documentação do workshop para reproduzir o gráfico.

#### Fandango_Exercício 1
```{r, echo = FALSE, message = FALSE}
# Instalar package fivethirthyeight caso ainda não tenha sido instalado
if("fivethirtyeight" %in% rownames(installed.packages()) == FALSE) {install.packages("fivethirtyeight")}
# Instalar package ggplot2 
if("ggplot2" %in% rownames(installed.packages()) == FALSE) {install.packages("ggplot2")}
# Instalar package tidyverse 
if("tidyverse" %in% rownames(installed.packages()) == FALSE) {install.packages("tidyverse")}
# Instalar package ggthemes 
if("ggthemes" %in% rownames(installed.packages()) == FALSE) {install.packages("ggthemes")}
```

```{r, echo = FALSE, message = FALSE}
# Load packages
library(fivethirtyeight)
library(ggplot2)
library(ggthemes)
library(tidyverse)
```

```{r, echo = FALSE}
library(tidyverse)
fandango2 <- fandango %>% 
        filter(year == "2015") %>% #seleccionar só dados de 2015
        select(film, fandango_stars, rt_user_norm_round, metacritic_user_nom, 
               imdb_norm) %>% #escolher as variáveis de interesse
        gather("critic_id", "stars", 2:5) #agregar as variáveis em duas novas variáves 
```

```{r, echo = FALSE}
g <- ggplot(data = fandango2, aes(x = stars, fill = critic_id)) + geom_density(alpha = 0.5) + labs(title = "Classificação de filmes por plataforma", subtitle = "Distribuição da classificação de 146 filmes com +30 críticas no site Fandango.com") + theme_fivethirtyeight()
#png(file = "opção1_fandango.png")
g
#dev.off()
```

Dicas para reproduzir o gráfico da imagem:

* Usar a base de dados com o nome `fandango2`
* Variáveis: estão identificadas nos eixos e uma serve para colorir o gráfico
* Rever os exemplos usados neste workshop com `geom_density()`
* Utilizar a internet para procurar ajuda
* Para o design do gráfico foi usado `theme_fivethirtyeight()`

***

#### Fandango_Exercício 2
```{r, echo = FALSE}
p <- ggplot(data = fandango2, aes(x = critic_id, y = stars, fill = critic_id)) + geom_boxplot() + labs(title = "Classificação de filmes por diferentes plataformas", subtitle = "Summary Statistics", x = "sites/plataformas", y = "n.º estrelas/rating")
#png(file = "opção2_fandango.png")
p
#dev.off()
```

Dicas para reproduzir o gráfico da imagem:

* Usar a base de dados com o nome `fandango2`
* Variáveis: estão identificadas nos eixos e uma serve para colorir o gráfico
* Rever os exemplos usados neste workshop com `geom_boxplot()`
* Utilizar a ajuda do R-Studio ou da internet 
