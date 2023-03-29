const bruno = Symbol('meuNomeEBruno')

const bruno2= Symbol('meuNomeEBruno')

const user = {}

user[bruno] = 'bruno'


class Nome {
 

    constructor(nome){
        this.nome = nome
    }

    get getNome() {
        return this.nome
    }
}


const eu = new Nome('Bruno')

console.log(eu.nome === eu.getNome)