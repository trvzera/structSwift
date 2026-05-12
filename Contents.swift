import UIKit


// INICIALIZACAO DO STRUCT
struct Jogador {
    let nome: String // COMO LET POIS NAO VAI MUDAR
    var nivel: Int // VAR POIS VAI SER ALTERADO
    var pontuacao: Int
    var estaVivo: Bool
}

//DECLARACAO DE UM OBJETO DE UMA STRUCT

var meuJogador = Jogador(nome: "Giovanni", nivel: 5, pontuacao: 100, estaVivo: true)


struct Smartphone {
    // Atributos
    let marca: String
    let modelo: String
    let numSerie: String
    
    var nivelBateria: Int = 100 // Novo Atributo mutavel
    
    // Metodos
    func consultaNumSerie() -> String{
        return "numero de serie \(numSerie)"
    }
    func tipoCelular() -> String {
        return "\(marca) - \(modelo)"
    }
    
    
    // Novo metodo para alterar nivel bateria
    // PRECISA DO "MUTATING" PARA ALTERAR PROPRIEDADES
    mutating func alterarBateria() {
        nivelBateria -= 10
    }
}

var celular1 = Smartphone(marca: "Apple", modelo: "Iphone 18 Pro", numSerie: "031313")
var celular2 = Smartphone(marca: "Apple", modelo: "Iphone 11", numSerie: "212112")

print(celular1.tipoCelular())
print(celular1.consultaNumSerie())
print(celular2.tipoCelular())
print(celular2.consultaNumSerie())


// Chamada Metodo Para Alterar Bateria
celular1.alterarBateria()
print(celular1.nivelBateria)



struct Aluno {
    let nome: String
    let registroAluno: String
    let numComputador: String
    
    var temDuvida: Bool
    var disciplina: String
    
    func infoAluno() -> String {
        return "Nome: \(nome) | Número de Registro \(registroAluno)"
    }
    mutating func precisaAtendimento(){
        temDuvida = false
    }
    mutating func alterarDisciplina(novaDisciplina: String){
        disciplina = novaDisciplina
    }
}

func aula(materia: String){


var aluno1 = Aluno(nome: "Giovanni", registroAluno: "087", numComputador: "20", temDuvida: true, disciplina: materia)
var aluno2 = Aluno(nome: "Arthur", registroAluno: "123", numComputador: "12", temDuvida: true, disciplina: materia)
var aluno3 = Aluno(nome: "Gabriel", registroAluno: "223", numComputador: "40", temDuvida: true, disciplina: materia)
var aluno4 = Aluno(nome: "Leticia", registroAluno: "280", numComputador: "28", temDuvida: false, disciplina: materia)
var aluno5 = Aluno(nome: "Ana", registroAluno: "001", numComputador: "01", temDuvida: true, disciplina: materia)
var aluno6 = Aluno(nome: "Maria", registroAluno: "042", numComputador: "23", temDuvida: false, disciplina: materia)
var aluno7 = Aluno(nome: "Joana", registroAluno: "010", numComputador: "10", temDuvida: false, disciplina: materia)
var aluno8 = Aluno(nome: "Fernando", registroAluno: "033", numComputador: "33", temDuvida: true, disciplina: materia)
var aluno9 = Aluno(nome: "Mia", registroAluno: "002", numComputador: "2", temDuvida: false, disciplina: materia)
var aluno10 = Aluno(nome: "Agatha", registroAluno: "060", numComputador: "24", temDuvida: false, disciplina: materia)

print("COMECANDO AULA DE \(materia)")
var salaDeAula = [aluno1, aluno2, aluno3, aluno4, aluno5, aluno6, aluno7, aluno8, aluno9, aluno10]

var alunosDuvida: [Aluno] = []


    for aluno in salaDeAula {
        print("Aluno: \(aluno.nome) | Tem Duvida: \(aluno.temDuvida)")
        if aluno.temDuvida == true {
            print("\(aluno.nome) tem duvida em \(aluno.disciplina), adicionando a lista de atendimento!")
            alunosDuvida.append(aluno)
        }
        else {
            print("Aluno nao tem duvida em \(aluno.disciplina)")
        }
    }
    
    
    for var aluno in alunosDuvida {
        print("Atendendo alunos com dúvida! \(aluno.nome)")
        aluno.precisaAtendimento()
        print("Aluno atendido! Restou duvida? \(aluno.temDuvida)")
    }
    alunosDuvida.removeAll()
    print("Todos alunos atendidos!")
}

aula(materia: "IOS")
aula(materia: "Android")




