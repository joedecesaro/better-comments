library(tidyverse)

babynames <- read.csv("data/CA.TXT", header = FALSE)
colnames(babynames) <- c("state", "gender", "year", "firstname", "count")
head(babynames)
# The above section of code reads in the baby name data for California and names the columns in the order of the created vector.


joes <- babynames%>%
  filter(firstname == "Joe")
# This code filters the baby name data set previously created to only keep the name "Joe"


famousJoes <- max(joes$count)
# This line makes a variable that finds the highest count in all the years of the joes data.

best_joe<- joes %>% 
  filter (count == famousJoes) %>%
  select(year) %>% 
  pull()
best_joe
# This pipe sequence creates finds the year with the most names "joe" in the data set by looking for the matching year that corresponds with the max count found in "famousJoes"

joes[joes$year > 2010,]
# This looks into the joes data set and asks to return only the years greater than 2010.
