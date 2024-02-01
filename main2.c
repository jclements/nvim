// main2.c
#include <stdio.h>

int max(int num1, int num2);

int main() {
  printf("Hello, World!\n");

  int a = 100;
  int b = 100;

  int ret = max(a, b);

  printf("Max value is: %d\n", ret);

  return 0;
}

int max(int num1, int num2) {
  int result;

  if (num1 > num2)
    result = num1;
  else
    result = num2;

  return result;
}
