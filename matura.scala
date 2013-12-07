import scala.collection.mutable._

object Matura extends App {
  def sklej(n : Int) : Int = if (n == 1) 1 else n - 1 + sklej(math.floor(n/2.0).toInt) + sklej(math.ceil(n/2.0).toInt)
  def sklejGen(len : Int) : List[Int] = {
    val list = ListBuffer[Int](1, 1)
    for (n <- 2 to len) yield list += n - 1 + list.apply(math.floor(n/2.0).toInt) + list.apply(math.ceil(n/2.0).toInt)
    list.toList
  }

  sklejGen(10000).foreach(Console.println(_)) // Display generated list
  //for (i <- 1 to 100) yield Console.println(sklej(i))
}
