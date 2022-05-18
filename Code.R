TCP <- read.csv("D:/DS/datascienceupc.github.io/TCP.csv", sep=";")
View(TCP)

unique(TCP$Category)
TCP$Category <- as.factor(TCP$Attack.category)
plot(TCP$Category)
unique(TCP$Category)

 # REMPLAZAR UNA VARIABLE POR OTRA


levels(TCP$Category)

TCP$Category <- str_replace(TCP$Category,"Backdoors", "Backdoor")
TCP$Category <- str_replace(TCP$Category," Fuzzers ", "Fuzzers")
TCP$Category <- str_replace(TCP$Category,"Fuzzers ", "Fuzzers")
TCP$Category <- str_replace(TCP$Category," Fuzzers", "Fuzzers")
TCP$Category <- str_replace(TCP$Category," Reconnaissance ", "Reconnaissance")
TCP$Category <- str_replace(TCP$Category," Shellcode ", "Shellcode")

unique(TCP$Category)

TCP$NCategory <- as.factor(TCP$Category)
plot(TCP$NCategory)


TCP1 <- TCP %>%
  select(NCategory, Protocol, Source.IP) %>%
  filter(Protocol == "tcp")
write.csv2(TCP1, "TCP1.csv")




rmarkdown::render_site(encoding = "UTF-8")