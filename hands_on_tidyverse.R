# Hands-on tidyverse

# install.packages("tidyverse")
library(tidyverse)

# 1. tibbles ----
iris$Sepal.Length
as_tibble(iris)$Sepal.Length

iris[, 1]
as_tibble(iris)[, 1]

print(iris)
print(as_tibble(iris))

# 2. pipes (einmal Strg+Umschalt+M drücken) ----

## Base R
cos(sin(pi))

## Mit pipe 
pi %>% sin %>% cos  

# 3. readr ----

## Aufgabe: nutzt readr um folgenden Datensatz einzulesen
iris_url <- "https://raw.github.com/vincentarelbundock/Rdatasets/master/csv/datasets/iris.csv"	

## Aufgabe: ... und einmal in P zu schreiben

# 4. tidyr
## Den iris Datensatz einmal von long to wide und wieder zurück transformieren
## Gerne auch mit der pipe, um ein wenig in Übung zu kommen
spread(...)
gather(...)

# 4. dplyr

## select

### select Hilfsverben
select(iris, Sepal.Width:Species)
select(iris, -c(Sepal.Width, Species))
select(iris, starts_with("S"))
select(iris, ends_with("s"))
select(iris, contains("d"))
select(iris, matches("^.{4}$"))
select(iris, one_of(c("Species", "Sepal.Width")))

### Aufgabe: mit pipen 3 relevante Spalten selektieren und abspeichern