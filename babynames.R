library(tidyverse)

babynames <- read.csv("data/CA.TXT", header = FALSE)
colnames(babynames) <- c("state", "gender", "year", "firstname", "count")
head(babynames)
juliens <- babynames%>%
  filter(firstname == "Julien")

famousJuliens <- max(juliens$count)

best_julien <- juliens %>% 
  filter (count == famousJuliens) %>%
  select(year) %>% pull()
best_julien

juliens[juliens$year > 2010,]
