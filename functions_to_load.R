getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

plot_trace<-function(runInfoObj, name, transf=NULL, ylim=NULL, plot=TRUE){
  if(name!="nClusters"){
    file <-  paste(runInfoObj$directoryPath,"/",runInfoObj$fileStem,"_",name,".txt",sep='')
    con <- file(description=file, open="r")
    com <- paste("wc -l ", file, " | awk '{ print $1 }'", sep="")
    n <- as.numeric(system(command=com, intern=TRUE))
    
    param<-rep(0,n)
    for(i in 1:n){
      param[i]<- scan(file=con, nlines=1, quiet=TRUE)
    }
    close(con)
    
  }else{
    file <-  paste(runInfoObj$directoryPath,"/",runInfoObj$fileStem,"_nMembers.txt",sep='')
    con <- file(description=file, open="r")
    com <- paste("wc -l ", file, " | awk '{ print $1 }'", sep="")
    n <- as.numeric(system(command=com, intern=TRUE))
    
    param <- rep(NA, n)
    for(i in 1:n){
      nM<- scan(file=con, nlines=1, quiet=TRUE)
      param[i] <- length(which(nM[-length(nM)]>0))
    }
    close(con)
  }
  
  if(!is.null(transf)){
    param <- sapply(param, eval(transf))
  }
  
  if(is.null(ylim))
    ylim<-c(min(param), max(param))
  
  if(plot){
    par(mfrow=c(1,1))
    plot(param,type='l', ylab=name, ylim=ylim)
  }
  return(param)
}


myheatDissMat <- function (dissimObj, main = NULL, xlab = NULL, ylab = NULL, order = NULL)
{
  nSbj <- dissimObj$disSimRunInfoObj$nSubjects
  col.labels <- c("0", "0.5", "1")
  colours <- colorRampPalette(c("white", "black"))(10)
  dissMat <- vec2mat(dissimObj$disSimMat, nrow = nSbj)

  d<-heatmap(1 - dissMat, keep.dendro = FALSE, symm = TRUE, Rowv = order,
          labRow = FALSE, labCol = FALSE, margins = c(4.5, 4.5),
          col = colours, main = main, xlab = xlab, ylab = ylab)
  d
  plotrix::color.legend(0.95, 0.7, 1, 1, legend = col.labels, colours,
                        gradient = "y", align = "rb")
  return(d)
}

