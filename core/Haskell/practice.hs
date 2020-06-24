-- Note: never use tabs, indent further when breaking expr, and line up variables.
-- Remember: lazy loading...
-- Local variables: Let and Where  Binding

fancyNine =
   let x = 4
       y = 5
   in x + y -- bottom up

fancySeven = 2 * a + 1 -- where cannot exist here (func def)
    where a = 3 -- top down

-- operators perform as functions in parentheses
-- operator definitions are possible
+1 	= (1+)
+1' 	= (+1)
10 `mod` 2 -- function as operator

-- Pure Functions (only recursion)

{-| Conversion of Loop to Recursion

int pow2(int n) {
    int x = 1;
    for(int i =0; i<n; ++i)
        x *= 2;
    return x;
}

...becomes

pow2 n = loop n 1 0
loop n x i =
    if i<n
    then loop n (x*2) (i+1)
    else x

...becomes (with guards)

pow2 n
   | n == 0	= 1
   | otherwise	= 2 * (pow2 (n-1))

-}

-- Higher Order Functions (accepts default params - order matters)
map length ["Hello","World","!"] -- Map (works well with partial functions)
-- Filter
-- Fold [ applies function to
--      l ... accumulator and firt list item (tail recursive - slightly faster)
--      r ... first list item and accumilator (lazy eval - infinite lists)
--      ]
-- Zip (creates pairs from two lists) [extension include ZipWith3, ZipWith4, etc..]
-- lambda Expr - starts with \ and -> instead of = (consider partial app/ named function)

-- Function Composition (.)[single arg required]
-- Function Application ($)

-- Monadic Functions

-- Explicit Types (variable declaration plus :: type) | GHCi to view type constraints (=>)
-- Mostly used for communication / debugging / performance opti purposes
-- Type Annotations and Polymorphic Funcs also possible... (latter with lower case name)
-- ... Concetre Types (e.g. Int Integer, Char) start with Upper case

-- Lists (must be homogeneous) -- contrasting tuples
-- append to List ([] is empty)
x = [1,2,3] -- shorthand for 1 : 2 : 3 : []
y = 0 : x -- [0,1,2,3] -- strings are lists of characters
-- Functions: head, tail, null,... (++ is used for concatenation)
fst' (a,b) = a -- tuple pattern matching

double [] = [] -- avoid type functions to avoid errors
double (x : xs) = (2 * x) : (double xs)
double' nums = case nums of -- for when pattern matching is difficult
   []		-> []
   (x : xs)	-> (2 * x) : (double' xs)
   -- cannot use guards in a case expression



-- Custom Types

-- Type Classes

-- IO

-- Modules

-- Packages

-- Cabal

-- Standard Collections

-- Common Monads

-- Other monads

-- Libraries
