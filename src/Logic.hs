module Logic where

-- | Problem #46: (**) Define predicates and/2, or/2, nand/2, nor/2, xor/2, impl/2 and equ/2 (for logical equivalence) which succeed or fail according to the result of their respective operations; e.g. and(A,B) will succeed, if and only if both A and B succeed.
-- >>> table (\a b -> (and' a (or' a b)))
-- True True True
-- True False True
-- False True False
-- False False False
table = undefined

-- | Problem #47: (*) Truth tables for logical expressions (2).
-- >>> table2 (\a b -> a `and'` (a `or'` not b))
-- True True True
-- True False True
-- False True False
-- False False False
table2 = undefined

-- | Problem #48: (**) Truth tables for logical expressions (3).
-- >>> tablen 3 (\[a,b,c] -> a `and'` (b `or'` c) `equ'` a `and'` b `or'` a `and'` c)
-- -- infixl 3 `equ'`
-- True  True  True  True
-- True  True  False True
-- True  False True  True
-- True  False False True
-- False True  True  True
-- False True  False True
-- False False True  True
-- False False False True
--
-- -- infixl 7 `equ'`
-- True  True  True  True
-- True  True  False True
-- True  False True  True
-- True  False False False
-- False True  True  False
-- False True  False False
-- False False True  False
-- False False False False
tablen = undefined

-- | Problem #49: (**) Gray codes.
-- >>> gray 3
-- ["000","001","011","010","110","111","101","100"]
gray = undefined

-- | Problem #50: (***) Huffman codes.
-- >>> huffman [('a',45),('b',13),('c',12),('d',16),('e',9),('f',5)]
-- [('a',"0"),('b',"101"),('c',"100"),('d',"111"),('e',"1101"),('f',"1100")]
huffman = undefined

