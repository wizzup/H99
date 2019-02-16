module List where

-- | Problem #1: (*) Find the last element of a list.
-- >>> myLast [1,2,3,4]
-- 4
-- >>> myLast ['x','y','z']
-- 'z'
myLast = undefined

-- | Problem #2: (*) Find the last but one element of a list.
-- >>> myButLast [1,2,3,4]
-- 3
-- >>> myButLast ['a'..'z']
-- 'y'
myButLast = undefined

-- | Problem #3: (*) Find the K'th element of a list. The first element in the list is number 1.
-- >>> elementAt [1,2,3] 2
-- 2
-- >>> elementAt "haskell" 5
-- 'e'
elementAt = undefined

-- | Problem #4: (*) Find the number of elements of a list.
-- >>> myLength [123, 456, 789]
-- 3
-- >>> myLength "Hello, world!"
-- 13
myLength = undefined

-- | Problem #5: (*) Reverse a list.
-- >>> myReverse "A man, a plan, a canal, panama!"
-- "!amanap ,lanac a ,nalp a ,nam A"
-- >>> myReverse [1,2,3,4]
-- [4,3,2,1]
myReverse = undefined

-- | Problem #6: (*) Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
-- >>> isPalindrome [1,2,3]
-- False
-- >>> isPalindrome "madamimadam"
-- True
-- >>> isPalindrome [1,2,4,8,16,8,4,2,1]
-- True
isPalindrome = undefined

-- | Problem #7: (**) Flatten a nested list structure.
--  data NestedList a = Elem a | List [NestedList a]
-- >>> flatten (Elem 5)
-- [5]
-- >>> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
-- [1,2,3,4,5]
-- >>> flatten (List [])
-- []
flatten = undefined

-- | Problem #8: (**) Eliminate consecutive duplicates of list elements.
-- >>> compress "aaaabccaadeeee"
-- "abcade"
compress = undefined

-- | Problem #9: (**) Pack consecutive duplicates of list elements into sublists.If a list contains repeated elements they should be placed in separate sublists.
-- >>> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a',
--              'a', 'd', 'e', 'e', 'e', 'e']
-- ["aaaa","b","cc","aa","d","eeee"]
pack = undefined

-- | Problem #10: (*) Run-length encoding of a list.Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.
-- >>> encode "aaaabccaadeeee"
-- [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
encode = undefined

-- | Problem #11: (*) Modified run-length encoding.
-- >>> encodeModified "aaaabccaadeeee"
-- [Multiple 4 'a',Single 'b',Multiple 2 'c',
--  Multiple 2 'a',Single 'd',Multiple 4 'e']
encodeModified = undefined

-- | Problem #12: (**) Decode a run-length encoded list.
-- >>> decodeModified
--        [Multiple 4 'a',Single 'b',Multiple 2 'c',
--         Multiple 2 'a',Single 'd',Multiple 4 'e']
-- "aaaabccaadeeee"
decodeModified = undefined

-- | Problem #13: (**) Run-length encoding of a list (direct solution).
-- >>> encodeDirect "aaaabccaadeeee"
-- [Multiple 4 'a',Single 'b',Multiple 2 'c',
--  Multiple 2 'a',Single 'd',Multiple 4 'e']
encodeDirect = undefined

-- | Problem #14: (*) Duplicate the elements of a list.
-- >>> dupli [1, 2, 3]
-- [1,1,2,2,3,3]
dupli = undefined

-- | Problem #15: (**) Replicate the elements of a list a given number of times.
-- >>> repli "abc" 3
-- "aaabbbccc"
repli = undefined

-- | Problem #16: (**) Drop every N'th element from a list.
-- >>> dropEvery "abcdefghik" 3
-- "abdeghk"
dropEvery = undefined

-- | Problem #17: (*) Split a list into two parts; the length of the first part is given.
-- >>> split "abcdefghik" 3
-- ("abc", "defghik")
split = undefined

-- | Problem #18: (**) Extract a slice from a list.
-- >>> slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
-- "cdefg"
slice = undefined

-- | Problem #19: (**) Rotate a list N places to the left.
-- >>> rotate ['a','b','c','d','e','f','g','h'] 3
-- "defghabc"
--
-- >>> rotate ['a','b','c','d','e','f','g','h'] (-2)
-- "ghabcdef"
rotate = undefined

-- | Problem #20: (*) Remove the K'th element from a list.
-- >>> removeAt 2 "abcd"
-- ('b',"acd")
removeAt = undefined

-- | Problem #21: Insert an element at a given position into a list.
-- >>> insertAt 'X' "abcd" 2
-- "aXbcd"
insertAt = undefined

-- | Problem #22: Create a list containing all integers within a given range.
-- >>> range 4 9
-- [4,5,6,7,8,9]
range = undefined

-- | Problem #23: Extract a given number of randomly selected elements from a list.
-- >>> rnd_select "abcdefgh" 3 >>= putStrLn
-- eda
rnd_select = undefined

-- | Problem #24: Lotto: Draw N different random numbers from the set 1..M.
-- >>> diff_select 6 49
-- [23,1,17,33,21,37]
diff_select = undefined

-- | Problem #25: Generate a random permutation of the elements of a list.
-- >>> rnd_permu "abcdef"
-- "badcef"
rnd_permu = undefined

-- | Problem #26: (**) Generate the combinations of K distinct objects chosen from the N elements of a list
-- >>> combinations 3 "abcdef"
-- ["abc","abd","abe",...]
combinations = undefined

-- | Problem #27: Group the elements of a set into disjoint subsets.
-- >>> group [2,3,4] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]
-- [[["aldo","beat"],["carla","david","evi"],["flip","gary","hugo","ida"]],...]
-- (altogether 1260 solutions)
--
-- >>> group [2,2,5] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]
-- [[["aldo","beat"],["carla","david"],["evi","flip","gary","hugo","ida"]],...]
-- (altogether 756 solutions)
group = undefined

-- | Problem #28: Sorting a list of lists according to length of sublists
-- >>> lsort ["abc","de","fgh","de","ijkl","mn","o"]
-- ["o","de","de","mn","abc","fgh","ijkl"]
-- >>> lfsort ["abc", "de", "fgh", "de", "ijkl", "mn", "o"]
-- ["ijkl","o","abc","fgh","de","de","mn"]
lsort = undefined

