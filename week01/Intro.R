# --- Données simulées : 250 génotypes de sorgho ---
set.seed(123)

n <- 500
genotype <- paste0("G", 1:n)

# Caractère qualitatif : résistance à une maladie
resistance <- sample(c("Résistant", "Sensible"), n, replace = TRUE, prob = c(0.7, 0.4))

# Caractère quantitatif : rendement en grains (kg/ha)
rendement <- rnorm(n, mean = 3, sd = 0.5)

# --- 1. Distribution du caractère quantitatif (rendement) ---
hist(rendement,
     main = "ex. rendement",
     xlab = "Rendement (t/ha)",
     col = "lightgreen",
     border = "white",
     breaks = 20)

# --- 2. Distribution du caractère qualitatif (résistance) ---
barplot(table(resistance),
        main = "ex. résistance/sensibilité",
        ylab = "Nombre de génotypes",
        col = c("orange", "lightblue"),
        border = "white")
