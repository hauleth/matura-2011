public class Matura {
  private static int Sklej(int i) {
    if(i < 2)
      return 1;
    else
      return i - 1 + (i % 2 == 1 ? Sklej(i/2) + Sklej((i+1)/2) : 2 * Sklej(i/2));
  }
  private static uint[] SklejGen(uint size) {
    uint i;
    uint[] tab = new uint[size];
    tab[0] = tab[1] = 1;
    for(i = 2; i < size; ++i)
      tab[i] = i - 1 + tab[i/2] + tab[(i+1)/2];
    return tab;
  }
  public static void Main() {
    uint[] tab = SklejGen(10000);
    for(int i = 0; i < 10000; ++i)
      System.Console.WriteLine(tab[i]);
  }
}

