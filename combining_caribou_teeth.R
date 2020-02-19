
sampler <- function(fileNumber, fileCharacter) {
  fileName <- sprintf("%02d%s.csv", fileNumber, fileCharacter)
  sample <- read.csv(fileName)
  colnames(sample) <- c("time", "Sr")
  return(sample)
}


for (fileCount in 1:15) {
  sampleA <- sampler(fileCount, 'A')
  sampleB <- sampler(fileCount, 'B')
  sampleC <- sampler(fileCount, 'C')

  png(sprintf("%02d.png", fileCount))
  sample01 <- rbind(sampleA, sampleB, sampleC)
  plot(sample01, type = "p", pch = 20, cex = 0.5)
  dev.off()

}
