import UIKit

class ViewController4: UIViewController {
    
    
    @IBOutlet weak var op1: UIButton!
    @IBOutlet weak var op2: UIButton!
    @IBOutlet weak var op3: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var oper: UILabel!
    @IBOutlet weak var num2: UILabel!
    @IBOutlet weak var num1: UILabel!
    var vidas = 3
    var Score = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var resultado = 0
        var n1 = Int.random(in: 0...10)
        var n2 = Int.random(in: 0...10)
        var opFake1 = Int.random(in: 0...100)
        var opFake2 = Int.random(in: 0...100)
        var operadores:[String] = ["+","-","*","/"]
        var op:String = operadores[Int.random(in: 0...operadores.count-1)]
        
        num1.text = String(n1)
        num2.text = String(n2)
        oper.text = op
        
        
        resultado = random(op: op, n1: n1, n2: n2, opFake1: opFake1, opFake2: opFake2)
        // Do any additional setup after loading the view.
    }
    func random(op: String, n1: Int, n2: Int, opFake1: Int, opFake2: Int)-> Int{
        //ocupo saber como saber el operadore para poder calcular el resultado correcto (NSExpression o codigo ascii)
        if(op=="+"){
            let respuesta = n1+n2
            asignarOp(r1: String(respuesta), r2: String(opFake1), r3: String(opFake2))
            return respuesta
        }
        if(op=="-"){
            let respuesta = n1-n2
            asignarOp(r1: String(respuesta), r2: String(opFake1), r3: String(opFake2))
        }
        if(op=="*"){
            let respuesta = n1*n2
            asignarOp(r1: String(respuesta), r2: String(opFake1), r3: String(opFake2))
            return respuesta
        }
        if(op=="/"){
            let respuesta = n1/n2
            asignarOp(r1: String(respuesta), r2: String(opFake1), r3: String(opFake2))
            return respuesta
        }
        return 0
        
    }
    
    //Funcion para acomodar botones
    //creo que voy a quitar los ifs
    func asignarOp(r1:String,r2:String,r3:String){
        var respuestas = [r1,r2,r3]
        let n1 = respuestas.remove(at: Int.random(in: 0...respuestas.count-1))
        op1.setTitle(n1, for: .normal)
        let n2 = respuestas.remove(at: Int.random(in: 0...respuestas.count-1))
        op2.setTitle(n2, for: .normal)
        let n3 = respuestas.remove(at: Int.random(in: 0...respuestas.count-1))
        op3.setTitle(n3, for: .normal)
        
    }
    
    @IBAction func validar(_ sender: UIButton, resultado: Int){
        /*let n1 = Double(num1.text!)
        let n2 = Double(num2.text!)*/
        if(String(resultado) == sender.currentTitle){
            Score += 1
            
            
        }
        
    }
}
