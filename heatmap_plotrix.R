library(plotrix)
setwd("/Users/weizhisong/Desktop")

chromosome = read.csv("COG_for_chromosome_genes.csv")
chromosome
chromosome_matrix = as.matrix(chromosome)
chromosome_matrix
color2D.matplot(chromosome_matrix, xlab="genomes", ylab="COG Categories", show.legend=T, border=NA, color.spec="rgb", cs1=c(0,1), cs2=c(0,0), cs3=c(0,0))
