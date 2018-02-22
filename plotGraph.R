plotGraph<-function(g, label=T)
{
  #plot with edge labels - for weighted graphs
  if(label==TRUE)  plot(g, frame=T, edge.curved=T, edge.label=E(g)$weight,vertex.color="red", edge.width=1, edge.arrow.size=0.5, edge.color="black", vertex.label.color="white")
  #plot with edge labels - for weighted graphs
  else plot(g, frame=T, edge.curved=T, vertex.color="red", edge.width=1, edge.arrow.size=0.5, edge.color="black", vertex.label.color="white")
  
  #make headings and subtitles
  text.main<-paste("Graph with",vcount(g), "nodes and", ecount(g), "edges")
  title(main=text.main)
  text.sub<-paste("Graph is", ifelse(is.directed(g)==TRUE,"", "not") ,"directed")
  mtext(side=1, text=text.sub, line=1.2)
}

