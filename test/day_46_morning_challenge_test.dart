import 'package:test/test.dart';
import '../bin/main.dart';
void main() {
  test('Test Case 1', () {
    expect(candiesDistributor(7,4), [1,2,3,1]);
    expect(candiesDistributor(8,4), [1,2,3,2]);
    expect(candiesDistributor(10,4), [1,2,3,4]);
    expect(candiesDistributor(0,4), [0,0,0,0]);
    expect(burstBalloons([1,2,3,4],3), 12);
    expect(burstBalloons([1,2,3,4],0), 2);
    expect(burstBalloons([1,2,3,4],1), 6);
  });
}
