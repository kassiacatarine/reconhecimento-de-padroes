rangeSize <- function(amount=3, size=0) {
  round(size/3)
}

arrayRange <- function(x, amount=3) {
  size <- rangeSize(amount, length(x))
  seq(0, length(x), size)
}

classifying <- function(x, interval) {
  x[0:49] <- 1
  x[50:99] <- 2
  x[100:150] <- 3
  x
}



ranking <- function(x) {
  irisClassified <- x

  interval <- arrayRange(x[,1])

  irisClassified <- irisClassified[order(irisClassified$Sepal.Length),]
  irisClassified$Sepal.Length <- classifying(irisClassified[,1], interval)
  irisClassified <- irisClassified[order(irisClassified$Sepal.Width),]
  irisClassified$Sepal.Width <- classifying(irisClassified[,2], interval)
  irisClassified <- irisClassified[order(irisClassified$Petal.Length),]
  irisClassified$Petal.Length <- classifying(irisClassified[,3], interval)
  irisClassified <- irisClassified[order(irisClassified$Petal.Width),]
  irisClassified$Petal.Width <- classifying(irisClassified[,4], interval)

  irisClassified
}

# sepala pequena e petala grande
# pequena, media e grande por tipos de ires

# probabilidade da sepala pequena U petala grande - setosa, viginica e outra
