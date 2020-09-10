import UIKit

func convertStringToDateFormat(dateAsString: String) -> Date {
    let dateFormat = "yyyy-MM-dd"

    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = dateFormat

    let dateConverted = dateFormatter.date(from: dateAsString)
    
    return dateConverted!
}


class Person {
    
    var name: String
    var cpf: String
    var birthday: String
    var address: String
    var email: String
    var phone: String
    
    init (name: String,
          cpf: String,
          birthday: String,
          address: String,
          email: String,
          phone: String) {
        
        self.name = name
        self.cpf = cpf
        self.birthday = birthday
        self.address = address
        self.email = email
        self.phone = phone
        
    }
    
    func getAllInfo() -> String {
        return "Nome: \(name), cpf: \(cpf), data de nascimento: \(birthday), endereço: \(address), email: \(email), telefone: \(phone)"
    }
    
    func getContactInfo() -> String {
        return "email: \(email), phone: \(phone)"
    }
    
    func ifItsBirthday() -> Bool {
        
        let currentDay = Date()
        let birthdayDateAsDate = convertStringToDateFormat(dateAsString: birthday)
        
        
        let thisDateMonthAndDay = Calendar.current.dateComponents([.month, .day], from: currentDay)
        let personDateMonthAndDay = Calendar.current.dateComponents([.month, .day], from: birthdayDateAsDate)
        
        if thisDateMonthAndDay.month == personDateMonthAndDay.month && thisDateMonthAndDay.day == personDateMonthAndDay.day {
            return true
        }
        
        return false
        
    }
    
    func calcAge() -> Int {
        
        let currentDate = Date()
        let birthdayDateAsDate = convertStringToDateFormat(dateAsString: birthday)
        
        let calendar = Calendar.current
        let ageComponents = calendar.dateComponents([.year], from: birthdayDateAsDate, to: currentDate)
        let age = ageComponents.year!
    
        return age
    }
    
    func getPhoneCityCode() -> String {
        
        let citiesCode = ["11": "São Paulo – SP",
                          "12": "São José dos Campos – SP",
                          "13": "Santos – SP",
                          "14": "Bauru – SP",
                          "15": "Sorocaba – SP",
                          "16": "Ribeirão Preto – SP",
                          "17": "São José do Rio Preto – SP",
                          "18": "Presidente Prudente – SP",
                          "19": "Campinas – SP",
                          "21": "Rio de Janeiro – RJ",
                          "22": "Campos dos Goytacazes – RJ",
                          "24": "Volta Redonda – RJ",
                          "27": "Vila Velha/Vitória – ES",
                          "28": "Cachoeiro de Itapemirim – ES",
                          "31": "Belo Horizonte – MG",
                          "32": "Juiz de Fora – MG",
                          "33": "Governador Valadares – MG",
                          "34": "Uberlândia – MG",
                          "35": "Poços de Caldas – MG",
                          "37": "Divinópolis – MG",
                          "38": "Montes Claros – MG",
                          "41": "Curitiba – PR",
                          "42": "Ponta Grossa – PR",
                          "43": "Londrina – PR",
                          "44": "Maringá – PR",
                          "45": "Foz do Iguaçú – PR",
                          "46": "Francisco Beltrão/Pato Branco – PR",
                          "47": "Joinville – SC",
                          "48": "Florianópolis – SC",
                          "49": "Chapecó – SC",
                          "51": "Porto Alegre – RS",
                          "53": "Pelotas – RS",
                          "54": "Caxias do Sul – RS",
                          "55": "Santa Maria – RS",
                          "61": "Brasília – DF",
                          "62": "Goiânia – GO",
                          "63": "Palmas – TO",
                          "64": "Rio Verde – GO",
                          "65": "Cuiabá – MT",
                          "66": "Rondonópolis – MT",
                          "67": "Campo Grande – MS",
                          "68": "Rio Branco – AC",
                          "69": "Porto Velho – RO",
                          "71": "Salvador – BA",
                          "73": "Ilhéus – BA",
                          "74": "Juazeiro – BA",
                          "75": "Feira de Santana – BA",
                          "77": "Barreiras – BA",
                          "79": "Aracaju – SE",
                          "81": "Recife – PE",
                          "82": "Maceió – AL",
                          "83": "João Pessoa – PB",
                          "84": "Natal – RN",
                          "85": "Fortaleza – CE",
                          "86": "Teresina – PI",
                          "87": "Petrolina – PE",
                          "88": "Juazeiro do Norte – CE",
                          "89": "Picos – PI",
                          "91": "Belém – PA",
                          "92": "Manaus – AM",
                          "93": "Santarém – PA",
                          "94": "Marabá – PA",
                          "95": "Boa Vista – RR",
                          "96": "Macapá – AP",
                          "97": "Coari – AM",
                          "98": "São Luís – MA",
                          "99": "Imperatriz – MA" ]
        
        let personCityCode = String(phone.prefix(2))
        
        if let city = citiesCode[personCityCode] {
            return city
        }
        
        return "DDD não cadastrado"
        
    }
    
}

class Employee: Person {
    
    var occupation: String
    var salary: Double
    var department: String
    var workShift: String
    var hiringDate: String
    var workOvertime: [Int]
    
    init (name: String,
          cpf: String,
          birthday: String,
          address: String,
          email: String,
          phone: String,
          occupation: String,
          salary: Double,
          department: String,
          workShift: String,
          hiringDate: String,
          workOvertime: [Int]) {
        
        self.occupation = occupation
        self.salary = salary
        self.department = department
        self.workShift = workShift
        self.hiringDate = hiringDate
        self.workOvertime = workOvertime
        
        super.init(name: name,
                   cpf: cpf,
                   birthday: birthday,
                   address: address,
                   email: email,
                   phone: phone)
    }
    
    func updateSalary(newSalary: Double) {
        let oldSalary = salary
        
        salary = newSalary
        
        print("O salário do colaborador \(name) passou de R$ \(oldSalary) para R$ \(salary).")
    }
    
    func getEmployeeInfo() -> String {
        return "O colaborador \(name), contratado em \(hiringDate), trabalha no turno da \(workShift) no departamento \(department) como \(occupation) com o salário de R$ \(salary)."
    }
    
    func updateWorkOvertime(minutes: Int) {
        workOvertime.append(minutes)
        
        print("Foram adicionados \(minutes) minutos extras para o colaborador \(name).")
    }
    
    func calcWorkOvertime() -> Int {
        
        var totalMinutes = 0
        
        for minutes in workOvertime {
            totalMinutes = totalMinutes + minutes
        }
        
        return totalMinutes
    }
    
    func cleanWorkOvertime() {
        workOvertime = []
        
        print("As horas extras do colaborador \(name) foram zeradas.")
    }
    
}

class Client: Person {
    
    var creditCardNumber: String
    var points: Int
    var billingAddress: String
    var companyName: String
    var favoriteItems: [String]
    var ordersNumbers: [String]

    init (name: String,
          cpf: String,
          birthday: String,
          address: String,
          email: String,
          phone: String,
          creditCardNumber: String,
          points: Int = 0,
          billingAdress: String,
          companyName: String,
          favoriteItems: [String],
          ordersNumbers: [String]) {
        
        self.creditCardNumber = creditCardNumber
        self.points = points
        self.billingAddress = billingAdress
        self.companyName = companyName
        self.favoriteItems = favoriteItems
        self.ordersNumbers = ordersNumbers
        
        super.init(name: name,
        cpf: cpf,
        birthday: birthday,
        address: address,
        email: email,
        phone: phone)
        
    }
    
    func giveBirthdayCoupon(ifItsBirthday: Bool) -> String {
        
        if ifItsBirthday {
            return "Parabéns \(name) pelo seu aniversário. Use o cupom 20OFF para ganhar 20% de desconto na sua próxima compra"
        }else {
            return "Desculpe \(name), mas hoje não é o seu aniversário. Ganhe 5% de desconto pagando a vista suas compras."
        }
    }
    
    func updatePoints(newPoints: Int) {
        let oldPoints = points
        
        points = newPoints
        
        print("\(name), seus pontos foram atualizados de \(oldPoints) para \(points) pontos.")
    }
    
    func addNewFavoriteItems(items: [String] ) {
        
        for item in items {
            favoriteItems.append(item)
        }
        
        print("Todos os items informados foram adicionados no carrinho.")
    }
    
    func removeItemFromFavoriteItems(item: String) -> String {
        if let index = favoriteItems.firstIndex(of: item) {
            favoriteItems.remove(at: index)
            
            return "Eliminamos o item \(item) da sua lista de favoritos."
        }else {
            return "Não existe nenhum \(item) na sua lista de favoritos."
        }
    }
    
    func updateOrdersNumbers(newOrderNumber: String) {
        ordersNumbers.append(newOrderNumber)
        
        print("O pedido \(newOrderNumber) foi adicionado a lista de pedidos do cliente \(name).")
    }
    
    
    func listLastThreeOrders() -> [String] {
        return ordersNumbers.suffix(3)
    }
    
}

class Product {
    
    var productName: String
    var codeBar: String
    var manufacturingDate: String
    var expirationDate: String
    var price: Double
    var availability: Bool
    
    init (productName: String,
          codeBar: String,
          manufacturingDate: String,
          expirationDate: String,
          price: Double,
          availability: Bool = true) {
        
        self.productName = productName
        self.codeBar = codeBar
        self.manufacturingDate = manufacturingDate
        self.expirationDate = expirationDate
        self.price = price
        self.availability = availability
        
    }
    
    func calcLeftDaysUntilProductDateExpires() {
       
        if expirationDate != "indeterminado" {

            let currentDate = Date()
            let endDate = convertStringToDateFormat(dateAsString: expirationDate)

            let remainingDays = Calendar.current.dateComponents([.day], from: currentDate, to: endDate).day!
            
            print("Restam \(remainingDays) dias até o produto \(productName) vencer.")
        }else {
            print("O produto \(productName) não tem data de validade. Portanto vocé poderá utilizar quando desejar.")
        }
        
    }
    
    func getProductInfo() -> String {
        
        if !availability {
            return "O produto \(productName) não está disponível para venda."
        }
        
        return "O produto \(productName), fabricado em \(manufacturingDate), com data de validade até \(expirationDate), cujo código de barras é \(codeBar) custa R$ \(price) a unidade."
    }
    
    func updatePrice(newPrice: Double) {
        let oldPrice = price
        
        price = newPrice
        
        print("O produto \(productName) custava R$ \(oldPrice) e agora custa R$ \(price).")
    }
    
    func applyDiscount(discount: Int) -> String {
        
        let newPrice: Double = price - (price * (Double(discount) / 100))
        
        return String(format: "%.2f", newPrice)
    }
    
    func setAvailability(newAvailability: Bool) {
        availability = newAvailability
        
        var productStatus: String?
        
        if availability {
            productStatus = "disponível"
        }else {
            productStatus = "indisponível"
        }
        
        if let status = productStatus {
            print("O produto \(productName) está com \(status) no momento.")
        }else {
            print("Desculpe, não foi possível determinar o status do produto no momento.")
        }
    }
    
}

// ******************* PERSON *******************

print("\n------------------------------\n")
print("******* TESTE CLASSE PESSOA *******")
print("\n--- JOÃ0 ---\n")

// JOÃO
let joao = Person(name: "João", cpf: "45347456888", birthday: "1996-03-04", address: "Rua 1, 34", email: "joao@email.com", phone: "999999999")

print("TODAS AS INFORMAÇŌES: \(joao.getAllInfo())")
print("CONTATO: \(joao.getContactInfo())")
print("Hoje é o aniversário do \(joao.name)? ==> \(joao.ifItsBirthday())")
print("\(joao.name) tem \(joao.calcAge()) anos.")
print("O DDD de \(joao.name) é da cidade de \(joao.getPhoneCityCode())")

// ******************* EMPLOYEE *******************

print("\n------------------------------\n")
print("******* TESTE CLASSE COLABORADOR *******")
print("\n--- MANOEL ---\n")

let manoel = Employee(name: "Manoel", cpf: "98563782920", birthday: "1983-12-05", address: "Avenida 4, 122", email: "manoel@email.com", phone: "13994738e93", occupation: "Gerente", salary: 9456.00, department: "Administração", workShift: "Manhã", hiringDate: "2006-04-15", workOvertime: [])

print(manoel.getEmployeeInfo())
manoel.updateSalary(newSalary: 10456.00)
manoel.updateWorkOvertime(minutes: 120)
print("O total de minutos extras que \(manoel.name) tem é de \(manoel.calcWorkOvertime()) minutos.")
manoel.cleanWorkOvertime()
print("\(manoel.name) tem \(manoel.calcAge()) anos.")



// ******************* CLIENT *******************

print("\n------------------------------\n")
print("******* TESTE CLASSE CLIENTE *******")
print("\n--- JOSEFA ---\n")

let josefa = Client(name: "Josefa", cpf: "89573839405", birthday: "1980-07-28", address: "Rua cinco, 178", email: "josefa@email.com", phone: "119405837484", creditCardNumber: "47584920203494745", points: 0, billingAdress: "Rua cinco, 178", companyName: "IO Solutions", favoriteItems: [], ordersNumbers: ["OD2020", "OD3456"])

josefa.updatePoints(newPoints: 100)
josefa.addNewFavoriteItems(items: ["Leite", "Manteiga", "Azeite"])
josefa.removeItemFromFavoriteItems(item: "Tomate")
josefa.removeItemFromFavoriteItems(item: "Leite")
josefa.updateOrdersNumbers(newOrderNumber: "OD5050")
print("Os números dos últimos três pedidos do cliente \(josefa.name) são: \(josefa.listLastThreeOrders())")
print("\(josefa.giveBirthdayCoupon(ifItsBirthday: josefa.ifItsBirthday()))")


// ******************* PRODUCT *******************

print("\n------------------------------\n")
print("******* TESTE CLASSE PRODUTO *******")
print("\n--- AZEITE DE PORTUGAL ---\n")

let azeiteDePortugal = Product(productName: "Azeite de oliva de Portugal", codeBar: "78977790200", manufacturingDate: "2020-04-03", expirationDate: "2021-04-03", price: 20.57)

print(azeiteDePortugal.getProductInfo())
azeiteDePortugal.calcLeftDaysUntilProductDateExpires()
azeiteDePortugal.updatePrice(newPrice: 19.99)
print("O novo preco do \(azeiteDePortugal.productName) com desconto é de R$ \(azeiteDePortugal.applyDiscount(discount: 20)).")
azeiteDePortugal.setAvailability(newAvailability: false)



