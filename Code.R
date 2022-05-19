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


ggplot(TCP , aes(fill=Source.IP, y=Protocol, x=Category)) + geom_bar(position="stack",stat='identity')+ xlab("NOMBRE DE ATAQUES") + ylab("VULNERABILIDADES") + ggtitle("ANÁLISIS DE ATAQUES MÁS FRECUENTES")



read.csv("D:/DS/datascienceupc.github.io/TCP.csv", sep=";")
View(TCP)


TCP$Category <- str_replace(TCP$Attak.category,"Backdoors", "Backdoor")
TCP$Category <- str_replace(TCP$Attak.category," Fuzzers ", "Fuzzers")
TCP$Category <- str_replace(TCP$Attak.category,"Fuzzers ", "Fuzzers")
TCP$Category <- str_replace(TCP$Attak.category," Fuzzers", "Fuzzers")
TCP$Category <- str_replace(TCP$Attak.category," Reconnaissance ", "Reconnaissance")
TCP$Category <- str_replace(TCP$Attak.category," Shellcode ", "Shellcode")


ggplot(TCP , aes(fill=Source.IP, y=Protocol, x=Attack.category)) + geom_bar(position="stack",stat='identity')+ xlab("NOMBRE DE ATAQUES") + ylab("VULNERABILIDADES") + ggtitle("ANÁLISIS DE ATAQUES MÁS FRECUENTES")


ds %>%
  select(Attack.category, Source.Port, Destination.Port, Destination.IP, Protocol) 

Port <- ds %>%
  select(Attack.category, Source.Port, Destination.Port, Destination.IP, Protocol)
write.csv2(Port, "Port.csv")


Port$Protocols <- as.factor(Port$Protocol)
Port$Category <- as.factor(Port$Attack.category)
Port$DestinationPort <- as.character(Port$Destination.Port)
Port$SourcePort <- as.character(Port$Source.Port)

unique( Port$DestinationPort)

plot(x=Port$Protocols, y=Port$Destination.Port, pch=1.3, col="blue")

plot(x=Port$Category, y=Port$Destination.Port, pch=1.3, col="blue")
points(x=Port$Category, cex = .10000, col = "dark red")
points(y=Port$DestinationPort, cex = .10000, col = "green dark")


install.packages("rgeolocate")

library(rgeolocate)

file <- system.file("extdata","GeoLite2-Country.mmdb", package = "rgeolocate")
results <- maxmind("175.45.176.3", file, c("continent_name", "country_code", "country_name"))
results

install.packages("maps")
library(maps)

install.packages("rworldmap")
library(rworldmap)
joinCountryData2Map()


TCP$IP <- "175.45.176.3"
file <- system.file("TCP$IP","GeoLite2-Country.mmdb", package = "rgeolocate")
results <- maxmind("175.45.176.3", files, c("continent_name", "country_code", "country_name"))
results


















rmarkdown::render_site(encoding = "UTF-8")