import UIKit

//Swift - Set e Tupla

/**
 Coleção NÃO-ORDENADA de objetos de mesmo tipo, que não se repetem SET<>
 */

//SET<>
    var movies: Set<String> = [
        "Matrix",
        "Vingadores",
        "Jurassic Park",
        "De volta para o futuro"
    ]

    var movies2: Set<String> = []

    //Insere valor no set
    movies.insert("Homem-Aranha: De volta para o lar")
    print(movies.count)

    //Tupla
    let result = movies.insert("Homem-Aranha: De volta para o lar")
    print(result.inserted," - ",result.memberAfterInsert)

    //Remove elemento específico
    movies.remove("Homem-Aranha: De volta para o lar")
    print(movies)

    //Foreach
    for movie in movies {
        print(movie)
    }

    //forEach
    movies.forEach{movie in
        print(movie)
    }

    //Contem "Matrix"
    if movies.contains("Matrix"){
        print("Matrix etá na minha lista de filmes favoritos!!")
    }

    var myWifeMovies: Set<String> = [
        "De repente 30",
        "Mensagem para você",
        "Sintonia de amor",
        "De volta para o futuro",
        "Jurasic park"
    ]

    //Faz uma interseção, verificando elementos igual em ambos Set<String>
    let favoritesMovies = movies.intersection(myWifeMovies)
    print(favoritesMovies)

    //Faz uma união entre elementos de um set para outro set
    let allMovies = movies.union(myWifeMovies)
    print(allMovies)

    //Remove elementos iguais em ambos Set<String>
    movies = movies.subtracting(myWifeMovies)
    print(movies)

/**
 Agrupa multiplos tipos em um valor composto
 */

//Tupla

    //Define tupla indicando tipo de cada dado e colocando index customizado
    let address: (type: String, name: String, number: Int, city: String, state: String, zipCode: String) = ("Av", "Paulista", 1578, "São Paulo", "SP", "01310-200")
    print(address.number)

    /**
     Atribui valor da tupla para variveis
        _ valor não usado
     */
    let (type, name, _ , _ , state, zipCode) = address
