//
//  Persons.swift
//  Repetition_2.7
//
//  Created by Marat Shagiakhmetov on 21.09.2022.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
        var dataManager: [Person] = []
        
        let names = DataManager.shared.name.shuffled()
        let surnames = DataManager.shared.surname.shuffled()
        let emails = DataManager.shared.email.shuffled()
        let phones = DataManager.shared.phone.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phones.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            
            dataManager.append(person)
        }
        
        return dataManager
    }
}

enum Image: String {
    case email = "tray"
    case phone = "phone"
}
