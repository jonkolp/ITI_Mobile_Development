//1
bool ispalindrome(String x) {
  String y = '';
  for (int i = x.length - 1; i >= 0; i--) {
    y += x[i];
  }
  print(y);
  if (x == y) {
    return true;
  }
  return false;
}

//2
List<int> sfib(int n) {
  List<int> sequence = [];
  for (int i = 0; i <= n; i++) {
    sequence.add(fibonacci(i));
  }
  return sequence;
}

int fibonacci(int n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

//3
int sum(List<int> n) {
  int sum2 = 0;
  n.forEach((num1) {
    if (num1 % 2 == 0) {
      sum2 += num1;
    }
  });
  return sum2;
}

//4
int countVowels(String input) {
  final vowels = RegExp(r'[aeiouAEIOU]');
  return vowels.allMatches(input).length;
}

//5
void reverse(String x) {
  String y = '';
  for (int i = x.length - 1; i >= 0; i--) {
    y += x[i];
  }
  print(y);
}

//6
String removespace(String x) {
  return x.replaceAll(' ', '');
}

//7
bool isPrime(int number) {
  if (number <= 1) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

//8
List mulx(List<int> l, int m) {
  for (int i = 0; i < l.length; i++) {
    l[i] *= m;
  }
  return l;
}

void main() {
  print('Q1');
  print(ispalindrome('eve'));

  print('Q2');
  print(sfib(10));

  print('Q3');
  print(sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));

  print('Q4');
  print(countVowels('Hello World'));

  print('Q5');
  reverse('Hello World');

  print('Q6');
  print(removespace('Hello World'));

  print('Q7');
  print(isPrime(7));
  print(isPrime(4));

  print('Q8');
  print(mulx([1, 2, 3, 4, 5, 7, 8], 5));
}
