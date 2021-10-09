library(goProfiles)

load("pbtGeneLists2.rda")

pbtGeneLists2
sapply(pbtGeneLists2, length)

# Slow process, partitioned in partial tasks:
genListsClustersBP3to5 <- iterEquivClust(pbtGeneLists2, ontos = "BP", ontoLevels = 3:5,
                                         jobName = "PBT_gene_lists_equiv_clust_BP_levels3to5",
                                         ylab = "Equivalence threshold distance",
                                         orgPackage="org.Hs.eg.db", method = "complete")
  
save(genListsClustersBP3to5, file = paste0(attr(genListsClustersBP3to5, "jobName"), ".rda", sep =""))
equivClust2pdf(genListsClustersBP3to5, jobName = attr(genListsClustersBP3to5, "jobName"))

genListsClustersBP6to7 <- iterEquivClust(pbtGeneLists2, ontos = "BP", ontoLevels = 6:7,
                                         # onTheFlyDev = "windows",  # substituiu per un altre dispositiu gràfic, 
                                         # p.e. "x11" en sistemes Linux, o simplement elimineu aquesta línia
                                         # i no es dibuixarà sobre la marxa cada dendrograma
                                         jobName = "PBT_gene_lists_equiv_clust_BP_levels6to7",
                                         ylab = "Equivalence threshold distance",
                                         orgPackage="org.Hs.eg.db", method = "complete")

save(genListsClustersBP6to7, file = paste0(attr(genListsClustersBP6to7, "jobName"), ".rda", sep =""))
equivClust2pdf(genListsClustersBP6to7, jobName = attr(genListsClustersBP6to7, "jobName"))

genListsClustersBP8to9 <- iterEquivClust(pbtGeneLists2, ontos = "BP", ontoLevels = 8:9,
                                         # onTheFlyDev = "windows",  # substituiu per un altre dispositiu gràfic, 
                                         # p.e. "x11" en sistemes Linux, o simplement elimineu aquesta línia
                                         # i no es dibuixarà sobre la marxa cada dendrograma
                                         jobName = "PBT_gene_lists_equiv_clust_BP_levels8to9",
                                         ylab = "Equivalence threshold distance",
                                         orgPackage="org.Hs.eg.db", method = "complete")

save(genListsClustersBP8to9, file = paste0(attr(genListsClustersBP8to9, "jobName"), ".rda", sep =""))
equivClust2pdf(genListsClustersBP8to9, jobName = attr(genListsClustersBP8to9, "jobName"))

genListsClustersBP10 <- iterEquivClust(pbtGeneLists2, ontos = "BP", ontoLevels = 10,
                                       # onTheFlyDev = "windows",  # substituiu per un altre dispositiu gràfic,
                                       # p.e. "x11" en sistemes Linux, o simplement elimineu aquesta línia
                                       # i no es dibuixarà sobre la marxa cada dendrograma
                                       jobName = "PBT_gene_lists_equiv_clust_BP_level10",
                                       ylab = "Equivalence threshold distance",
                                       orgPackage="org.Hs.eg.db", method = "complete")

save(genListsClustersBP10, file = paste0(attr(genListsClustersBP10, "jobName"), ".rda", sep =""))
equivClust2pdf(genListsClustersBP10, jobName = attr(genListsClustersBP10, "jobName"))

# INTERROMPUT 31/05/2021 ---> CONTINUAR AQUÍ
genListsClustersCC3to5 <- iterEquivClust(pbtGeneLists2, ontos = "CC", ontoLevels = 3:5,
                                         jobName = "PBT_gene_lists_equiv_clust_CC_levels3to5",
                                         ylab = "Equivalence threshold distance",
                                         orgPackage="org.Hs.eg.db", method = "complete")

save(genListsClustersCC3to5, file = paste0(attr(genListsClustersCC3to5, "jobName"), ".rda", sep =""))
equivClust2pdf(genListsClustersCC3to5, jobName = attr(genListsClustersCC3to5, "jobName"))

genListsClustersCC6to7 <- iterEquivClust(pbtGeneLists2, ontos = "CC", ontoLevels = 6:7,
                                         jobName = "PBT_gene_lists_equiv_clust_CC_levels6to7",
                                         ylab = "Equivalence threshold distance",
                                         orgPackage="org.Hs.eg.db", method = "complete")

save(genListsClustersCC6to7, file = paste0(attr(genListsClustersCC6to7, "jobName"), ".rda", sep =""))
equivClust2pdf(genListsClustersCC6to7, jobName = attr(genListsClustersCC6to7, "jobName"))

genListsClustersCC8to9 <- iterEquivClust(pbtGeneLists2, ontos = "CC", ontoLevels = 8:9,
                                         jobName = "PBT_gene_lists_equiv_clust_CC_levels8to9",
                                         ylab = "Equivalence threshold distance",
                                         orgPackage="org.Hs.eg.db", method = "complete")

save(genListsClustersCC8to9, file = paste0(attr(genListsClustersCC8to9, "jobName"), ".rda", sep =""))
equivClust2pdf(genListsClustersCC8to9, jobName = attr(genListsClustersCC8to9, "jobName"))

genListsClustersCC10 <- iterEquivClust(pbtGeneLists2, ontos = "CC", ontoLevels = 10,
                                       jobName = "PBT_gene_lists_equiv_clust_CC_level10",
                                       ylab = "Equivalence threshold distance",
                                       orgPackage="org.Hs.eg.db", method = "complete")

save(genListsClustersCC10, file = paste0(attr(genListsClustersCC10, "jobName"), ".rda", sep =""))
equivClust2pdf(genListsClustersCC10, jobName = attr(genListsClustersCC10, "jobName"))


genListsClustersMF3to5 <- iterEquivClust(pbtGeneLists2, ontos = "MF", ontoLevels = 3:5,
                                         jobName = "PBT_gene_lists_equiv_clust_MF_levels3to5",
                                         ylab = "Equivalence threshold distance",
                                         orgPackage="org.Hs.eg.db", method = "complete")

save(genListsClustersMF3to5, file = paste0(attr(genListsClustersMF3to5, "jobName"), ".rda", sep =""))
equivClust2pdf(genListsClustersMF3to5, jobName = attr(genListsClustersMF3to5, "jobName"))

genListsClustersMF6to7 <- iterEquivClust(pbtGeneLists2, ontos = "MF", ontoLevels = 6:7,
                                         jobName = "PBT_gene_lists_equiv_clust_MF_levels6to7",
                                         ylab = "Equivalence threshold distance",
                                         orgPackage="org.Hs.eg.db", method = "complete")

save(genListsClustersMF6to7, file = paste0(attr(genListsClustersMF6to7, "jobName"), ".rda", sep =""))
equivClust2pdf(genListsClustersMF6to7, jobName = attr(genListsClustersMF6to7, "jobName"))

genListsClustersMF8to9 <- iterEquivClust(pbtGeneLists2, ontos = "MF", ontoLevels = 8:9,
                                         jobName = "PBT_gene_lists_equiv_clust_MF_levels8to9",
                                         ylab = "Equivalence threshold distance",
                                         orgPackage="org.Hs.eg.db", method = "complete")

save(genListsClustersMF8to9, file = paste0(attr(genListsClustersMF8to9, "jobName"), ".rda", sep =""))
equivClust2pdf(genListsClustersMF8to9, jobName = attr(genListsClustersMF8to9, "jobName"))

genListsClustersMF10 <- iterEquivClust(pbtGeneLists2, ontos = "MF", ontoLevels = 10,
                                       jobName = "PBT_gene_lists_equiv_clust_MF_level10",
                                       ylab = "Equivalence threshold distance",
                                       orgPackage="org.Hs.eg.db", method = "complete")

save(genListsClustersMF10, file = paste0(attr(genListsClustersMF10, "jobName"), ".rda", sep =""))
equivClust2pdf(genListsClustersMF10, jobName = attr(genListsClustersMF10, "jobName"))

genListsClusters <- list(BP = NULL, CC = NULL, MF = NULL)
genListsClusters$BP <- c(genListsClustersBP3to5$BP, genListsClustersBP6to7$BP, genListsClustersBP8to9$BP, genListsClustersBP10$BP)
genListsClusters$CC <- c(genListsClustersCC3to5$CC, genListsClustersCC6to7$CC, genListsClustersCC8to9$CC, genListsClustersCC10$CC)
genListsClusters$MF <- c(genListsClustersMF3to5$MF, genListsClustersMF6to7$MF, genListsClustersMF8to9$MF, genListsClustersMF10$MF)

class(genListsClusters) <- class(genListsClustersMF8to9)

save(genListsClusters, file = "PBT_gene_lists_equiv_clust.rda")
equivClust2pdf(genListsClusters, jobName = "PBT_gene_lists_equiv_clust")

