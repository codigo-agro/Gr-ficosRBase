library(corrgram)

# Função para adição de significâncias
simb.sig =  function (x, y, correl = NULL, col.regions, digits = 2, cex.cor) {
  usr <- par("usr")
  on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  correl <- cor.test(x, y)
  pvalor <- correl$p.value
  simbolos <- ifelse(pvalor < 0.001, '***', 
                  ifelse(pvalor < 0.01, "**", 
                         ifelse(pvalor < 0.05, "*", "NS")))
  text(0.5, 0.5, simbolos, cex = c(1.5, 0.5, 0.1))
}

# Função para combinar a arte do pacote 
panel.esquerdo <- function (x, y, correl = NULL, col.regions, ...) {
  # Realizar os calculso de correlação
  if (is.null(correl)){ 
    correl <- cor(x, y, use = "pair")
  }
  
  # Defini as cores para cada correalação
  ncol <- 6
  paleta <- col.regions(ncol)
  col.ind <- as.numeric(cut(correl, breaks = seq(from = -1, to = 1, 
                                                length = ncol + 1), include.lowest = TRUE))
  usr <- par("usr")
  rect(usr[1], usr[3], usr[2], usr[4], col = paleta[col.ind], 
       border = NA)
 
  # Cor da bordas dos quadrados
  box(col = "grey")
  
  on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  
  # extrair os valores de signifcância e associar a cada um um simbolo
  corre <- cor.test(x, y)
  pvalor <- corre$p.value
  simbolos <- ifelse(pvalor < 0.001, '***', 
                     ifelse(pvalor < 0.01, "**", 
                            ifelse(pvalor < 0.05, "*", 'ns')))
  
  # Formatar os simbolos de correlação
  r <- formatC(correl, digits = 2, format = "f", decimal.mark = ',')
  
  # Juntar as correlações com os simbolos
  text(0.5, 0.5, gsub(pattern = ' ', replacement = '', x = expression(paste(r, ''^simbolos))), cex = 1.5)
}

panel.esquerdo <- function (x, y, correl = NULL, col.regions, ...) {
  # Realizar os calculso de correlação
  if (is.null(correl)){ 
    correl <- cor(x, y, use = "pair")
  }
  
  # Defini as cores para cada correalação
  ncol <- 6
  paleta <- col.regions(ncol)
  col.ind <- as.numeric(cut(correl, breaks = seq(from = -1, to = 1, 
                                                 length = ncol + 1), include.lowest = TRUE))
  usr <- par("usr")
  rect(usr[1], usr[3], usr[2], usr[4], col = paleta[col.ind], 
       border = NA)
  
  # Cor da bordas dos quadrados
  box(col = "grey")
  
  on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  
  # extrair os valores de signifcância e associar a cada um um simbolo
  corre <- cor.test(x, y)
  pvalor <- corre$p.value
  simbolos <- ifelse(pvalor < 0.001, '***', 
                     ifelse(pvalor < 0.01, "**", 
                            ifelse(pvalor < 0.05, "*", 'ns')))
  
  # Formatar os simbolos de correlação
  r <- formatC(correl, digits = 2, format = "f", decimal.mark = ',')
  
  # Juntar as correlações com os simbolos
  text(0.5, 0.5,  gsub(pattern = ' ', replacement = '', x = paste(r, simbolos)), cex = 1.5)
}


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
         outer.labels=list(bottom=list(labels=colnames(mtcars),cex=1.5,srt=0,adj=c(0.5,1)),
                           left=list(labels=colnames(mtcars),cex=1.5,srt=0,adj=c(1,0.5), font.lab = 2)),
         lower.panel = panel.esquerdo , 
         upper.panel = NULL,
         text.panel = NULL,
         col.regions = colorRampPalette(c("coral3", "white", "antiquewhite4")))


corrgram(mtcars, 
         type="data",
         lower.panel = panel.esquerdo , 
         upper.panel = NULL,
         col.regions = colorRampPalette(c("coral3", "white", "antiquewhite4")))

corrgram(mtcars, 
         type="data",
         lower.panel = panel.shadeNtext, 
         upper.panel = simb.sig,
         col.regions = colorRampPalette(c("coral3", "white", "antiquewhite4")))

edit(corrgram)


