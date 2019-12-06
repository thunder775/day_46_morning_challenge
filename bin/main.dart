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
      if (incrementer + i + 1 < candies) {
        output.insert(i, output.removeAt(i) + incrementer + i + 1);
        candies -= incrementer + i + 1;
      } else {
        output.insert(i, output.removeAt(i) + candies);
        candies = 0;
        break;
      }
    }
    incrementer += peopleCount;
  }
  return output;
}

// Challenge 2
// Burst Balloons
// Given n balloons, indexed from 0 to n-1. Each balloon is painted with a number
// on it represented by array nums. You are asked to burst all the balloons.
// If the you burst balloon i you will get nums[left] * nums[i] * nums[right] coins.
// Here left and right are adjacent indices of i. After the burst, the left and
// right then becomes adjacent.
//
//  Find the maximum coins you can collect by bursting the balloons wisely.

// Stage 1
// Write a function which calculates total coins earned by bursting a balloon at index 'i'

// Stage 2
// Implement the algorithm to calculate the maximum coins that can be earned.
int burstBalloons(List<int> balloons, int index) {
  balloons.insert(0, 1);
  balloons.insert(balloons.length - 1, 1);
  return balloons[index] * balloons[index + 1] * balloons[index + 2];
}

main() {
  candiesDistributor(20, 4);
  print(burstBalloons([1,2,3,4],3));
}
