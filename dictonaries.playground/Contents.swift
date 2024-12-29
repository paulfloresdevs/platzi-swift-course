/*
 There are a Map as a type of dictonary
 in tis case:
 String -> Value
 Any -> Key
 */
var product: [String: Any] = [
    "name": "iPhone",
    "price": 600,
    "color": "black",
    "weight": 10,
    "stock": 10
]

/*
 In this case is an Optional due we put an Any Key
 So, we should say to swift what type of value is
 In this case the Key is String and we should use "as! String"
*/
let productName = product["name"] != nil ? product["name"] as! String : "unknown"

// Change some product key value
product["price"] = 700

// Add another field to product
product["rating"] = 5

// Remove an specify field to product
product.removeValue(forKey: "weight")

// Remove all the keys of the product
product.removeAll()

/* Exercise
    Hacer una función que retorne la cantidad de habtiantes por pais en
    el formato: En (Pais) hay (cantidad) de habitantes.
    Si el diccionario no contiene la informaciónd a ese pais, debe retornar: No tengo datos
    suficientes para una respuesta exclarecedora.
 
    Recibirá el pais como parametro String
*/

let countryPopulation: [String: Int] = [
    "Colombia": 48000000,
    "México": 120000000,
    "España": 46000000,
    "Francia": 67000000
]

func getPopulationByCountry(country: String) -> String {
    var message: String
    
    if countryPopulation.keys.contains(country) {
        var populationForSpecifyCountry = countryPopulation[country]!
        message =
            "The population country for \(country) is: \(populationForSpecifyCountry) "
    } else {
        message = "I don't have enought information to know the population by the \"\(country)\" country"
    }
    return message
}

print(getPopulationByCountry(country: "Colombia"))
print(getPopulationByCountry(country: "Venezuela"))
