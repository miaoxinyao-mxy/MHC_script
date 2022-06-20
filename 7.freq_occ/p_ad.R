args <- commandArgs(T)
input<-read.table(args[1],header=F,sep="\t",row.names=1)
p<-input[,ncol(input)]
p_ad<-p.adjust(p,method="BH")
input$q.value<-p_ad
write.table(input,args[2],sep="\t",quote=F)


