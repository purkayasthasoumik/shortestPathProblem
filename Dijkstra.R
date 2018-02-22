Dijkstra<-function(g, sourceNode, destNode)
{
  library(liqueueR)
  q<-PriorityQueue$new()
  #Initialise Single Source
  d<-rep(vcount(g)-1, vcount(g))
  p<-array(dim=vcount(g))
  d[sourceNode]<-0
  s<-NULL
  for(v in V(g))
  {
    #use of min-priority queue
    q$push(v, exp(-d[v]))
  }
  
  while(q$size()!=0)
  {
    u<-q$pop()
    s<-c(s,u)
    if(length(neighbors(g, u))==0) next
    for(v in as.vector(neighbors(g, u)))
      {
        w<-E(g)$weight[get.edge.ids(g, c(u,v))]
        #edgewise relaxation
        if(d[v]>d[u]+w)
        {
          d[v]<-d[u]+w
          p[v]<-u
          q$priorities[which(q$data==v)]<-exp(-d[v])
        }
      }
    }
  return (getPath(p, sourceNode, destNode))
}
# #Test code:
# path<-Dijkstra(collabGraph, 2, 6927)
# pathLength<-length(path)-1
# output<-list(V(collabGraph)$labels[path], pathLength)
# names(output)=c("Authors", "Path Length")
# output