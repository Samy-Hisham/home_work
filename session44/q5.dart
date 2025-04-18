/*
 Find the Longest Word
 Write a function that takes a sentence as input and returns the longest word in the sentence.
 If multiple words have the same longest length, return the first one that appears
 */

void main() {
  String sentence = 'I am learning Dart programming language';

  String longestWord = findLongestWord(sentence);
  print('The longest word is: $longestWord');
}

String findLongestWord(String sentence) {

  List<String> words = sentence.split(' ');

  String longestWord = '';

  for (String word in words) {

    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }

  return longestWord;
}

