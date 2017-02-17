---
title: 'Mini-projecto: Fandango - Classificação de Filmes '
subtitle: Reproduzir um dos gráficos
output: html_document
---

***

**Objetivo do exercício:** Usar ggplot2 para produzir uma ou mais visualizações de dados

**Dicas**

1. Os passos que se seguem servem para descarregar a base de dados e os pacotes necessários para fazer o exercício. 
2. Para funcionar basta carregar no botão ">" de cada "chunk". O código correrá apenas dentro de cada "chunk" por se tratar de um documento rMarkdown.

***

**Leitura da base de dados:** Para abrir esta base de dados é preciso instalar o pacote `fivethirtyeight`

```{r, echo = FALSE}
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

***

#### Consultar a ajuda do R-Studio para saber mais sobre as variáveis da base de dados

```{r}
# ajuda do R-Studio
help(fandango)
```

```{r}
# Ver os primeiros registos 
head(fandango)
```

```{r, echo = FALSE, eval = FALSE}
# Estrutura dos dados
str(fandango)
```

Alteração da configuração da base de dados para poder reproduzir o gráfico em baixo:
```{r, echo = FALSE}
library(tidyverse)
fandango2 <- fandango %>% 
        filter(year == "2015") %>% #seleccionar só dados de 2015
        select(film, fandango_stars, rt_user_norm_round, metacritic_user_nom, 
               imdb_norm) %>% #escolher as variáveis de interesse
        gather("critic_id", "stars", 2:5) #agregar as variáveis em duas novas variáves 

# Visualizar a nova base de dados 
head(fandango2)
```

#### Usar comandos de ggplot2 disponíveis na documentação do workshop para reproduzir o gráfico. 

**Fandango_Exercicio 1**

Dicas para reproduzir o gráfico da imagem:

* Usar a base de dados com o nome `fandango2`
* Variáveis: estão identificadas nos eixos e uma serve para colorir o gráfico
* Rever os exemplos usados neste workshop com `geom_density()`
* Utilizar a internet para procurar ajuda
* Para o design do gráfico foi usado `theme_fivethirtyeight()`

```{r}
# completar o código...
g <- ggplot()
g
```

**Fandango_Exercicio 2**

Dicas para reproduzir o gráfico da imagem:

* Usar a base de dados com o nome `fandango2`
* Variáveis: estão identificadas nos eixos e uma serve para colorir o gráfico
* Rever os exemplos usados neste workshop com `geom_boxplot()`
* Utilizar a ajuda do R-Studio ou da internet 

```{r}
# completar o código...
p <- ggplot() 
p
```

