library(corrgram)

# Função para adição de significâncias
const.sig =  function (x, y, corr = NULL, col.regions, digits = 2, cex.cor) {
  usr <- par("usr")
  on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  results <- cor.test(x, y)
  est <- results$p.value
  stars <- ifelse(est < 0.001, "***", 
                  ifelse(est < 0.01, "**", 
                         ifelse(est < 0.05, "*", "NS")))
  text(0.5, 0.5, stars, cex = c(1.5, 0.5, 0.1))
}

# Função para combinar a arte do pacote 
panel.shadeNtext <- function (x, y, corr = NULL, col.regions, ...) {
  if (is.null(corr)) 
    corr <- cor(x, y, use = "pair")
  ncol <- 6
  pal <- col.regions(ncol)
  col.ind <- as.numeric(cut(corr, breaks = seq(from = -1, to = 1, 
                                               length = ncol + 1), include.lowest = TRUE))
  usr <- par("usr")
  rect(usr[1], usr[3], usr[2], usr[4], col = pal[col.ind], 
       border = NA)
  box(col = "lightgray")
  on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  r <- formatC(corr, digits = 3, format = "f")
  text(0.5, 0.5, r, cex = 1.5)
}

# Call the corrgram function with the new panel functions
# NB: call on the data, not the correlation matrix
corrgram(mtcars, 
         type="data", 
         lower.panel = panel.shadeNtext, 
         upper.panel = const.sig,
         col.regions = colorRampPalette(c("coral3", "white", "antiquewhite4")))
