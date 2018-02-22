makeDAG<-function(n=10, weight=T, p=0.5)
{
  #weighted DAG
  if(weight==T)
  {
    adj.matrix<-round(matrix(rbinom(n*n, 1, p)*runif(n*n), ncol=n),2)
    #making matrix upper triangular
    adj.matrix[!upper.tri(adj.matrix)]<-0
  }
  #unweighted DAG
  else
  {
    adj.matrix<-matrix(rbinom(n*n, 1, p), ncol=n)
    adj.matrix[!upper.tri(adj.matrix)]<-0
  }
  g<-graph_from_adjacency_matrix(adj.matrix, mode="directed", weighted=TRUE)
  return (g)
}



