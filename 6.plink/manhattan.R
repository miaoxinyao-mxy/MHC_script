args=(commandArgs(T))
library(qqman)
data=read.table(args[1], header=TRUE); data=data[!is.na(data$P),]
pdf(args[2], width=20, height=10)
manhattan(data, p = "FDR_BH", col ="blue4",suggestiveline = 8,genomewideline = 10,annotateTop=TRUE, cex = 1.2, xlim=c(27000000,35000000));
dev.off()
pdf(args[3], width=10, height=10)
qq(data$FDR_BH,main = "Q-Q plot of GWAS p-values")
dev.off()
