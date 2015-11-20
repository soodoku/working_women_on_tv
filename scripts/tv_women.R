"
@title:   Working Women on Indian TV
@authors: Asha Sood and Gaurav Sood

"

# setwd
setwd(paste0(githubdir, "/working_women_on_tv/"))

# Load libs
library(plyr)

# Load data
wwotv <- read.csv("data/working_women_on_tv.csv")

# n_shows
length(unique(wwotv$show_name))

# n_chars
nrow(wwotv)

# Proportion of characters working
mean(wwotv$working)

# Mean by show
by_show <- ddply(wwotv,~ show_name,summarise,mean=mean(working))
# sd
sd(by_show$mean)
# range
range(by_show$mean)

# Figs

# Fig libs
library(ggplot2)
library(grid)
library(goji)

