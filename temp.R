
library(igraph)
g1 <- graph( edges=c(1,2, 2,3, 3,4, 4,1), n=3, directed=F ) 
plot(g1,vertex.size=30, edge.width=2, edge.color="blue")
E(g1)
V(g1)
g1[]

tree <- make_tree(60, children = 4, mode = "undirected")
plot(tree, vertex.size=12, vertex.label=NA) 

g <- make_ring(10)
plot(g, layout=layout_with_kk, vertex.color="green")

library(visNetwork)
nodes <- read.csv("data/nodes.txt",sep="\t",stringsAsFactors=FALSE)
edges <- read.csv("data/edges.txt",sep="\t",stringsAsFactors=FALSE)
visNetwork(nodes,edges,main="Network graph", submain="Projects (green), executables (blue), external ref (red)")

