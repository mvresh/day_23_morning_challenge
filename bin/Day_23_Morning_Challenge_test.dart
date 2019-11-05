import 'package:test/test.dart';
import 'main.dart';

void main() {
  test('Game of Life', () {
    expect(gameOfLife([
      [0, 1, 0, 1],
      [0, 0, 1, 0],
      [0, 1, 0, 0],
      [1, 0, 1, 0]
    ]), [[0, 0, 1, 0], [1, 1, 1, 1], [1, 1, 1, 1], [0, 1, 0, 0]]);
  });

  test('Game of Life 2', () {
    expect(gameOfLife([
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1]
    ]), [[1, 0, 0, 1], [0, 0, 0, 0], [0, 0, 0, 0], [1, 0, 0, 1]]);
  });
}
