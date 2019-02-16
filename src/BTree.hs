module BTree where

-- | Problem #55: (**) Construct completely balanced binary trees
-- >>> cbalTree 4
-- [
-- -- permutation 1
-- --     x
-- --    / \
-- --   x   x
-- --        \
-- --         x
-- Branch 'x' (Branch 'x' Empty Empty)
--            (Branch 'x' Empty
--                        (Branch 'x' Empty Empty)),
--
-- -- permutation 2
-- --     x
-- --    / \
-- --   x   x
-- --      /
-- --     x
-- Branch 'x' (Branch 'x' Empty Empty)
--            (Branch 'x' (Branch 'x' Empty Empty)
--                        Empty),
--
-- -- permutation 3
-- --     x
-- --    / \
-- --   x   x
-- --    \
-- --     x
-- Branch 'x' (Branch 'x' Empty
--                        (Branch 'x' Empty Empty))
--            (Branch 'x' Empty Empty),
--
-- -- permutation 4
-- --     x
-- --    / \
-- --   x   x
-- --  /
-- -- x
-- Branch 'x' (Branch 'x' (Branch 'x' Empty Empty)
--                        Empty)
--            (Branch 'x' Empty Empty)
-- ]
cbalTree = undefined

-- | Problem #56: (**) Symmetric binary trees
-- >>> symmetric (Branch 'x' (Branch 'x' Empty Empty) Empty)
-- False
-- >>> symmetric (Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty Empty))
-- True
symmetric = undefined

-- | Problem #57: (**) Binary search trees (dictionaries)
-- >>> construct [3, 2, 5, 7, 1]
-- Branch 3 (Branch 2 (Branch 1 Empty Empty) Empty) (Branch 5 Empty (Branch 7 Empty Empty))
-- >>> symmetric . construct $ [5, 3, 18, 1, 4, 12, 21]
-- True
-- >>> symmetric . construct $ [3, 2, 5, 7, 1]
-- True
construct = undefined

-- | Problem #58: (**) Generate-and-test paradigm
-- >>> symCbalTrees 5
-- [Branch 'x' (Branch 'x' Empty (Branch 'x' Empty Empty)) (Branch 'x' (Branch 'x' Empty Empty) Empty),Branch 'x' (Branch 'x' (Branch 'x' Empty Empty) Empty) (Branch 'x' Empty (Branch 'x' Empty Empty))]
symCbalTrees = undefined

-- | Problem #59: (**) Construct height-balanced binary trees
-- >>> take 4 $ hbalTree 'x' 3
-- [Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty (Branch 'x' Empty Empty)),
--  Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' (Branch 'x' Empty Empty) Empty),
--  Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty Empty)),
--  Branch 'x' (Branch 'x' Empty (Branch 'x' Empty Empty)) (Branch 'x' Empty Empty)]
hbalTree = undefined

-- | Problem #60: (**) Construct height-balanced binary trees with a given number of nodes
-- minNodes
-- maxHeight
-- >>> length $ hbalTreeNodes 'x' 15
-- 1553
-- >>> map (hbalTreeNodes 'x') [0..3]
-- [[Empty],
--  [Branch 'x' Empty Empty],
--  [Branch 'x' Empty (Branch 'x' Empty Empty),Branch 'x' (Branch 'x' Empty Empty) Empty],
--  [Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty Empty)]]
hbalTreeNodes = undefined

-- | Problem #61: Count the leaves of a binary tree
-- >>> countLeaves tree4
-- 2
countLeaves = undefined

-- | Problem #61A: Collect the leaves of a binary tree in a list
-- >>> leaves tree4
-- [4,2]
leaves = undefined

-- | Problem #62: Collect the internal nodes of a binary tree in a list
-- >>> internals tree4
-- [1,2]
internals = undefined

-- | Problem #62B: Collect the nodes at a given level in a list
-- >>> atLevel tree4 2
-- [2,2]
atLevel = undefined

-- | Problem #63: Construct a complete binary tree
-- >>> completeBinaryTree 4
-- Branch 'x' (Branch 'x' (Branch 'x' Empty Empty) Empty) (Branch 'x' Empty Empty)
--
-- >>> isCompleteBinaryTree $ Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty Empty)
-- True
completeBinaryTree = undefined

-- | Problem #64: Given a binary tree as the usual Prolog term t(X,L,R) (or nil). As a preparation for drawing the tree, a layout algorithm is required to determine the position of each node in a rectangular grid. Several layout methods are conceivable, one of them is shown in the illustration below:
-- tree64 = Branch 'n'
--                 (Branch 'k'
--                         (Branch 'c'
--                                 (Branch 'a' Empty Empty)
--                                 (Branch 'h'
--                                         (Branch 'g'
--                                                 (Branch 'e' Empty Empty)
--                                                 Empty
--                                         )
--                                         Empty
--                                 )
--                         )
--                         (Branch 'm' Empty Empty)
--                 )
--                 (Branch 'u'
--                         (Branch 'p'
--                                 Empty
--                                 (Branch 's'
--                                         (Branch 'q' Empty Empty)
--                                         Empty
--                                 )
--                         )
--                         Empty
--                 )
-- >>> layout tree64
-- Branch ('n',(8,1)) (Branch ('k',(6,2)) (Branch ('c',(2,3)) ...
layout = undefined

-- | Problem #65: An alternative layout method is depicted in the illustration below:
-- tree65 = Branch 'n'
--                 (Branch 'k'
--                         (Branch 'c'
--                                 (Branch 'a' Empty Empty)
--                                 (Branch 'e'
--                                         (Branch 'd' Empty Empty)
--                                         (Branch 'g' Empty Empty)
--                                 )
--                         )
--                         (Branch 'm' Empty Empty)
--                 )
--                 (Branch 'u'
--                         (Branch 'p'
--                                 Empty
--                                 (Branch 'q' Empty Empty)
--                         )
--                         Empty
--                 )
-- >>> layout' tree65
-- Branch ('n',(15,1)) (Branch ('k',(7,2)) (Branch ('c',(3,3)) ...
layout' = undefined

-- | Problem #66: Yet another layout strategy is shown in the illustration below:
-- >>> layout'' tree65
-- Branch ('n',(5,1)) (Branch ('k',(3,2)) (Branch ('c',(2,3)) ...
layout'' = undefined

-- | Problem #67A: A string representation of binary trees
-- >>> stringToTree "x(y,a(,b))" >>= print
-- Branch 'x' (Branch 'y' Empty Empty) (Branch 'a' Empty (Branch 'b' Empty Empty))
-- >>> let t = cbtFromList ['a'..'z'] in stringToTree (treeToString t) >>= print . (== t)
-- True
stringToTree = undefined

-- | Problem #68: Preorder and inorder sequences of binary trees. We consider binary trees with nodes that are identified by single lower-case letters, as in the example of problem P67.
-- >>> let { Just t = stringToTree "a(b(d,e),c(,f(g,)))" ;
--          po = treeToPreorder t ;
--          io = treeToInorder t } in preInTree po io >>= print
-- Branch 'a' (Branch 'b' (Branch 'd' Empty Empty) (Branch 'e' Empty Empty)) (Branch 'c' Empty (Branch 'f' (Branch 'g' Empty Empty) Empty))
preInTree = undefined

-- | Problem #69: Dotstring representation of binary trees.
-- >>> fst (ds2tree example)
-- Branch 'a' (Branch 'b' (Branch 'd' Empty Empty) (Branch 'e' Empty Empty)) (Branch 'c' Empty (Branch 'f' (Branch 'g' Empty Empty) Empty))
--
-- >>> tree2ds (Branch 'x' (Branch 'y' Empty Empty) (Branch 'z' (Branch '0' Empty Empty) Empty))
-- "xy..z0..."
ds2tree = undefined
tree2ds = undefined
