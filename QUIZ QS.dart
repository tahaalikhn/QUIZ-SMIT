import 'dart:io';

void main() {
// Q no 1

  int number = 5;
  int factorial = 1;
  for (int i = 1; i <= number; i++) {
    factorial *= i;
  }
  print('The factorial of $number is $factorial');

// Q no 2

  bool isArmstrong(int number) {
    int sum = 0;
    int temp = number;
    int digits = number.toString().length;
    while (temp > 0) {
      int digit = temp % 10;
      sum += digit * digit * digit;
      temp ~/= 10;
    }
    return sum == number;
  }

  print('Armstrong numbers under 1000:');
  for (int i = 1; i < 1000; i++) {
    if (isArmstrong(i)) {
      print(i);
    }
  }

  int inputNumber = 153;
  if (isArmstrong(inputNumber)) {
    print('$inputNumber is an Armstrong number.');
  } else {
    print('$inputNumber is not an Armstrong number.');
  }

// Q no 3

  
  List<int> numbers = [1, 1, 3, 4, 4, 5, 6, 7];
  List<int> differences = [];

  for (int i = 0; i < numbers.length - 1; i++) {
    int difference = numbers[i + 1] - numbers[i];
    differences.add(difference);
  }

  print('The differences between consecutive numbers are: $differences');

// Q no 4

  int n = 5;

  for (int i = n; i >= 1; i--) {
    for (int j = 1; j <= i; j++) {
      stdout.write('* ');
    }
    print('');
  }


// Q no 5
  
  double costPrice = 2000.0;
  double sellingPrice = 2200.0;

  if (sellingPrice > costPrice) {
    double profit = sellingPrice - costPrice;
    print('you can booked your profit amount: \$${profit.toStringAsFixed(2)}');
  } else if (sellingPrice < costPrice) {
    double loss = costPrice - sellingPrice;
    print('Your Loss is: \$${loss.toStringAsFixed(2)}');
  } else {
    print('No Profit, No Loss');
  }

}