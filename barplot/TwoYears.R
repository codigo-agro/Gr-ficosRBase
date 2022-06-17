png("rplot.png", 
    width = 30, 
    height = 12, 
    units = "cm", 
    res = 600,
    bg = "white")

options(OutDec = ",")

temperatura = c(25.71, 23.46, 21.58, 21.49, 21.70, 21.00, 23.14, 24.42, 24.52, 25.58, 26.00, 27.30,
                23.00, 25.24, 23.66, 21.88, 20.34, 20.75, 23.89, 25.31, 24.76, 25.78, 26.27, 27.80)
preciptation = c(30.8, 187.8, 50.8, 23.4, 14.4, 54.4, 26.0, 67.0, 223.6, 220.4, 37.6, 193.6, 
                 186.20, 85.2, 37.0, 14.8, 2.0, 25.8, 59.6, 26.4, 274.2, 153.2, 333.20, 34.8)
meses = c("mar", "abr", "mai", "jun", "jul", "ago", "set", "out", "nov", "dez", "jan", "fev")

par(mar=c(3, 3, 1, 3))

plot.new()
plot.window(xlim=c(0, 36.5), ylim=c(0, 400))

pos.x = seq(1, 35.5, 1.5)
length(pos.x)

rect(pos.x - 0.5, 
     0, 
     pos.x + 0.5,
     preciptation, 
     col="gray",
     border = "black")

text(pos.x, 
     preciptation + 8, 
     preciptation,
     col="black",
     font = 2,
     cex = 0.7)

lines(c(0, 36.5), c(0, 0), col="black")

axis(side = 2, 
     at = seq(0, 400, 50), 
     pos = 0,
     las = 1,
     font = 2)


par(new = TRUE)

plot.window(xlim=c(0, 36.5), ylim=c(0, 30))

axis(side = 4, 
     at = seq(0, 30, 5), 
     pos = 36.5,
     las = 1,
     font = 2)

lines(pos.x, 
      temperatura, 
      col="black", 
      type="b",
      lwd=2,
      pch = 19)

mtext("Precipitação (mm)", 
      side = 2, 
      line = 1.5, 
      font = 2)

mtext("Temperatura Média (°C)", 
      side = 4,
      line = 1,
      font = 2)

text(pos.x, 
     temperatura + 1.0, 
     temperatura,
     col = "black",
     cex = 0.7)

abline(v = 18.25)

text(pos.x[6], 30.5, "2018-2019", font = 2)
text(pos.x[18], 30.5, "2019-2020", font = 2)

par(new = TRUE)
par(mar=c(2, 3, 3, 3))
plot.window(xlim=c(0, 36.5), ylim=c(-2, 35))

mtext("", side = 1, line = 1)

text(pos.x, -2, meses, font = 2)


dev.off()

















