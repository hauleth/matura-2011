#include <stdio.h>

unsigned int sklej(int n) {
  if(n == 1)
    return 1;
  if(n % 2 == 0)
    return n - 1 + 2*sklej(n/2);
  return n - 1 + sklej(n/2) + sklej((n+1)/2);
}

void sklej_fill(unsigned int tab[], size_t size) {
  size_t i;
  tab[0] = tab[1] = 1;
  for(i = 2; i < size; ++i)
    tab[i] = i - 1 + tab[i/2] + tab[(i+1)/2];
}

int main() {
  int tab[10000], i;
  sklej_fill(tab, 10000);
  for(i = 1; i < 10000; ++i)
    printf("%u\n", tab[i]);
  return 0;
}

