# Criando um conjunto de dados
temperatura = c(25, 28, 30, 33, 29, 25, 28, 30, 33, 29, 33, 29)
preciptation = c(150, 100, 80, 90, 120, 150, 100, 80, 90, 120, 90, 120)
meses = c("jan", "fev", "mar", "abr", "mai", "jun", "jul", "ago", "set", "out", "nov", "dez")

# Definindo as margens do gráfico
par(mar=c(3, 3, 3, 3))

# Definindo as dimensões báiscas do gráfico
plot.new()
plot.window(xlim=c(0, 18.5), 
            ylim=c(0, 200))

# Plotar o eixo y
axis(side = 2, 
     at = seq(0, 200, 50), 
     pos = 0,
     las = 1)

mtext("Precipitação (mm)", 
      side = 2, 
      line = 1.5, 
      font = 2)

# A linha base
lines(c(0, 18.5), 
      c(0, 0), 
      col="black")

# Estabeleendo a posição média das barras
pos.x = seq(1, 17.5, 1.5)

# Plotando as barras
rect(pos.x - 0.5, 0, 
     pos.x + 0.5, preciptation, 
     col = "cadetblue2",
     border = "black")

# Plotar um novo gráfico sobre o primeiro
par(new = TRUE)

# Definindo os parâmetros do novo gráfico
plot.window(xlim=c(0, 18.5), 
            ylim=c(0, 35))

# Plotar o eixo das temperaturas
axis(side = 4, 
     at = seq(0, 35, 5), 
     pos = 18.5,
     las = 1)

# Rotular
mtext("Temperatura (°C)", 
      side = 4,
      line = 1,
      font = 2)

# Plotar os dados de temperatura na forma de linhas e pontos
lines(pos.x, 
      temperatura, 
      col="blue", 
      type="b",
      lwd=2,
      pch = 19)

# Plotar os valores de temperatura
text(pos.x, 
     temperatura+1, 
     temperatura)

# Para plotar os meses nós vamos criar um novo gráfico
par(new = TRUE)
par(mar=c(2, 3, 3, 3))

# Definir as dimentões para os eixos
plot.window(xlim=c(0, 18.5), 
            ylim=c(-2, 35))

# Por alguma razão há a necessidade de um mtext vazio
mtext("", 
      side = 1, 
      line = 1)

# Agora sim identificar os meses
text(pos.x, 
     -2, 
     meses, 
     font = 2)
