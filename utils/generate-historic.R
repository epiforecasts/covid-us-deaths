# Packages ----------------------------------------------------------------
library(data.table)
library(here)

# load functions ----------------------------------------------------------
source(here("utils", "update_target.R"))

# Set up historic generator -----------------------------------------------
dates <- as.character(as.Date("2020-12-14") - 7*32:0)
dates <- rev(dates)

for (date in dates) {
  message("Generating historic forecast for: ", date)
  date <- as.Date(date)
  update_target(date)
  system("bash bin/update-for-target-date.sh")
}