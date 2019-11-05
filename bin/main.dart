// Challenge 1
// Write test cases for the given challenges

// Challenge - Conway's Game of Life
// https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life#Rules
// The Game of Life, also known simply as Life, is a cellular automaton devised
// by the British mathematician John Horton Conway in 1970.
// Write a function which performs one step of the life algorithm
import 'dart:convert';

List<dynamic> gameOfLife(List<dynamic> zeroGeneration) {
  int countLiveNeighbors(List<dynamic> generation, int i, int j) {
    int count = 0;

    for (int x = -1; x < 2; x++) {
      for (int y = -1; y < 2; y++) {
        int checkX = i + x;
        int checkY = j + y;

        if ((checkX >= 0 && checkX < generation.length) &&
            (checkY >= 0 && checkY < generation[i].length) && generation[checkX][checkY] == 1) {
          count++;
        }
      }
    }
    return count - generation[i][j];
  }

  List<dynamic> firstGeneration = jsonDecode(jsonEncode(zeroGeneration));

  for (int i = 0; i < zeroGeneration.length; i++) {
    for (int j = 0; j < zeroGeneration[i].length; j++) {
      int liveNeighbors = countLiveNeighbors(zeroGeneration, i, j);

      if (zeroGeneration[i][j] == 0) {
        if (liveNeighbors == 2 || liveNeighbors == 3) {
          firstGeneration[i][j] = 1;
        }
      } else {
        if (liveNeighbors < 2 || liveNeighbors > 3) {
          firstGeneration[i][j] = 0;
        }
      }
    }
  }

  return firstGeneration;
}

main() {
  print(gameOfLife([
    [0, 1, 0, 1],
    [0, 0, 1, 0],
    [0, 1, 0, 0],
    [1, 0, 1, 0]
  ]));
}
