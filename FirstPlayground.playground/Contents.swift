//: Playground - noun: a place where people can play

//Definición de VARIABLES

var variableStringInferida = "Hello, playground"
var variableString:String = "Esta es una variable de tipo cadena"

variableStringInferida = "Hola Mundo"

var variableIntInferida = 5
var variableInt:Int = 5
variableInt = variableInt + variableIntInferida

var variableFloatInferida = 5.1
var variableFloat:Float = 5.1
//variableFloat = Float(variableFloatInferida) + variableFloat

variableFloatInferida = variableFloatInferida + Double(variableFloat)

var charInferida = "c"
var char:Character = "c"

//Definición de CONSTANTES

let constanteString = "HOLA MUNDO!"
let constanteStringEx: String = "Cadena constante explícita"

//constanteString = "Saludos" //Causa error de compilación
//let constantChar:Character = "hola" //Causa error de compilación


var x = 5

print(x)

//Opcionales

//Vieja escuela
var nullableString:String? = "Hola Mundo"

if nullableString == nil {
    print("La variable es nula")
} else {
    print(nullableString!)
}

//Modo Swift

var otherNullable:String? = "Hola Mundo!"

if let valorExplicito = otherNullable {

    print(valorExplicito)
    
} else {
    
    print("La variable es nula")
    
}


var nullableInt:Int? = 10

if nullableInt == nil {
    print("El entero viene nulo")
} else {
    print(nullableInt!)
}

var otherNullableInt:Int? = nil
if let intExplicito = otherNullableInt {
    print(intExplicito)
} else {
    print("la variable viene nula")
}

print(otherNullableInt?.description)


//CASTING
//Vieja escuela

let anonima:Any = 10

var entero:Int

if anonima is String {
    entero = Int(anonima as! String)!
}

//if (anonima instanceof Double)
if anonima is Double {
    
    //entero = (int) anonima
    entero = Int(anonima as! Double)
    
}

if anonima is Int {
    
    entero = anonima as! Int
}


//Modo Swift

let Anonima:Any = 10
var Entero:Int

if let cadena = Anonima as? String {
    
    print("la variable es una cadena")
    
    Entero = Int(cadena)!
    
}

if let doble = Anonima as? Double {
    
    print("la variable es un Doble")
    
    Entero = Int(doble)
}

if let integer = Anonima as? Int {
    
    print("la variable es un Entero")
    
    Entero = integer
    
}

//Ciclos

for x in 1...10 {
    print("\(x)")
}

var iterador = 0
while iterador <= 10 {
    
    print("\(iterador)")
    
    iterador += 1
}

var it = 0
repeat {
    
    print(it)
    it += 1
    
} while it <= 10

// Arreglos

var intArrayInferido = [1,2,3,4,5,6,7,8,9,10]

var intArrayExp:[Int] = [10,9,8,7,6,5,4,3,2,1]

//FOREACH || FastEnumeration
for variableEntera in intArrayExp {
    
    print(variableEntera)
    
}

for x in 0..<intArrayExp.count {
    
    let aux = intArrayExp[x]
    
    print(aux)
    
}








