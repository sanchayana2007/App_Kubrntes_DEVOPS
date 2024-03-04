package main
import "fmt"

func main() {
    
    //lesson1
    fmt.Println("hello world")

    //L2: variables
    fmt.Println("Variables")
    var a = "initial"
    fmt.Println(a)
    var b,c int = 1,2 
    fmt.Println(b,c)


    /*
     := syntax is shorthand for declaring and initializing a variable,
      e.g. for var f string = "apple" in this case. This syntax is only available inside functions.
    */

    f:="apple"
    fmt.Println("f:",f)
    fmt.Println("L3: Constants")
    const n = 500000000

    fmt.Println("const n:",n)
    //n = 23 Error if assigned to constants 


    i := 1
    for i <= 3 {
        fmt.Println(i)
        i = i + 1
    }


    for j := 0; j < 3; j++ {
        fmt.Println(j)
    }


    for i := range 3 {
        fmt.Println("range", i)
    }

    
    for {
        fmt.Println("loop")
        break
    }


}
