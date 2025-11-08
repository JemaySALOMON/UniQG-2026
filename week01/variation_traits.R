# simul: 500 génotypes ( ex. sorghos)
set.seed(123)
n <- 500
genotype <- paste0("G", 1:n)

# caractère quali
resistance <- sample(c("Résistant", "Sensible"), n, replace = TRUE, prob = c(0.7, 0.4))

# caract. quanti
rendement <- rnorm(n, mean = 3, sd = 0.5)

# Distribution
hist(rendement,
     main = "ex. rendement",
     xlab = "Rendement (t/ha)",
     col = "lightgreen",
     border = "white",
     breaks = 20)

barplot(table(resistance),
        main = "ex. résistance/sensibilité",
        ylab = "Nombre de génotypes",
        col = c("orange", "lightblue"),
        border = "white")
