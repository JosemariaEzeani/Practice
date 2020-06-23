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

-}

-- Higher Order Functions

-- Monadic Functions

-- Types

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
