
ts_plot_fun <- function(x.axi.tic.01, x.axi.tic.02, y.axi.tic.01, y.axi.tic.02,
                        x.axi.tic.02.lab = NULL, y.axi.tic.02.lab = NULL,
                        main = "", sub = "", xlab = "", ylab = "",
                        x.mar = 0, y.mar = 0,
                        par.inp = NULL) {
  
  if (!is.null(par.inp)) {
    par()$mfrow <- par.inp$mfrow
    par()$mar <- par.inp$mar
    par()$cex.axis <- par.inp$cex.axis
    par()$mgp <- par.inp$mgp
  }
  
  xlim <- c(min(x.axi.tic.01), max(x.axi.tic.01))
  ylim <- c(min(y.axi.tic.01), max(y.axi.tic.01))
  
  plot.new()
  
  plot.window(xlim = xlim, ylim = ylim, log = "")
  
  title(main = main, sub = sub, xlab = xlab, ylab = ylab)
  
  rect(min(x.axi.tic.01) - x.mar, min(y.axi.tic.01) - y.mar,
       max(x.axi.tic.01) + x.mar, max(y.axi.tic.01) + y.mar,
       col = rgb(224, 224, 224, maxColorValue = 255), border = NA) # color
  
  for(ii in 1:length(x.axi.tic.01)) {
    abline(v = x.axi.tic.01[ii], col = "white", lty = 2)
  }
  
  for(ii in 1:length(y.axi.tic.01)) {
    abline(h = y.axi.tic.01[ii], col = "white", lty = 2)
  }
  
  # x-axis
  axis.Date(side = 1, at = x.axi.tic.01, labels = FALSE, tck = -0.01)
  if (is.null(x.axi.tic.02.lab)) {
    axis.Date(side = 1, at = x.axi.tic.02, labels = TRUE, tck = -0.02)
  } else {
    axis.Date(side = 1, at = x.axi.tic.02, labels = x.axi.tic.02.lab, tck = -0.02)
  }
  
  # y-axis
  axis(side = 2, at = y.axi.tic.01, labels = FALSE, tck = -0.01)
  if (is.null(y.axi.tic.02.lab)) {
    axis(side = 2, at = y.axi.tic.02, labels = TRUE, tck = -0.02)
  } else {
    axis(side = 2, at = y.axi.tic.02, labels = y.axi.tic.02.lab, tck = -0.02)
  }
  
}