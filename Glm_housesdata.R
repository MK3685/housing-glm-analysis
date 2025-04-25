# Using read.table() function
library(readr)
url <- "https://stat4ds.rwth-aachen.de/data/Houses.dat"
houses <- read.table(url, header = TRUE)
houses

# Extract relevant columns
y <- houses$price
y
x1 <- houses$taxes
x1
x2 <- houses$new
x2
# Create scatter plot of y and x1
plot(x1, y, xlab = "Tax Bill", ylab = "Selling Price")

# Fit a normal GLM with identity link function
normal <- glm(price ~ taxes, data = houses, family = gaussian(link = "identity"))
# Fit gamma GLM with identity link
gamma_model <- glm(price ~ taxes, data = houses, family = Gamma(link = "identity"))


# View the summary of the fitted model
summary(normal)

# View summary of model
summary(gamma_model)
