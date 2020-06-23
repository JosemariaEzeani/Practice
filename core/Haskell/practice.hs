-- Note: never use tabs, indent further when breaking expr, and line up variables.
-- Remember: lazy loading...
-- Local variables: Let and Where  Binding

fancyNine =
   let x = 4
       y = 5
   in x + y -- bottom up

fancySeven = 2 * a + 1 -- where cannot exist here (func def)
    where a = 3 -- top down

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

-- Higher Order Functions

-- Monadic Functions

-- Types

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
