import UIKit

var greeting = "Hello, playground"

//Computed Properties - Propiedades calculadas

var suma:Int{
    10+10
        //return 10+10
    //si tiene mas de 2 lineas de codigo, se debe especificar el return
}
suma

//Data tomada de otro curso dentro de platzi...
//Son variables calculadas por un algoritmo, no es que accedemos a memoria. Suelen tener setter y getters para manejar sus valores
//Tambien se podria tener solo de lectura, la cual solo tiene get, para lo cual swift permite no ponerle nada y ahi es como el ejemplo de arriba.
//Estas, como las stored y lazy properties, no solo son de estructuras sino tambien de clases.

//Stored properties :: varaibles tipicas que se usan como 'att' de properties, se pueden asignar
//Lazy stored properties :: variables tipicas pero que no se le asigna nada hasta que se usan. Para declararlas se le pone 'lazy' antes de var o let
//Computer properties :: variables que son calculadas por el algoritmo, pueden tener set y get o solo get
