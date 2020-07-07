// var = assignment can change
// val = assignment cannot change
// no explicit return => last value

// Collections Hierarchy
// Transversable >> Iterable [Seq | Set | Map]
// Seq [IndexedSeq | LinearSeq]
// Set [SortedSet | BitSet]
// Map [SortedMap]


// Loops
for {
| number <- numbers
| letter <- letters
} println(number + " => " + letter)

// yield to generate a new number

// functions
def functionName(argument: Type): returnType = {body}
// => for anonymous or function literal
// case class apply with companion object is created automatically
// case class also adds copy, hashCode, equals, toString by default

// traits
// option - some | none
// either - left | right

// pattern matching
