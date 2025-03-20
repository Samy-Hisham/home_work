/* 
 5. Sets, Functions & Return Statement
 Write a function uniqueNames(List<String> names) that:
 - Accepts a list of names.
 - Returns a Set containing only unique names.
 Call the function inside main() and print the result.
 */

void main() {
  List<String> names = ['samy', 'hany', 'ramy', 'samy', 'alex', 'hany'];

  Set<String> uniqueNamesSet = uniqueNames(names);

  print('Unique names: $uniqueNamesSet');
}

Set<String> uniqueNames(List<String> names) {
  return names.toSet();
}
