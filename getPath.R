getPath<-function(p, sNode, dNode, path=dNode)
{
  #base conditon
  if(sNode==dNode) 
    return ((path))
  #if no path exists
  else if(is.na(p[dNode])==TRUE) return("No Path Exists")
  #recursive step
  else
  {
    PrintPath(p, sNode, p[dNode], c(p[dNode], path))
  }
}







