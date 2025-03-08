//  Explain what happens if you try to use a variable before it is declared in Dart.

/*
- attempting to use a variable before it is declared results in a compile-time error.
- Variables in Dart must be declared before they can be used. This is part of Dart's design to ensure type safety and clarity in code.

Compile-Time Error:
The error occurs at compile time, meaning that the code will not run until the issue is resolved.
 The compiler detects that name is being referenced before it has been declared and initialized.

 If you try to access a variable before declaring it, the Dart compiler will throw an error. For example:

void main() {
  print(name);    // Error: The variable 'name' must be declared before it is used.
  String name = "samy";
}
*/
