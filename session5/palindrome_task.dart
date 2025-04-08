void main() {

  // print(isPalindrome('A man, a plan, a canal: Panama'));
  // print(isPalindrome('ab'));
  print(isPalindrome('race a car'));
}

bool isPalindrome(String txt) {

  String lowercased = txt.toLowerCase();

  String cleaned = lowercased.replaceAll(RegExp(r'[^a-z0-9]'), '');

  String reversed = cleaned.split('').reversed.join('');

  return cleaned == reversed;

}
