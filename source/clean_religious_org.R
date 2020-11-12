library(RSQLite)
library(tidyverse)
library(here)

cnpj_db <- dbConnect(
    dbDriver("SQLite"),
    here("data/raw/bd_dados_qsa_cnpj.db")
)

empresa <- tbl(cnpj_db, "cnpj_dados_cadastrais_pj")