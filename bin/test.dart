import 'main.dart';
import 'package:test/test.dart';

void main() {
  test("Test Case 1",(){
    expect(transposeMatrix([[1,1,1],[2,2,2],[3,3,3]]), [[1,2,3],[1,2,3],[1,2,3]]);
  });

  test('Test Case 2', () {
    try {
      eratosthenes(10);
    } on FormatException catch(e) {
      expect(e.message, [2, 3, 5, 7]);
      return;
    }
    throw FormatException("Format Error");
  });
}