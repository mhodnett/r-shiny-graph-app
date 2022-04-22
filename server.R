library(readr)
library(visNetwork)

function(input, output, session) {


  output$network <- renderVisNetwork({
    nodes <- read.csv("data/nodes.txt",sep="\t",stringsAsFactors=FALSE)
    edges <- read.csv("data/edges.txt",sep="\t",stringsAsFactors=FALSE)
    visNetwork(nodes,edges,main="System graph", submain="Systems (green), databases (blue), other libraries (red)")
  })
  
  output$net_graph<- renderUI({
    file <- "data/network.html"
    html <- read_file(file)
    return (HTML(html))
  })

}
