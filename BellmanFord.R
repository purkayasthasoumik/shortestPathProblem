BellmanFord<-function(g, sourceNode, destNode)
{
#check if graph is directed or not. Convert if undirected. 
if(is.directed(g)==F) g<-as.directed(g, mode="mutual")
#Initialise Single Source
d<-rep(vcount(g)-1, vcount(g))
p<-array(dim=vcount(g))
d[sourceNode]<-0
for(i in 1:(vcount(g)-1))
  {
    for(j in 1:ecount(g))
    {
      u<-ends(g,j)[1,1]
      v<-ends(g,j)[1,2]
      w<-E(g)$weight[j]
      #Relaxation
      if(d[v]>d[u]+w)
      {
        d[v]<-d[u]+w
        p[v]<-u
      }
    }
  }
#checking for negative weight cycles.  
for(j in 1:ecount(g))
  {
    u<-ends(g,j)[1,1]
    v<-ends(g,j)[1,2]
    w<-E(g)$weight[j]
    #Checking for negative weigh cycles. 
    if(d[v]>d[u]+w) 
      {
        stop("Graph contains negative weight cycles.")
      }
  }
return(getPath(p, sourceNode, destNode))
}
# #Test code:
# g<-makeRandomGraph(12, 0.25, F)
# plotGraph(g)
# path<-BellmanFord(g, 1, 8)
# weight<-getPathWeight(g, path)
# output<-list(path, weight)
# names(output)<-c("Path", "Weight")
# output