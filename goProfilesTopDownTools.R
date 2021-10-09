
equivalencies <- function(disMat, cutPoints, cutProportions) {
  if (missing(cutPoints)) {
    d2Emax <- max(disMat)
    if (missing(cutProportions)) {
      cutProportions <- c(0.1, 0.2)
    } else {
      cutProportions <- sort(cutProportions)
    }
    cutPoints <- d2Emax * cutProportions
  } else {
    cutPoints <- sort(cutPoints)
  }
  cutNames <- paste("cut", round(cutPoints, digits = 4), sep = "_")
  equivPairs <- lapply(cutNames, function(cutNam) NULL)
  names(equivPairs) <- cutNames
  mat <- as.matrix(disMat)
  mat[upper.tri(mat, diag = TRUE)] <- Inf
  prevMat <- matrix(FALSE, nrow = nrow(mat), ncol = ncol(mat))
  for (iCut in 1:length(cutPoints)) {
    cutPoint <- cutPoints[iCut]
    mat1 <- mat <= cutPoint
    mat[mat1 & !prevMat] <- cutPoint
    prevMat <- mat1
    equivs <- which(mat <= cutPoint, arr.ind = TRUE)
    equivPairs[[iCut]] <- matrix(c(row.names(equivs), row.names(mat)[equivs[,2]]), nrow = nrow(equivs))
  }
  mat[prevMat] <- round(mat[prevMat], digits = 4)
  mat[!prevMat] <- NaN
  return(list(equivAt = as.dist(mat), equivPairs = equivPairs))
}

countPairs <- function(equivs, iCutPoint) {
  table(unlist(sapply(equivs, function(lev) {
    apply(lev$equivPairs[[iCutPoint]], 1, function(listNams){
      paste(listNams[1], listNams[2], sep = ",")
    })
  })))
}
