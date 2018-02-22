getEdgeWeight<-function(g, u, v)
{
  #using base igraph function to get weight of an edge with specified nodes
  return(E(g)$weight[get.edge.ids(g, c(u,v))])
}

getPathWeight<-function(g, path)
{
  #unreacheable case
  if(path=="No Path Exists")
    return (Inf)
  #calculating path weight if exists
  weight<-0
  for(i in 1:(length(path)-1))
  {
    weight<-weight+getEdgeWeight(g, path[i], path[i+1])
  }
  return (weight)
}
