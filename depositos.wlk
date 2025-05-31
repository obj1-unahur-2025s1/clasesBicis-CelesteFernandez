import bicis.*

class Deposito {
    const bicis = []

    method agregarBici(listaDeBicis) {
        if(listaDeBicis.any({bici => bicis.contains(bicis)})) {
            self.error("Ya existe una bici igual en el depósito")
            //si se repite una, no agrega ninguna
            //otra alternativa:
            //throw new Exception(message = "Ya existe una bici igual en el depósito")
        }
        if (listaDeBicis.any({bici => listaDeBicis.occurrencesOf(bici > 1)})){
            self.error("en la lista de bicis hay una repetida")
        }
        bicis.addAll(listaDeBicis)
    }


    
}