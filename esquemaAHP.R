library(ahp)
dtmul <- Load("ejmultinivel.ahp")
dtmul

Calculate(dtmul)
print(dtmul, priority = function(x) x$parent$priority["Total", x$name])

Visualize(dtmul)

t1 <- AnalyzeTable(dtmul)
formattable::as.htmlwidget(t1)

t1b <- AnalyzeTable(dtmul, sort = "orig")
formattable::as.htmlwidget(t1b)

t2 <- AnalyzeTable(dtmul, variable = "priority", sort = "orig")
formattable::as.htmlwidget(t2)

source("teoriadecision_funciones_multicriterio_diagram.R")
