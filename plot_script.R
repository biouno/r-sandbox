library(ape)

# Simple script that plots a tree

args <- commandArgs(TRUE) # command arguments
if(length(args) >= 2) {
	f <- args[1] # [1] is the INPUT
	tree <- read.nexus(file = f) 
	output <- args[2] # [2] is the OUTPUT
	png(output, width=800, height=800, res=72)
	plot(tree, ask=FALSE)
	dev.off()
} else {
	print("WUT?");
}