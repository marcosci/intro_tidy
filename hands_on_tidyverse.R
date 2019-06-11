# Hands-on tidyverse

### Generell: Versucht die Pipe hier konstant zu nutzen, einfach um ein Gefühl dafür zu bekommen
### ?function zeigt euch immer die Hilfe
### In RStudio gibt es in dem Reiter Hilfe sehr nützliche Cheatsheets zu den meisten tidyverse Paketen

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

## Aufgabe: nutzt readr um einen der folgenden Datensatz einzulesen:
iris_url <- "https://raw.github.com/vincentarelbundock/Rdatasets/master/csv/datasets/iris.csv"	
got_url <- "https://github.com/chrisalbon/war_of_the_five_kings_dataset/blob/master/5kings_battles_v1.csv"
starwars_url <- "https://github.com/fivethirtyeight/data/blob/master/star-wars-survey/StarWars.csv"
soccer_url <- "https://projects.fivethirtyeight.com/soccer-api/club/spi_matches.csv"

# Einen Blick auf die Daten kann man mit View(datensatz) werfen.

## Aufgabe: ... und einmal in P zu schreiben

#### Ab hier bitte mitdenken: Wenn ein anderer Datensatz als iris benutzt wird,
#### einfach ein passendes Beispiel fuer den eigenen Datensatz finden.
#### Sprich, wenn etwa nach 2 Bedingungen im iris Datensatz gefiltert werden soll,
#### 2 Bedigungen finden, die dem eigenen Datensatz entsprechen.

# 4. tidyr ---
## Den iris Datensatz einmal von long to wide und wieder zurück transformieren
## Gerne auch mit der pipe, um ein wenig in Übung zu kommen
spread(...)
gather(...)

# 5. dplyr ----

## 5.1 select ----

### Aufgabe: Mit den select Hilfsverben vertraut machen (?select_helpers)
### Aufgabe: mit pipen 3 relevante Spalten selektieren und abspeichern

## 5.2 filter ----

###  Aufgabe: Alle Pflanzen mit einer Sepal.Width über 6 filtern
###  Aufgabe: Nur Pflanzen der Art virginica mit einer Sepal.Width über 6 filtern

## 5.3 mutate ----

### Aufgabe: neue Spalte mit dem Mittelwert von Sepal.Width + Petal.Length 
###  hinzufügen

## 5.3 arrange ----

### Aufgabe: Datensatz einmal aufsteigend und Absteigend nach Petal.Length und 
###  Species sortieren

## 5.3 summarize und group_by ----

### Aufgabe: Einmal den Mittelwert und Standardabweichung fuer Petal.Width pro 
###  Art berechnen und die Anzahl der Beobachtungen angeben lassen
### Aufgabe (fortgeschritten): Die mit mutate hinzugefuegte Spalte in 5 Gruppen 
###  unterteilen (z.b. cut oder classInt::classIntervals) und fuer diese Gruppe 
###  Mittelwert, Standardabweichung und n berechnen

# 6. ggplot2 ----

### Aufgabe: Egal welchen Datensatz ihr ausgewählt habt, 
###  ... verschiedene geoms ausprobieren
###  ... mal nach colorscales suchen (Tipp: viridis package)
###  ... Plot einmal rausschreiben (ggsave() - falls der Plot weiter bearbeitet
###      mit z.B. Inkscape auch als svg rausschreiben)
###  ... Das Paket patchwork runterladen und mehrer Plots kombinieren
###  ... Falls noch Zeit ist: gganimate anschauen, oft bei wissenschaftlichen
###      super sinnvoll zur Kommunikation

# Optional: 7. purrr ----

### Aufgabe: Apply/For Schleifen aus den vorhergenden Skripts einmal austauschen mit map()