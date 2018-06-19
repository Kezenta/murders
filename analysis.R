library(tidyverse)
load("rda/murders.rda")
murders %>% mutate(abb=reorder(abb,rate)) %>% 
  ggplot(aes(abb,rate))+
  geom_bar(width = 0.5,stat = "identity",col="blue")+
  coord_flip()
#make dir figs and save the graph on the directory 
ggsave("figs/barplot.png")
