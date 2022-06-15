# Criando gráficos usando uma matriz

T1 = c(44, 46, 37, 50)
T2 = c(127, 120, 138, 124)
T3 = c(235, 242, 244, 239)
T4 = c(177, 167, 172, 170)
T5 = c(87, 78, 97, 105)


matriz = matrix(c(T1, T2, T3, T4, T5), 
                   nrow = 4, 
                   ncol = 5, 
                   dimnames = list(c("ESP1", 
                                     "ESP2", 
                                     "ESP3",
                                     "ESP4"), 
                                   c("Trat 1", 
                                     "Trat 2", 
                                     "Trat 3", 
                                     "Trat 4", 
                                     "Trat 5")))

matriz


# Como converter um data.frame numa matriz?


# -----------
# Exemplo 01
# -----------
barplot(matriz)


# -----------
# Exemplo 02
# -----------
barplot(matriz,
        beside = TRUE)


# -----------
# Exemplo 03
# -----------
barplot(matriz,
        beside = TRUE,
        col = gray(seq(0.8, 0.3, length = 4)))

# -----------
# Exemplo 04
# -----------
barplot(matriz,
        beside = TRUE,
        col = c("black", "red"))


# -----------
# Exemplo 05
# -----------
barplot(matriz,
        beside = TRUE,
        col = c("coral4", "coral3", "coral2", "coral1"))


# -----------
# Exemplo 06
# -----------
barplot(matriz,
        beside = TRUE,
        col = heat.colors(4))


# -----------
# Exemplo 07
# -----------
barplot(matriz,
        beside = TRUE,
        col =  gray.colors(4),
        legend = TRUE)


# -----------
# Exemplo 08
# -----------
barplot(matriz,
        beside = TRUE,
        col =  gray.colors(4),
        ylim = c(0, 300))


# -----------
# Exemplo 10
# -----------
barplot(matriz,
        beside = TRUE,
        col =  gray.colors(4),
        ylim = c(0, 300),
        space = c(0.0, 0.5))


# -----------
# Exemplo 11
# -----------
barplot(matriz,
        beside = TRUE,
        col =  gray.colors(4),
        ylim = c(0, 300),
        axes = FALSE,
        space = c(0.0, 0.5))


# -----------
# Exemplo 12
# -----------
barplot(matriz,
        beside = TRUE,
        col =  gray.colors(4),
        ylim = c(0, 300),
        axes = FALSE,
        space = c(0.0, 0.5))

axis(2, 
     at = seq(0, 300, 50),
     las = 1,
     lwd = 1.5)

abline(h = 0)


# -----------
# Exemplo 13
# -----------
barplot(matriz,
        beside = TRUE,
        col =  gray.colors(4),
        ylim = c(0, 300),
        axes = FALSE,
        space = c(0.0, 0.5),
        xlab = "Tratamentos",
        ylab = "Produção (kg)",
        font.lab = 2,
        font.axis = 2)

axis(2, 
     at = seq(0, 300, 50),
     las = 1,
     lwd = 1.5,
     font = 2)

abline(h = 0)


# -----------
# Exemplo 14
# -----------
barplot(matriz,
        beside = TRUE,
        col =  gray.colors(4),
        ylim = c(0, 300),
        axes = FALSE,
        space = c(0.0, 0.5),
        xlab = "Tratamentos",
        ylab = "Produção (kg)",
        font.lab = 2,
        font.axis = 2,
        legend = TRUE,
        args.legend = list(x = "topright"))

axis(2, 
     at = seq(0, 300, 50),
     las = 1,
     lwd = 1.5,
     font = 2)

abline(h = 0)

# -----------
# Exemplo 14
# -----------
barplot(matriz,
        beside = TRUE,
        col =  gray.colors(4),
        ylim = c(0, 300),
        axes = FALSE,
        space = c(0.0, 0.5),
        xlab = "Tratamentos",
        ylab = "Produção (kg)",
        font.lab = 2,
        font.axis = 2)

axis(2, 
     at = seq(0, 300, 50),
     las = 1,
     lwd = 1.5,
     font = 2)

abline(h = 0)

legend("topleft", 
       legend = c("ESP1", "ESP2", "ESP3", "ESP4"), 
       fill = gray.colors(4), 
       bty = "n",
       cex = 1)


# -----------
# Exemplo 15
# -----------
library(readxl)


setwd("C:/Users/Usuário/Desktop/Temp/DicasBarPlot")
tabela = data.frame(read_excel("tabela.xlsx"), row.names = 1)
tabela

colnames(tabela) = c("Trat 1", "Trat 2", "Trat 3", "Trat 4", "Trat 5")
tabela

tabela.m = as.matrix(tabela)

barplot(tabela.m,
        beside = TRUE,
        col =  gray.colors(4),
        ylim = c(0, 300),
        axes = FALSE,
        space = c(0.0, 0.5),
        xlab = "Tratamentos",
        ylab = "Produção (kg)",
        font.lab = 2,
        font.axis = 2)

axis(2, 
     at = seq(0, 300, 50),
     las = 1,
     lwd = 2,
     font = 2)

abline(h = 0, lwd = 2)

legend("topleft", 
       legend = c("ESP1", "ESP2", "ESP3", "ESP4"), 
       fill = gray.colors(4), 
       bty = "n",
       cex = 1)







