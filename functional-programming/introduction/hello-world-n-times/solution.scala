def f(n: Int) = 1 to n foreach { _ => println("Hello World") }

// Alternative solution
//def f(n: Int) = println(new Array(n).map(Function.const("Hello World")).mkString("\n"))
