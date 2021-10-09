source("goProfilesTopDownTools.R")

load("allOnco_gene_lists_equiv_clust.rda")

# equivalencies(disMat, cutProportions = c(0.1, 0.2, 0.3))
# equivs <- equivalencies(disMat)
# equivs$equivAt
# equivs$equivPairs

equivsBP <- lapply(genListsClusters$BP, function(thisLev){
  equivalencies(attr(thisLev, "distMat"), cutProportions = c(0.05, 0.1, 0.2))
})
equivsBP
countPairs(equivsBP, iCutPoint = 1)
countPairs(equivsBP, iCutPoint = 2)
countPairs(equivsBP, iCutPoint = 3)

equivsCC <- lapply(genListsClusters$CC, function(thisLev){
  equivalencies(attr(thisLev, "distMat"), cutProportions = c(0.05, 0.1, 0.2))
})
equivsCC
countPairs(equivsCC, iCutPoint = 1)
countPairs(equivsCC, iCutPoint = 2)
countPairs(equivsCC, iCutPoint = 3)

equivsMF <- lapply(genListsClusters$MF, function(thisLev){
  equivalencies(attr(thisLev, "distMat"), cutProportions = c(0.05, 0.1, 0.2))
})
equivsMF
countPairs(equivsMF, iCutPoint = 1)
countPairs(equivsMF, iCutPoint = 2)
countPairs(equivsMF, iCutPoint = 3)

