
sampler <- function(fileNumber, fileCharacter) {
  fileName <- sprintf("%02d%s.csv", fileNumber, fileCharacter)
  print(fileName)
  sample <- read.csv(fileName)
  colnames(sample) <- c("time", "Sr")
  return(sample)
}

save_as_png = function(plot_maker, filename) {
  png(sprintf("%s/%s.png", outputDirectory, filename))
  plot_maker(data)
  dev.off()
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
