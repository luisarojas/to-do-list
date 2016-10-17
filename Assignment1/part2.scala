import scala.util.Sorting

object Main {
    
    // testing lists
       val ints = List(8, 34, 421, 54, 1, 143, 2 , 65, 24)
       val floats = List(8f, 34f, 421f, 54f, 1f, 143f, 2f , 65f, 24f)
       val strings = List("A", "B", "X", "H", "F", "Y", "Q", "A", "R")
       
       // comparators
       val integerComparator = (val1: Int, val2: Int) => val1 compare val2
       val floatComparator = (val1: Float, val2: Float) => val1 compare val2
       val stringComparator = (val1: String, val2: String) => val1 compare val2
       
       def quickSort[K](comparator: (K, K) => Int)(input: List[K]): List[K] = {
           if (input.length <= 1) {
               input
           } else {
               val pivot = input((input.size - 1)/2)
               val small = quickSort(comparator)(input.filter(comparator(_, pivot) < 0))
               val big = quickSort(comparator)(input.filter(comparator(_, pivot) > 0))
               // concatination of all
               (small:+pivot):::big
           }
       }
       
    
   def main(args: Array[String]) {
       
       println("\nBEFORE")
       println(strings)
       println(floats)
       println(ints) 
       
       println("\nAFTER")
       // sorting strings
       println(quickSort(stringComparator)(strings))
       // sorting floats
       println(quickSort(floatComparator)(floats))
       // sorting integers
       println(quickSort(integerComparator)(ints) + "\n")
   }
}