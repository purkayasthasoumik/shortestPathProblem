DagShortestPath<-function(g, sourceNode=1, destNode=2)
{
  if(destNode<sourceNode) {stop("No path exists in acyclic graph.")}
  if(length(neighbors(g, sourceNode))==0) {stop("No path exists.")}
  #topologically sort vertices of graph. 
  V.topoSorted<-topo_sort(g,mode="out")
  
  #initialise single source
  d<-rep(vcount(g)-1, vcount(g))
  p<-array(dim=vcount(g))
  d[sourceNode]<-0
  
  #travelling through graph in topological order
  for(u in V.topoSorted)
  {
    if(length(neighbors(g,u))==0) next
    for(v in as.vector(neighbors(g, u)))
    {
      w<-E(g)$weight[get.edge.ids(g, c(u,v))]
      #relaxation
      if(d[v]>d[u]+w)
      {
        d[v]<-d[u]+w
        p[v]<-u
      }
    }
  }
  return (getPath(p, sNode=sourceNode, dNode=destNode))
}
# #TestCode
# g<-makeDAG()
# plotGraph(g)
# path<-DagShortestPath(g, 3, 10)
# weight<-getPathWeight(g, path)
# output<-list(path, weight)
# names(output)<-c("Path", "Weight")
# output