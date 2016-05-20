library(googleVis)
?googleVis

# matched with alignment length > 200bp, identity > 99:
plot_99_200_length = read.csv('/Users/weizhisong/Desktop/matches_99_lt_200_sum.csv', header = TRUE)
plot_99_200_length
Sankey_plot_99_200_length <- gvisSankey(plot_99_200_length, from="Illumina", to="PacBio", weight="Total_alignment_length", 
                                        options = list(sankey = "{node:{colorMode:'unique', labelPadding: 10 },link:{colorMode:'source'}}",
                                                       height = 1500, width = 600))
plot(Sankey_plot_99_200_length)
