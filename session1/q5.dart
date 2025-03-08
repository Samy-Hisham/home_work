//  What is the difference between var and dynamic in Dart? Provide an example of each

/*
dynamic: data type
var: key word

dynamic: is a type underlying all Dart objects. You shouldn't need to explicitly use it in most cases.
var: is a keyword, meaning "I don't care to notate what the type is here.
" Dart will replace the var keyword with the initializer type, or leave it dynamic by default if there is no initializer.

dynamic: can change TYPE of the variable, & can change VALUE of the variable later in code.
var: can't change TYPE of the variable, but can change VALUE of the variable later in code.
 
 dynamic v = 123;   // v is of type int.
v = 456;           // changing value of v from 123 to 456.
v = 'abc';         // changing type of v from int to String.

var v = 123;       // v is of type int.
v = 456;           // changing value of v from 123 to 456.
v = 'abc';         // ERROR: can't change type of v from int to String.

source:  https://stackoverflow.com/questions/12416507/difference-between-var-and-dynamic-type-in-dart
*/
