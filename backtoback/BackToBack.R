# Cria grupos
frutas = c("Manga", 
            "Uva", 
            "Umbú",
            "Araçá", 
            "Mangaba")

# Gerando número aleatórios
sitio.oeste = c(4, 11, 19, 6, 9)
sitio.oeste

sitio.leste = c(11, 10, 12, 13, 14)
sitio.leste

# Podemos juntar os dados gerados num dataframe para melhor visualização

dados = data.frame(frutas, sitio.leste, sitio.oeste)
dados

# -------------------------------------------------------------------
# Passo 01 - Estabelece algumas configurações básicas para o gráfico
# -------------------------------------------------------------------

# 01 - Configurações de margens
par(mar = c(0.5, 5, 0.5, 1), 
    oma = c(0, 0, 0, 0))

# 02 - Abrir uma nova janela gráfica
plot.new()

# 03 - Dimensões dos eixos
plot.window(xlim=c(-20, 20), 
            ylim=c(-1.5, 5.5))


# -------------------------
# Passo 02 - Criar o eixo X
# -------------------------

# Plotar o eixo x com as marcas sempre positivas usando abs()
axis(side = 1, 
     at = seq(-20, 20, 5), 
     labels = abs(seq(-20, 20, 5)), 
     pos = 0,
     cex.axis = 1)


# -------------------------
# Passo 03 - Criar o eixo Y
# -------------------------

# 01 - Armazenar a posição dos seguimentos
y = 1:5

# Plotar os seguimentos
segments(-20, 
         y, 
         20, 
         y, 
         lty = "dotted")

# Gerar a linha divisória
lines(c(0, 0), 
      c(-1.5, 5.5), 
      col="black")

# --------------------------------------
# Passo 04 - Criar as barras de valores
# --------------------------------------

# Gerar as barras do Sítio oeste
rect(-sitio.oeste, 
     y-0.2, 
     0, 
     y+0.2, 
     col="dark grey")

# Gerar as barras do Sítio leste
rect(0, 
     y-0.2, 
     sitio.leste, 
     y+0.2, 
     col="light grey")

# Rotulos dos grupos
mtext(frutas, 
      at = y, 
      side = 2, 
      las = 2,
      line = -1)

# ----------------------------------------------
# Passo 05 - Criar as identificações dos grupos
# ----------------------------------------------

# Introduzindo os textos
text(-7.5, 
     -1, 
     "Sítio Oeste", 
     pos = 2)

text(7.5, 
     -1, 
     "Sítio Leste", 
     pos = 4)










