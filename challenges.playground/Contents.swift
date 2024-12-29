/*
 Escribe una funcion que simule una batalla entre dos Pokemones (Pokemons?)
• La funcion recibirá dos diccionarios que representan la información de cada pokemon.
  Cada pokemon tiene
  PV (puntos de vida)
  PA (Puntos de ataque).
 
  Por defecto el turno inicial será del primer pokemon pasado como parametro.
  Cada turno un pokemon atacará al otro.
 
  La batalla terminará cuando uno de los dos pokemones no pueda continuar
  (No tenga más puntos de vida).
  La funcion debe retornar un String diciendo quien es el ganador.
 
 Tip: el ataque de un pokemon quiere decir que le reducirá la cantidad de puntos
  de ataque que tenga el pokemon del turno actual a la cantidad de puntos de vida del otro pokemon.
 */
func pokemonBattle(firstPokemon: [String: Any], secondPokemon: [String: Any]) -> [String: Any] {
    var isBattleFinished = false
    var countBattleTurns = 1
    var winner: [String: Any] = [:]
    
    var firstPokemon = firstPokemon
    var firstPokemonPV = firstPokemon["PV"] as! Int
    var firstPokemonPA = firstPokemon["PA"] as! Int
    
    var secondPokemon = secondPokemon
    var secondPokemonPV = secondPokemon["PV"] as! Int
    var secondPokemonPA = secondPokemon["PA"] as! Int
    
    while !isBattleFinished {
        
        if (firstPokemonPV <= 0) {
            winner = secondPokemon
            isBattleFinished = true
            break
            
        } else if (secondPokemonPV <= 0) {
            winner = firstPokemon
            isBattleFinished = true
            break
            
        } else {
            
            if !(countBattleTurns.isMultiple(of: 2)) {
                secondPokemonPV -= firstPokemonPA
                secondPokemon["PV"] = secondPokemonPV
                
                print("\( firstPokemon["name"] as! String) attack")
                print(secondPokemon)
            } else {
                firstPokemonPV -= secondPokemonPA
                firstPokemon["PV"] = firstPokemonPV
                
                print("\( secondPokemon["name"] as! String) attack")
                print(firstPokemon)
            }
            countBattleTurns += 1
        }
    }
    return winner
}

var pikachu: [String: Any] = [
    "name": "Pikachu",
    "PV": 300,
    "PA": 200
]

var charizard: [String: Any] = [
    "name": "Charizard",
    "PV": 100,
    "PA": 70
]

var winner = pokemonBattle(firstPokemon: pikachu, secondPokemon: charizard)
print("The winner is: \(winner)")


