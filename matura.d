import std.stdio;

uint sklej(uint n) {
  if(n == 1)
    return 1;
  if(n % 2 == 0)
    return n - 1 + 2*sklej(n/2);
  return n - 1 + sklej(n/2) + sklej((n+1)/2);
}

uint[] sklej_gen(uint size) {
  uint[] tab;
  tab.length = size + 1;
  tab[0] = tab[1] = 1;
  for(uint i = 2; i < tab.length; ++i)
    tab[i] = i - 1 + tab[i/2] + tab[(i+1)/2];
  return tab;
}

void main() {
  uint[] tab = sklej_gen(10000);
  foreach(n; tab)
    writeln(n);
}
