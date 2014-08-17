library(svUnit)

test(pollutantmean) <- function()
{
  checkEqualsNumeric(4.064, pollutantmean("specdata", "sulfate", 1:10), tolerance = 0.0005)
  checkEqualsNumeric(1.706 , pollutantmean("specdata", "nitrate", 70:72), tolerance = 0.0005)
  checkEqualsNumeric(1.281, pollutantmean("specdata", "nitrate", 23), tolerance = 0.0005)
}

clearLog()
print(runTest(pollutantmean))
