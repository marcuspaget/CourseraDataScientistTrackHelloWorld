library(svUnit)

test(complete) <- function()
{
  checkEquals(data.frame(id = 1, nobs = 117), complete("specdata", 1))
  checkEquals(data.frame(id = c(2, 4, 8, 10, 12), nobs = c(1041, 474, 192, 148, 96)), complete("specdata", c(2, 4, 8, 10, 12)))
  checkEquals(data.frame(id = 30:25, nobs = c(932, 711, 475, 338, 586, 463)), complete("specdata", 30:25))
  checkEquals(data.frame(id = 3, nobs = 243), complete("specdata", 3))
}

clearLog()
print(runTest(complete))
