library(svUnit)

test(corr) <- function()
{
  cr <- corr("specdata", 150)
  checkEqualsNumeric( c(-0.01896,-0.14051,-0.04390,-0.06816,-0.12351,-0.07589), head(cr), tolerance = 0.0001 )
  test.summary <- summary(0)
  test.summary[] <- c(-0.2110, -0.0500, 0.0946, 0.1250, 0.2680, 0.7630)                   
  checkEqualsNumeric( test.summary, summary(cr), tolerance = 0.001)
  
  cr <- corr("specdata", 400)
  checkEqualsNumeric(c(-0.01896, -0.04390, -0.06816, -0.07589,  0.76313, -0.15783), head(cr), tolerance = 0.0001 )
  test.summary <- summary(0)
  test.summary[] <- c(-0.1760, -0.0311,  0.1000,  0.1400,  0.2680,  0.7630)                   
  checkEqualsNumeric( test.summary, summary(cr), tolerance = 0.001)
  
  cr <- corr("specdata", 5000)
  checkEqualsNumeric(0, length(cr))
  
  cr <- corr("specdata")
  checkEqualsNumeric(323, length(cr))
  test.summary <- summary(0)
  test.summary[] <- c(-1.0000, -0.0528,  0.1070,  0.1370,  0.2780,  1.0000)                   
  checkEqualsNumeric( test.summary, summary(cr), tolerance = 0.002)
  
}

clearLog()
print(runTest(corr))
