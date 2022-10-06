double sumOfTwoNumber(number1, number2) {
  return number1 + number2;
}

convertNumber(int num) {
  return num * 60;
}

lessThan100(int number1, int number2) {
  int sum = number1 + number2;
  if (sum < 100) {
    return true;
  } else {
    return false;
  }
}

calcAge(int number1) {
  return number1 * 365;
}

//}
void main() {
  print(sumOfTwoNumber(3, 2));
  print(convertNumber(5));
  print(lessThan100(50, 20));
  print(calcAge(65));
}
