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

Summary of code files:

	1. plotGraph(g):  to plot a graph g with numbering of nodes and edge weights (if applicable).

	2. makeGraph(n,p):  to generate a random graph according to Erdos Renyi G(n,p) model.

	3. makeDAG(n, p):  to generate a DAG of sizen.

	4. getPath(g, p, sourceNode, destNode):  to generate a path using the predecessor array p from sourceNode to destNode.

	5. getWeight(g, path):  to get weight of a path in graph g.

	6. BellmanFord(g, sourceNode, destNode)to implement Bellman Ford algorithm on graph g from sourceNode to destNode.

	7. DagShortestPath(g, sourceNode, destNode)to find shortest path on DAG g from sourceNode to destNode.

	8. Dijkstra(g, sourceNode, destNode)to implement Dijkstra’s algorithm on graphg from sourceNode to destNode.

	9. erdos(): A code to generate the collaboration graph to find Erdos number from a given text file containing names of authors and a list of collaborations between them.
