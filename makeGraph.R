makeRandomGraph<-function(n=10, p=0.35, direct=TRUE, weight=TRUE)
{
  if(direct==TRUE & weight==TRUE)
  {
    #making adjacency matrix
    s<-matrix(round(rbinom(n*n,1, p)*runif(n*n),2),n)
    diag(s)<-rep(0, n)
    #generating graph from adjacency matrix
    g<-graph_from_adjacency_matrix(s, mode = "directed", weighted = TRUE)
    return (g)
  }
  if(direct==TRUE & weight==FALSE)
  {
    #making adjacency matrix
    s<-matrix(rbinom(n*n,1, p),n)
    diag(s)<-rep(0, n)
    #generating graph from adjacency matrix
    g<-graph_from_adjacency_matrix(s, mode = "directed", weighted = TRUE)
    return (g)
  }
  if(direct==FALSE & weight==TRUE)
  {
    #making adjacency matrix
    s<-matrix(round(rbinom(n*n,1, p)*runif(n*n),2),n)
    s[lower.tri(s)] = rep(0, n*(n-1)/2)
    diag(s)<-rep(0, n)
    #generating graph from adjacency matrix
    g<-graph_from_adjacency_matrix(s, mode = "undirected", weighted = TRUE)
    return (g)
  }
  if(direct==FALSE & weight==FALSE)
  {
    #making adjacency matrix
    s<-matrix(rbinom(n*n,1, p),n)
    s[lower.tri(s)] = rep(0, n*(n-1)/2)
    diag(s)<-rep(0, n)
    #generating graph from adjacency matrix
    g<-graph_from_adjacency_matrix(s, mode = "undirected", weighted = TRUE)
    return (g)
  }
}


