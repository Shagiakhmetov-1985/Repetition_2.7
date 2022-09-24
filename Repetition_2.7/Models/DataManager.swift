//
//  DataManager.swift
//  Repetition_2.7
//
//  Created by Marat Shagiakhmetov on 21.09.2022.
//

class DataManager {
    static let shared = DataManager()
    
    let name = ["Ivan", "Petya", "Alexey", "Victor", "Marat", "Kirill", "Vlad",
                "Anton"]
    
    let surname = ["Ivanov", "Pertov", "Alexeev", "Victorov", "Shagiakhmetov",
                "Cook", "Vasilev", "Puhov"]
    
    let email = ["ivanov@gmail.com", "petrov@gmail.com", "alexeev@gmail.com",
                "victorov@gmail.com", "shagiakhmetov@gmail.com", "cook@gmail.com",
                "vasilev@gmail.com", "puhov@gmail.com"]
    
    let phone = ["+78941234567", "+79037893478", "+79378903487", "+79234657812",
                "+79046782190", "+79038903461", "+79035106732", "+79067823490"]
    
    private init() {}
}
