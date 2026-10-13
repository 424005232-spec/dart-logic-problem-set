void main() {
  print('--- Test 1: Good Input ---');
  double result1 = calculateTotal([10, 20, 30]);
  print('Returned Total: $result1');

  print('\n--- Test 2: Bad Input ---');
  double result2 = calculateTotal([10, 'bad_input', 30]);
  print('Returned Total: $result2');
}

double calculateTotal(List<dynamic> numbers) {
  try {
    double sum = 0;

    for (int i = 0; i < numbers.length; i++) {
      
      if (numbers[i] is num) {
        sum += numbers[i];
      } else {
        throw FormatException('Invalid item: ${numbers[i]}');
      }
    }

    if (sum >= 50) {
      print('Total is big!');
    } else {
      print('Total is small.');
    }

    return sum; 

  } catch (e) {
    print('Handled error gracefully: $e');
    return 0.0;
  }
}
