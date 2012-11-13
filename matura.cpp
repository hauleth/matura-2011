#include <iostream>
#include <vector>
#include <algorithm>
#include <iterator>

using namespace std;

unsigned int sklej(int n) {
  if(n == 1)
    return 1;
  if(n % 2 == 0)
    return n - 1 + 2*sklej(n/2);
  return n - 1 + sklej(n/2) + sklej((n+1)/2);
}

vector<unsigned int> sklej_gen(size_t size) {
  vector<unsigned int> tab(size);
  tab[0] = tab[1] = 1;
  for(size_t i = 2; i < size; ++i)
    tab[i] = i - 1 + tab[i/2] + tab[(i+1)/2];
  return tab;
}

int main() {
  vector<unsigned int> tab = sklej_gen(10000);
  copy(tab.begin(), tab.end(), ostream_iterator<unsigned int>(cout, "\n"));

  return 0;
}

