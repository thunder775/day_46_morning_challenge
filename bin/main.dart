// Distribute Candies to People
// We distribute some number of candies, to a row of n = num_people people in the following way:
//
// We then give 1 candy to the first person, 2 candies to the second person,
// and so on until we give n candies to the last person.
//
// Then, we go back to the start of the row, giving n + 1 candies to the first
// person, n + 2 candies to the second person, and so on until we give 2 * n candies to the last person.
//
//This process repeats (with us giving one more candy each time, and moving to
// the start of the row after we reach the end) until we run out of candies.
// The last person will receive all of our remaining candies (not necessarily one more than the previous gift).
//
//  Return an list (of length num_people and sum candies) that represents the
// final distribution of candies.
// Example
// Input: candies = 7, num_people = 4
//  Output: [1,2,3,1]
List<int> candiesDistributor(int candies, int peopleCount) {
  List<int> output = List.generate(peopleCount, (int x) => 0);
  int incrementer = 0;

  while (candies != 0) {
    for (int i = 0; i < peopleCount; i++) {
      if (incrementer + i+1 < candies) {
        output.insert(i, output.removeAt(i) + incrementer + i+1);
        candies -= incrementer + i;
      } else {
        output.insert(i, output.removeAt(i) + candies);
        candies = 0;
      }
    }
    incrementer += peopleCount;
  }
  print(output);
}

main() {
  candiesDistributor(7, 4);
}
