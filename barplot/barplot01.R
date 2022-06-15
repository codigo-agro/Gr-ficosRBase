
tratamentos = rep(c(paste("T", sep='', 1:5)), each=4)

producao = c(44, 46, 37,  50,
             127, 120, 138, 124,
             135, 142, 144, 139,
             77, 67, 72, 70,
             87, 78, 97, 105)


data.frame(tratamentos, producao)


medias = tapply(producao, tratamentos, mean)
medias

desvios = tapply(producao, tratamentos, sd)
desvios


# -----------
# Exemplo 01
# -----------
barplot(medias)

# -----------
# Exemplo 02
# -----------
barplot(medias, 
        col = "white")

# -----------
# Exemplo 03
# -----------
barplot(medias,
        col = "blue",
        border = "green")

# -----------
# Exemplo 04
# -----------
barplot(medias, 
        col = "cyan4",
        border = "steelblue",
        xlab = "Tratamentos", 
        ylab = "Produção (kg)")

# -----------
# Exemplo 05
# -----------
barplot(medias, 
        col = "cyan4",
        border = "steelblue",
        xlab = "Tratamentos", 
        ylab = "Produção (kg)",
        las = 1)

# -----------
# Exemplo 06
# -----------
barplot(medias, 
        col = "cyan4",
        border = "steelblue",
        xlab = "Produção (kg)", 
        ylab = "Tratamentos",
        las = 1,
        horiz=TRUE)

# -----------
# Exemplo 07
# -----------
barplot(medias, 
        col = "cyan4",
        border = "steelblue",
        xlab = "Tratamentos", 
        ylab = "Produção (kg)",
        las = 1,
        horiz=FALSE,
        density=40)

# -----------
# Exemplo 08
# -----------
barplot(medias, 
        col = "cyan4",
        border = "steelblue",
        xlab = "Tratamentos", 
        ylab = "Produção (kg)",
        las = 1,
        horiz=FALSE,
        density=20,
        space =0.3)

# -----------
# Exemplo 09
# -----------
options(OutDec = ",")

grafico = barplot(medias, 
              col = "cyan4",
              border = "steelblue",
              xlab = "Tratamentos", 
              ylab = "Produção (kg)",
              ylim = c(0, 200),
              las = 1,
              horiz=FALSE,
              space = 0.3)

abline(h = 0)

text(grafico, medias, labels = medias)

# -----------
# Exemplo 10
# -----------
grafico = barplot(medias, 
              col = "cyan4",
              border = "steelblue",
              xlab = "Tratamentos", 
              ylab = "Produção (kg)",
              ylim = c(0, 200),
              las = 1,
              horiz=FALSE,
              space = 0.3)

abline(h = 0)

text(grafico, medias + 10, labels = medias)

# -----------
# Exemplo 11
# -----------
grafico = barplot(medias, 
              col = "cyan4",
              border = "black",
              xlab = "Tratamentos", 
              ylab = "Produção (kg)",
              ylim = c(0, 200),
              las = 1,
              horiz=FALSE,
              space = 0.3)

abline(h = 0)

arrows(grafico, medias + desvios, 
       grafico, medias - desvios, 
       length = 0.1, angle=90, code=3)

text(grafico, 10, labels = medias)

# -----------
# Exemplo 12
# -----------
grafico = barplot(medias, 
              col = "cyan4",
              border = "black",
              xlab = "Tratamentos", 
              ylab = "Produção (kg)",
              ylim = c(0, 200),
              las = 1,
              horiz=FALSE,
              space = 0.3)

abline(h = 0)

arrows(grafico, medias + desvios, 
       grafico, medias - desvios, 
       length = 0.1, angle=90, code=3)

text(grafico, 10, labels = c(paste(medias[1],"d"), 
                             paste(medias[2],"a"),
                             paste(medias[3],"a"),
                             paste(medias[4],"c"),
                             paste(medias[5],"b")))





















