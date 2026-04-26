object tom {
    var ultimoRaton = jerry
    var distanciaRecorrida = 0
    var energia = 50

    method energia() = energia

    method ultimoRaton() = ultimoRaton

    method velocidad() = 5 + energia/10

    method puedeCazar(distancia) = energia > distancia / 2

    method cazar(raton, distancia) {
        if(self.puedeCazar(distancia)) {
            self.comer(raton)
        }
    }

    method correr(distancia) {
        if(self.puedeCazar(distancia)) {
                energia -= distancia / 2
            distanciaRecorrida += distancia
        }
    }

    method comer(raton) {
        energia += 12 + raton.peso()
        ultimoRaton = raton
    }
}

object jerry {
    var edad = 2
    method peso() = edad * 20
    
    method cumplirAño() {
        edad += 1
    }
}

object nibbles {
  method peso() = 35
}

object mickey {
    var edad = 96  // tiene 97 pero justo es un numero primo
    method peso() = edad / 3

    method aniversarioDeMickey() {
        edad += 1
    }
}