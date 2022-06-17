
temperatura = c(25, 28, 30, 33, 29, 25, 28, 30, 33, 29, 33, 29)
preciptation = c(150, 100, 80, 90, 120)

par(mar=c(3, 3, 3, 3))
plot.new()
plot.window(xlim=c(0, 18), ylim=c(0, 200))

pos.x = seq(1, 17.5, 1.5)

lines(c(0, 18), c(0, 0), col="black")

rect(0.5, 0, 1.5, preciptation[1], col="dark grey")

rect(2, 0, 3, preciptation[2], col="dark grey")

axis(side = 2, at = seq(0, 200, 50), pos = 0)

par(new = TRUE)

plot.window(xlim=c(0, 18), ylim=c(0, 35))
axis(side = 4, at = seq(0, 35, 5), pos = 18)

segments(1, 25, 2.5, 28, lty="dotted")

points(c(1, 2.5, 4, 5.5, 7), temperatura)



# Versão 01

temperatura = c(25, 28, 30, 33, 29, 25, 28, 30, 33, 29, 33, 29)
preciptation = c(150, 100, 80, 90, 120, 150, 100, 80, 90, 120, 90, 120)
meses = c("jan", "fev", "mar", "abr", "mai", "jun", "jul", "ago", "set", "out", "nov", "dez")

par(mar=c(3, 3, 3, 3))

plot.new()
plot.window(xlim=c(0, 18.5), ylim=c(0, 200))

pos.x = seq(1, 17.5, 1.5)

rect(pos.x - 0.5, 0, pos.x + 0.5, preciptation, col="cadetblue2",
     border = "white")

lines(c(0, 18.5), c(0, 0), col="black")

axis(side = 2, 
     at = seq(0, 200, 50), 
     pos = 0,
     las = 1)

par(new = TRUE)

plot.window(xlim=c(0, 18.5), ylim=c(0, 35))

axis(side = 4, 
     at = seq(0, 35, 5), 
     pos = 18.5,
     las = 1)

lines(pos.x, temperatura, col="red", type="h",lwd=2)

segments(pos.x[1],  temperatura[1],  pos.x[2],  temperatura[2],  lty="solid", col = "blue", lwd = 2)
segments(pos.x[2],  temperatura[2],  pos.x[3],  temperatura[3],  lty="solid", col = "blue", lwd = 2)
segments(pos.x[3],  temperatura[3],  pos.x[4],  temperatura[4],  lty="solid", col = "blue", lwd = 2)
segments(pos.x[4],  temperatura[4],  pos.x[5],  temperatura[5],  lty="solid", col = "blue", lwd = 2)
segments(pos.x[5],  temperatura[5],  pos.x[6],  temperatura[6],  lty="solid", col = "blue", lwd = 2)
segments(pos.x[6],  temperatura[6],  pos.x[7],  temperatura[7],  lty="solid", col = "blue", lwd = 2)
segments(pos.x[7],  temperatura[7],  pos.x[8],  temperatura[8],  lty="solid", col = "blue", lwd = 2)
segments(pos.x[8],  temperatura[8],  pos.x[9],  temperatura[9],  lty="solid", col = "blue", lwd = 2)
segments(pos.x[9],  temperatura[9],  pos.x[10], temperatura[10], lty="solid", col = "blue", lwd = 2)
segments(pos.x[10], temperatura[10], pos.x[11], temperatura[11], lty="solid", col = "blue", lwd = 2)
segments(pos.x[11], temperatura[11], pos.x[12], temperatura[12], lty="solid", col = "blue", lwd = 2)

points(pos.x, temperatura, col = "blue", pch = 19)

mtext("Precipitação (mm)", 
      side = 2, 
      line = 1.5, 
      font = 2)

mtext("Temperatura (°C)", 
      side = 4,
      line = 1,
      font = 2)

text(pos.x, temperatura+1, 
     temperatura)

par(new = TRUE)
par(mar=c(2, 3, 3, 3))
plot.window(xlim=c(0, 18.5), ylim=c(-2, 35))

mtext("", side = 1, line = 1)

text(pos.x, -2, meses)


# Versão 02

temperatura = c(25, 28, 30, 33, 29, 25, 28, 30, 33, 29, 33, 29)
preciptation = c(150, 100, 80, 90, 120, 150, 100, 80, 90, 120, 90, 120)
meses = c("jan", "fev", "mar", "abr", "mai", "jun", "jul", "ago", "set", "out", "nov", "dez")

par(mar=c(3, 3, 3, 3))

plot.new()
plot.window(xlim=c(0, 18.5), ylim=c(0, 200))

pos.x = seq(1, 17.5, 1.5)

rect(pos.x - 0.5, 0, pos.x + 0.5, preciptation, col="cadetblue2",
     border = "white")

lines(c(0, 18.5), c(0, 0), col="black")

axis(side = 2, 
     at = seq(0, 200, 50), 
     pos = 0,
     las = 1)

par(new = TRUE)

plot.window(xlim=c(0, 18.5), ylim=c(0, 35))

axis(side = 4, 
     at = seq(0, 35, 5), 
     pos = 18.5,
     las = 1)

lines(pos.x, 
      temperatura, 
      col="blue", 
      type="b",
      lwd=2,
      pch = 19)

points(pos.x, temperatura, col = "blue", pch = 19)

mtext("Precipitação (mm)", 
      side = 2, 
      line = 1.5, 
      font = 2)

mtext("Temperatura (°C)", 
      side = 4,
      line = 1,
      font = 2)

text(pos.x, temperatura+1, 
     temperatura)

par(new = TRUE)
par(mar=c(2, 3, 3, 3))
plot.window(xlim=c(0, 18.5), ylim=c(-2, 35))

mtext("", side = 1, line = 1)

text(pos.x, -2, meses)




