# shortestPathProblem
ICP 2017-18 Project
Updates:
	1. Proposal sent on time.
	2. Coding for 25th to 28th Jan. 
	3. Spillover on 3rd Feb. Began report. Codes uploaded. First edition without comments. 
	4. Report over on 15th Feb. Presentation start. 
	5. WordGraphs taking too much time. Shift to Erdos? Check if code is slow. 
	6. Code seems fine. Maybe better luck with Erdos. Ask sir. 
	7. Erdos through. Change proposal and report. 
	8. Final Code uploaded 22.02.2018. 
	9. Erdos collabGraph data files uploaded as well: authors.txt and arcs.txt

Files uploaded on 22.02.2018

Report compiled and ready. 

Presentation almost done. 

1. plotGraph(g):  to plot a graphgwith numbering of nodes and edge weights (if applicable).
2. makeGraph(n,p):  to generate a random graph according to Erdos Renyi G(n,p) model.
3. makeDAG(n, p):  to generate a DAG of sizen.
4. getPath(g, p, sourceNode, destNode):  to generate a path using the predecessor arraypfromsourceNodetodestNode.
5. getWeight(g, path):  to get weight of apathin graphg.
6. BellmanFord(g, sourceNode, destNode)to implement Bellman Ford algorithm on graphgfromsourceNodetodestNode.
7. DagShortestPath(g, sourceNode, destNode)to find shortest path on DAGgfromsourceNodetodestNode.
8. Dijkstra(g, sourceNode, destNode)to implement Dijkstra’s algorithm on graphgfromsourceNodetodestNode.
9. erdos(): A code to generate the collaboration graph to find Erdos number from a given text file containingnames of authors and a list of collaborations between them.
