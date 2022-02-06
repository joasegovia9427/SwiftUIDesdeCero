import UIKit

var greeting = "Hello, playground"

struct calculadora {
    
    //propiedades
//    var numeroUno:Int = 10 // se podria asignar desde un principio, pero lo hacemos con init
    var numeroUno:Int
    var numeroDos:Int
    let constante:Int
    
    init() {
        numeroUno = 10
        numeroDos = 20
        constante = 1
    }
    
    //metodo
    func suma() -> Int  {
         return numeroUno + numeroDos
    }
    
    func mul() -> Int  {
        return numeroUno * numeroDos
    }
    
    func multiplicacion(numeroUno:Int,numeroDos:Int) -> Int {
        return self.numeroUno * self.numeroDos
    }

}

// var suma = calculadoda(numeroUno: 10, numeroDos: 8)

var instanciaSuma = calculadora()

print(instanciaSuma.numeroUno)
print(instanciaSuma.numeroDos)

instanciaSuma.numeroUno = 4
instanciaSuma.numeroDos = 8

print(instanciaSuma.numeroUno)
print(instanciaSuma.numeroDos)

var instanciaSumaDos = instanciaSuma

print(instanciaSumaDos.numeroUno)
print(instanciaSumaDos.numeroDos)

instanciaSuma.numeroUno = 5
instanciaSuma.numeroDos = 7

print(instanciaSuma.numeroUno)
print(instanciaSuma.numeroDos)

print(instanciaSumaDos.numeroUno)
print(instanciaSumaDos.numeroDos)


//LAS ESTRUCTURAS son por valor, o sea son y generan copias independientes

//ahora LAS CLASES son por referencia, si se hace copia, se hace copia del puntero y se puede tener 2 apuntando, referenciando al mismo espacio de memoria ram y modificar
