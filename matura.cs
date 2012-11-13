public class Matura {
  private static int sklej(int i) {
    if(i < 2)
      return 1;
    else
      return i - 1 + (i % 2 == 1 ? sklej(i/2) + sklej((i+1)/2) : 2*sklej(i/2));
  }
  private static uint[] sklej_gen(uint size) {
    uint i;
    uint[] tab = new uint[size];
    tab[0] = tab[1] = 1;
    for(i = 2; i < size; ++i)
      tab[i] = i - 1 + tab[i/2] + tab[(i+1)/2];
    return tab;
  }
  public static void Main() {
    uint[] tab = sklej_gen(10000);
    for(int i = 0; i < 10000; ++i)
      System.Console.WriteLine(tab[i]);
  }
}

