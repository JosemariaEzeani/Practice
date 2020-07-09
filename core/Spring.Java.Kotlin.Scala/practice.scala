// var = assignment can change
// val = assignment cannot change
// no explicit return => last value

// operators: prefix infix postfix

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

// @tailrec

// functions / return a unit when there is a side effect
def functionName(argument: Type): returnType = {body}
// => for anonymous or function literal

// control abstractions: currying

// case class apply with companion object is created automatically
// case class also adds copy, hashCode, equals, toString by default

// traits
// option - some | none
// either - left | right

// pattern matching

// implicit conversion: [Marking | Scope | One-at-a-time | Explicit-First]
