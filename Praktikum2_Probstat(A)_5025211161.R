# Nomor 1
# a) Mencari standar deviasi
X <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
Y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
selisih <- Y - X
sd(selisih)

# b) Mencari nilai t (p-value)
t.test(Y, X, paired = TRUE)

# Nomor 2
# b) Menghitung sampel statistik
install.packages("BSDA")
library(BSDA)

tsum.test(mean.x = 23500, s.x = 3900, n.x = 100)

# Nomor 3
# b) Menghitung sampel statistik
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, 
          mean.y = 2.79, s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)

# c) Melakukann uji statistik
install.packages("mosaic")
library(mosaic)

plotDist(dist = 't', df = 2, col = "brown")

# d) Menghitung nilai kritikal
qchisq(p = 0.05, df = 2, lower.tail = FALSE)

#Nomor 4
# a) Membuat grup untuk tiap jenis spesies
data <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"), h = T)

data$Group <- as.factor(data$Group)
data$Group = factor(data$Group,labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))

class(data$Group)

Group1 <- subset(data, Group == "Kucing Oren")
Group2 <- subset(data, Group == "Kucing Hitam")
Group3 <- subset(data, Group == "Kucing Putih")

qqnorm(Group1$Length)
qqline(Group1$Length)

qqnorm(Group2$Length)
qqline(Group2$Length)

qqnorm(Group3$Length)
qqline(Group3$Length)

# b) Memeriksa Homogeneity of Variances
bartlett.test(Length ~ Group, data = data)

# c) Melakukan uji ANOVA dan membuat model linier
model1 = lm(Length ~ Group, data = data)
anova(model1)

# e) Melakukan verifikasi jawaban dengan tes Tukey
TukeyHSD(aov(model1))

# f) Visualisasi data dengan ggplot2
install.packages("ggplot2")
library("ggplot2")

ggplot(data, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey", colour = "black") + scale_x_discrete() + xlab("Treatment Group") + ylab("Length (cm)")

#Nomor 5
# a) Membuat simple plot untuk visualisasi data
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("GTL.csv")
head(GTL)

str(GTL)

qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)

# b) Melakukan uji ANOVA dua arah
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

# c) Menampilkan tabel dengan mean dan standar deviasi
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

# d) Melakukan uji Tukey
tukey <- TukeyHSD(anova)
print(tukey)

# e) Menggunakan compact letter display untuk menunjukkan perbedaan antara uji ANOVA dan uji Tukey
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)