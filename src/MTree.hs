module MTree where

-- | Problem #70C: (*) Count the nodes of a multiway tree.
-- >>> nnodes tree2
-- 2
nnodes = undefined

-- | Problem #70: (**) Tree construction from a node string.
-- >>> stringToTree "afg^^c^bd^e^^^"
-- Node 'a' [Node 'f' [Node 'g' []],Node 'c' [],Node 'b' [Node 'd' [],Node 'e' []]]
--
-- >>> treeToString (Node 'a' [Node 'f' [Node 'g' []],Node 'c' [],Node 'b' [Node 'd' [],Node 'e' []]])
-- "afg^^c^bd^e^^^"
stringToTree = undefined

-- | Problem #71: (*) Determine the internal path length of a tree.
-- >>> ipl tree5
-- 9
-- >>> ipl tree4
-- 2
ipl = undefined

-- | Problem #72: (*) Construct the bottom-up order sequence of the tree nodes.
-- >>> bottom_up tree5
-- "gfcdeba"
bottom_up = undefined

-- | Problem #73: (**) Lisp-like tree representation.
-- >>> display lisp tree1
-- "a"
-- >>> display lisp tree2
-- "(a b)"
-- >>> display lisp tree3
-- "(a (b c))"
-- >>> display lisp tree4
-- "(b d e)"
-- >>> display lisp tree5
-- "(a (f g) c (b d e))"
display = undefined
