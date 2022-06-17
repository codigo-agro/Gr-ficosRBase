

T1 = c(150, 100, 80, 90, 120)

T2 = c(12, 22, 21, 20, 25)


matriz <- matrix(c(T1), 
                 nrow = 1, 
                 ncol = 5, 
                 dimnames = list(c("ESP1"),
                                 c("Jan", "Fev", "Mar", "Abr", "Mai")))

matriz

par(mar = c(3.6, 4, 3.6, 4))


bar = barplot(matriz, 
              ylim=c(0, 200), 
              las = 1,
              col = "steelblue",
              font = 2)

points(bar, T1)

mtext("Precipitação (mm)", side = 2, line = 3, font = 2)

abline(h = 0)

par(new = TRUE, mar = c(3,3,3,4))

plot(bar, 
     T2,
     axes = FALSE,
     xlim=c(0,6),
     ylim=c(0, 30),
     type =  "b",
     col = "red")

axis(4, 
     at = seq(0, 30, 5),
     las = 1,
     lwd = 1.5,
     font = 2)

mtext("Temperatura (°C)", 
      side = 4,
      line = 2.5,
      font = 2)









