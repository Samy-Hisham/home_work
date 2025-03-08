//  What does it mean for Dart to be a statically-typed language, and how does it impact the way variables are used?

/*
Dart being a statically-typed language means that the type of a variable is known at compile time, rather than at runtime.

Combining static and runtime checks, Dart has a sound type system. This guarantees that an expression of one type cannot produce a value of another type.

if you need the flexibility of a dynamic typing, you can annotate any variable with dynamic. This dynamic type is static, but can contain any type at runtime. That removes many benefits of a type-safe language from that variable.
*/
