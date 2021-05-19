library(tidyverse)

args=(commandArgs(TRUE))

df1 <- read_tsv(args[1])
df2 <- read_tsv(args[2]) %>% rename(gene_name=To)

left_join(df1, df2, by=c("uniprot_id"="From")) -> df3
write_tsv(df3, args[3])

