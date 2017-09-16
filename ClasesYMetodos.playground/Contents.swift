//: Playground - noun: a place where people can play

import UIKit

//Declaración de una clase
class User {
    
    var edad:Int
    var apellidoPaterno:String
    var apellidoMaterno:String
    
    var direccion:String?
    
    private var nombre:String
    var Nombre:String{
        set {
            
            if newValue.characters.count == 0{
                self.nombre = "Sin Nombre"
            } else {
                self.nombre = newValue
            }
        }
        get{
            
            if self.nombre.characters.count == 0{
                return "**** SIN NOMBRE ****"
            } else {
                return "**** " + self.nombre + " ****"
            }
        }
    }
    
    init(){
        
        self.edad = 0
        self.apellidoPaterno = ""
        self.apellidoMaterno = ""
        
        self.nombre = ""
        
    }
    
    init(edad:Int, name:String, lastName:String, givenName:String){
        
        self.edad = edad
        self.apellidoPaterno = lastName
        self.apellidoMaterno = givenName
        
        self.nombre = name
    }
    
    func getFullName() -> String {
        
        //JAVA
        //String fullName =
        //  String.format("%s %s %s",this.nombre, this.aPaterno, this.aMaterno)
        
        //C#
        //String fullName =
        //  String.format("{0} {1} {2}",this.nombre, this.aPaterno, this.aMaterno)
        
        //Swift
        let fullName = "\(self.nombre) \(self.apellidoPaterno) \(self.apellidoMaterno)"
        
        //        let fullName = String(format: "%@ %@ %@", self.nombre, self.apellidoPaterno, self.apellidoMaterno)
        
        return fullName
        
        //        return self.nombre + " " +
        //            self.apellidoPaterno + " " +
        //            self.apellidoMaterno
    }
    
    func saludar() {
        
        print("Hola, me llamo \(self.nombre)")
        
    }
    
    func armaFrase(cadena1:String, cadena2:String) {
        
        print("\(cadena1) \(cadena2)")
        
    }
    
    func getFullName(apellidoMaterno:String,
                     nombre:String,
                     apellidoPaterno:String) -> String {
        
        let fullname = "\(nombre) \(apellidoPaterno) \(apellidoMaterno)"
        
        return fullname
        
    }
    
    func algo(entero:Int) {
        print(entero)
    }
    
}

//Herencia de una clase
class Estudiante : User{
    
    var matricula:String
    var curp:String
    
    init(matricula:String, curp:String){
        
        self.matricula = ""
        self.curp = ""
        
        //super.init(edad: 0, name: "", lastName: "", givenName: "")
        super.init(edad: 0, name: "sdfsd", lastName: "dfsd", givenName: "sdfds")
        
    }
    
}

//Uso
var usuario : User = User(edad: 0,
                          name: "Manuel",
                          lastName: "Pérez",
                          givenName: "Santos")

var usuario2 = User()

var usuarioEstudiante : Estudiante = Estudiante(matricula: "123",
                                                curp: "dssdfsdf")

var usuarioEstudiante2 = Estudiante(matricula: "321", curp: "abc")

var usuarioPolimorfico:User = User()

var usuarioPolimorfico2:User = Estudiante(matricula: "123",
                                          curp: "abc")


//Setter
usuarioPolimorfico.Nombre = ""

//Getter
usuarioPolimorfico.Nombre


//Uso de métodos de una clase
var userWithMethod : Estudiante = Estudiante(matricula: "123", curp: "123")

userWithMethod.getFullName()
userWithMethod.saludar()
userWithMethod.armaFrase("Hola", cadena2: "Mundo")
userWithMethod.getFullName("Santos", nombre: "Manuel", apellidoPaterno: "Pérez")
userWithMethod.algo(5)






