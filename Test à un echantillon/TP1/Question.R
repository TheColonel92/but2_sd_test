# lire le fichier de données
load(file = "ligue1_2425.Rdata")
# Pour récupérer le nombre de but du PSG :
but_psg <- ligue1_2425 %>%
  filter(Ext =="PSG" | Dom =="PSG") %>%
  mutate(but_psg = case_when(Dom =="PSG"~ Dom_but,
                             TRUE~ Ext_but)) %>%
  pull(but_psg) %>% as.numeric()

boxplot(but_psg)
?t.test()
t.test(but_psg, NULL, alternative = c("greater"), mu=2.38)view (but_psg)
