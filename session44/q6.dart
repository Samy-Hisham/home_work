/*
Count Words in a Sentence
 Write a function that counts the number of words in a given sentence.
 Words are separated by spaces, and the function should ignore extra spaces
 */

void main() {
  String sentence = '   Hello, this is a sample sentence with    extra spaces.  ';

  int wordCount = countWords(sentence);
  print('The number of words in the sentence is: $wordCount');
}

int countWords(String sentence) {

  List<String> words = sentence.trim().split(RegExp(r'\s+'));

  return words.isEmpty && sentence.trim().isEmpty ? 0 : words.length;
}
