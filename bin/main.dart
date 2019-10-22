// Challenge 1
// Write failing tests for the next two challenges

// Challenge 2
// Matrix Transpose
// Create a function that transposes a 2D matrix.
// transposeMatrix([
 // [1, 1, 1],
  //[2, 2, 2],
  //[3, 3, 3]
//    ]) ➞ [
//    [1, 2, 3],
//    [1, 2, 3],
//    [1, 2, 3]
//  ]

List <List> transposeMatrix(List <List> list){
  int listLength = list.length;
  int listRowLength = list[0].length;
  List<List<dynamic>> transposedList = List<List<dynamic>>(listRowLength);
  for (int i = 0; i < listRowLength; i++) {
    transposedList[i] = List(listLength);
  }
  for(int i=0; i < listRowLength; i++) {
    for (int j = 0; j < listLength; j++) {
      transposedList[i][j] = list[j][i];
    }
  }
  return transposedList;
}


// Challenge 3
// Sieve of Eratosthenes
// Given N as input, return an array with all primes up to N included.
//  Examples
//  eratosthenes(10) ➞ [2, 3, 5, 7]
//  eratosthenes(20) ➞ [2, 3, 5, 7, 11, 13, 17, 19]

bool isPrime(int number){
  if (number < 2) {
    return false;
  }
  else if(number > 1){
    for(int i = 2; i < number; i++){
      if(number%i == 0){
        return false;
      }

  }
    return true;
  }
}
List eratosthenes(int n){
  List primeList = [];
  for (int i = 2; i < n + 1; i++){
    if(isPrime(i)){
      primeList.add(i);
    }
  }
  return primeList;
}

main() {
  print(eratosthenes(10));
  print(transposeMatrix([
       [1, 1, 1],
      [2, 2, 2],
      [3, 3, 3]
  ]));
}
