module Graph where

-- | Problem #80: (***) Conversions
-- >>> graphToAdj Graph ['b','c','d','f','g','h','k'] [('b','c'),('b','f'),('c','f'),('f','k'),('g','h')]
-- Adj [('b', "cf"), ('c', "bf"), ('d', ""), ('f', "bck"), ('g', "h"), ('h', "g"), ('k', "f")]
graphToAdj = undefined

-- | Problem #81: (**) Path from one node to another one
-- >>> paths 1 4 [(1,2),(2,3),(1,3),(3,4),(4,2),(5,6)]
-- [[1,2,3,4],[1,3,4]]
-- >>> paths 2 6 [(1,2),(2,3),(1,3),(3,4),(4,2),(5,6)]
-- []
paths = undefined

-- | Problem #82: (*) Cycle from a given node
-- >>> cycle 2 [(1,2),(2,3),(1,3),(3,4),(4,2),(5,6)]
-- [[2,3,4,2]]
-- >>> cycle 1 [(1,2),(2,3),(1,3),(3,4),(4,2),(5,6)]
-- []
cycle = undefined

-- | Problem #83: (**) Construct all spanning trees
-- >>> length $ spanningTree k4
-- 16
spanningTree = undefined

-- | Problem #84: (**) Construct the minimal spanning tree
-- >>> prim [1,2,3,4,5] [(1,2,12),(1,3,34),(1,5,78),(2,4,55),(2,5,32),(3,4,61),(3,5,44),(4,5,93)]
-- [(1,2,12),(1,3,34),(2,4,55),(2,5,32)]
prim = undefined

-- | Problem #85: (**) Graph isomorphism
-- >>> graphG1 = [1,2,3,4,5,6,7,8] [(1,5),(1,6),(1,7),(2,5),(2,6),(2,8),(3,5),(3,7),(3,8),(4,6),(4,7),(4,8)]
-- >>> graphH1 = [1,2,3,4,5,6,7,8] [(1,2),(1,4),(1,5),(6,2),(6,5),(6,7),(8,4),(8,5),(8,7),(3,2),(3,4),(3,7)]
-- >>> iso graphG1 graphH1
-- True
graphG1 = undefined

-- | Problem #86: (**) Node degree and graph coloration
-- >>> kColor ['a','b','c','d','e','f','g','h','i','j'] [('a','b'),('a','e'),('a','f'),('b','c'),('b','g'),('c','d'),('c','h'),('d','e'),('d','i'),('e','j'),('f','h'),('f','i'),('g','i'),('g','j'),('h','j')]
-- [('a',1),('b',2),('c',1),('d',2),('e',3),('f',2),('g',1),('h',3),('i',3),('j',2)]
kColor = undefined

-- | Problem #87: (**) Depth-first order graph traversal (alternative solution)
-- >>> depthFirst ([1,2,3,4,5,6,7], [(1,2),(2,3),(1,4),(3,4),(5,2),(5,4),(6,7)]) 1
-- [1,2,3,4,5]
depthFirst = undefined

-- | Problem #88: (**) Connected components (alternative solution)
-- >>> connectedComponents ([1,2,3,4,5,6,7], [(1,2),(2,3),(1,4),(3,4),(5,2),(5,4),(6,7)])
-- [[1,2,3,4,5][6,7]]
connectedComponents = undefined

-- | Problem #89: (**) Bipartite graphs
-- >>> bipartite ([1,2,3,4,5],[(1,2),(2,3),(1,4),(3,4),(5,2),(5,4)])
-- True
-- >>> bipartite ([1,2,3,4,5],[(1,2),(2,3),(1,4),(3,4),(5,2),(5,4),(1,3)])
-- False
bipartite = undefined
