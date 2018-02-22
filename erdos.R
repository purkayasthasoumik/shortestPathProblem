authors<-as.character(read.table("authors.txt")$V2)

collabGraph<-graph.empty(length(authors), directed=FALSE)

arcs<-scan("arcs.txt", what = "", sep = "\n")

#finding arcs in the graph (sequence of edges)
edges<-list(length(arcs))

for(i in 1:length(arcs))
{
  edges[[i]]<-as.integer(unlist(strsplit(arcs[i]," ")))
}

#adding names to nodes
V(collabGraph)$labels=authors

#adding edges by traversing through arcs
t1<-Sys.time()
for(i in 1:length(edges))
{
  a<-edges[[i]][1:(length(edges[[i]])-1)]
  b<-edges[[i]][2:(length(edges[[i]]))]
  edgePairs<-cbind(a,b)
  for(j in 1:nrow(edgePairs))
  {
    collabGraph<-add.edges(collabGraph, edgePairs[j,], weight=1)
  }
}
t2<-Sys.time()
t2-t1

