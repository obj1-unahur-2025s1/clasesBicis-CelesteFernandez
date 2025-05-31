class Bici {
  const rodado
  const largo
  const marca
  const accesorios = []


  method altura() {
    return rodado * 2.5 + 15
  }

  method velocidadCrucero() {
    return
    if(largo > 120) {
      rodado + 6
    } else {
      rodado + 2 
    }
  }

  method carga() {
    return accesorios.sum({accesorio => accesorio.carga()})
  }

  method agregarAccesorio(accesorio) {
    accesorios.add(accesorio)
  }

  method quitarAccesorio(accesorio) {
    accesorios.remove(accesorio)
  }

  method peso() {
    return rodado/2 + self.pesoAccesorios()
  }

  method pesoAccesorios() {
    return accesorios.sum({accesorio => accesorio.peso()})
  }

  method tieneLuz() {
    return accesorios.any({accesorio => accesorio.esLuminoso()})
  }

  method cantidadAccesoriosLivianos() {
    return accesorios.count({accesorio => accesorio.esLiviano()})
  }

}

class Farolito {
  method carga() {
    return 0
  }

  method peso() {
    return 0.5
  }

  method esLuminoso() {
    return true
  }

  method esLiviano() {
    return self.peso() < 1
  }
}

class Canasto {
  const volumen

  method carga() {
    return volumen * 2
  }

  method peso() {
    return volumen/10
  }

  method esLuminoso() {
    return false
  }

  method esLiviano() {
    return self.peso() < 1
  }

  method initialize(){
    if(!volumen.between(1, 20)) {
      self.error(volumen.toString() + "no es un volumen entre 1 y 20")
    }
  }
}

class Morral {
  const largo
  var tieneOjoDeGato

  method carga() {
    return largo / 3
  }

  method peso() {
    return 1.2
  }

  method esLuminoso() {
    return tieneOjoDeGato
  }

  method esLiviano() {
    return self.peso() < 1
  }

  method ponerOjoDeGato() {
    tieneOjoDeGato = true
  }

  method sacarOjoDeGato() {
    tieneOjoDeGato = false
  }
}
