module practice where -- Modules (Foo.Bar.Baz for Foo/Bar/Baz.hs)
-- Explicit export is possible (even for imported modules)

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
fst' (a,b) = a -- tuple pattern matching [_ can be used as a wildcard]

double [] = [] -- avoid type functions to avoid errors
double (x : xs) = (2 * x) : (double xs)
double' nums = case nums of -- for when pattern matching is difficult
   []		-> []
   (x : xs)	-> (2 * x) : (double' xs)
   -- cannot use guards in a case expression

type String = [Char] -- Custom Types
newtype Identifier = Identifier Int -- with constructor

-- records should almost always be avoided
data Customer = Customer -- can create new with updated record
{ id :: Identifier -- no shared field names
, name :: String
, number :: Int
} -- not extensible (inheritance)

-- alt: Algebraic Data Types [multiple constructors with | ]
data Customer' = Customer' Identifier String Int
-- Parameterized types can be used to create/ hold types
-- Note: deriving with some standard type classes (minus functions)
-- instance is used to extend and existing type to a new type

-- Type Classes (subclassing is possible)
class Eq a where
    (==) :: a -> a -> Bool -- at least one must be implemented
    (/=) :: a -> a -> Bool
    -- default implementations (from minimum complete definition)
    x /= y = not (x == y)
    x == y = not (x /= y)

-- side effects
main = putStrLn "Hello World" -- IO Note: () represents data Unit = Unit
-- do is used to chain IO actions [actually syntactic sugar]
-- getLine is used to read (<- can only be used in a do-block)
-- return is a function that creates an IO action

-- readFile
-- wrteFile
-- appendFile
-- Print
-- interact
-- Let

import Data.Set -- use import qualified to avoid naming conflicts
import Data.Sequence as Seq (empty, size) -- () only type instance
-- also need to define constructors (e.g., (..) or actual list)
-- Note: type class instances ignore explicit import (automatically imported)
import Prelude hiding (map) -- hiding (empty, size) to exclude from import

-- Standard Collections

-- Monads/ Monadic Functions

-- Libraries

-- Packages [cabal init > dependencies > configure > build > run > install]
-- [cabal install cabal-install] Cabal (format) | Hackage (online repository)
-- use sandboxes for different projects to avoid dependency conflicts
