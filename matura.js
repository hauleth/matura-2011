var sklej = function(n) {
  if (n == 1)
    return 1;
  else
    return n - 1 + sklej(Math.floor(n/2)) + sklej(Math.ceil(n/2));
}

var sklejGen = function(size) {
  var tab = [1,1];

  for (var i = 2; i < size; i++) {
    tab[i] = i - 1 + tab[Math.floor(i/2)] + tab[Math.ceil(i/2)];
  }

  return tab;
}

var generated = sklejGen(10000);

for (var i in generated)
  console.log(i);
