
download.file(url="https://ndownloader.figshare.com/files/2292169",destfile = "data/portal_data_joined.csv")

library (tidyverse)
surveys <- read_csv("data/portal_data_joined.csv")
SNPs <- read_tsv("data/23andMe_complete.txt", skip = 14, col_types = 
                   cols(chromosome = col_factor()))

#Challenge1
surveys %>%
  filter(year < 1995) %>%
  select(year, sex, weight)

#Challenge2
surveys_hindfoot_half <- surveys %>%
  filter(!is.na(hindfoot_length)) %>%
  mutate(hindfoot_half = hindfoot_length / 2) %>%
  filter(hindfoot_half < 30) %>%
  select(species_id, hindfoot_half) %>% 
  
#Challenge3
  surveys %>%
  count(plot_type) 

surveys %>%
  filter(!is.na(hindfoot_length)) %>%
  group_by(species_id) %>%
  summarize(
    mean_hindfoot_length = mean(hindfoot_length),
    min_hindfoot_length = min(hindfoot_length),
    max_hindfoot_length = max(hindfoot_length),
    n = n())
    
surveys %>%
      filter(!is.na(weight)) %>%
      group_by(year) %>%
      filter(weight == max(weight)) %>%
      select(year, genus, species, weight) %>%
      arrange(year)

#Challenge4 
rich_time <- surveys %>%
  group_by(plot_id, year) %>%
  summarize(n_genera = n_distinct(genus)) %>%
  spread(year, n_genera)

head(rich_time)

rich_time %>%
  gather(year, n_genera, -plot_id)

surveys_long <- surveys %>%
  gather(measurement, value, hindfoot_length, weight)

surveys_long %>%
  group_by(year, measurement, plot_type) %>%
  summarize(mean_value = mean(value, na.rm=TRUE)) %>%
  spread(measurement, mean_value)

#Exercise 1
select(SNPs, position, genotype)

#Exercise 2 
SNPs %>%
  filter(chromosome == "MT") %>% 
  filter(genotype != "A") %>% 
  filter(genotype != "T") 

#Exercise 3 
SNPs %>%
  group_by(chromosome) %>% 
  summarize(min_position = min(position), 
            max_position = max(position), 
            n = n())

#Exercise 4 
SNPs %>%
  group_by(chromosome) %>% 
  summarize(min_position = min(position), 
            max_position = max(position), 
            n = n()) %>%
    mutate(density = n / (max_position - min_position)) 

#Exercise 5 
SNPs %>%
  group_by(chromosome) %>% 
  summarize(min_position = min(position), 
            max_position = max(position), 
            n = n()) %>%
  mutate(density = n / (max_position - min_position)) %>%
  arrange (density)

#Exercise 6 
  write_csv(SNPs, path = "data/SNPs.csv")
