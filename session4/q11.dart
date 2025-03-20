void main() {
  print(containsDuplicate([1, 2, 3, 1]));

  print(containsDuplicate([1, 2, 3, 4]));
}

bool containsDuplicate(List<int> nums) {
  Set<int> set = {};
  for (int num in nums) {
    if (set.contains(num)) {
      return true;
    }
    set.add(num);
  }
  return false;
}
