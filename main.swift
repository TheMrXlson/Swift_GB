//
//  Lession_7
//
//  Created by Egor Efimenko on 6.11.2021.
//

import Foundation

enum DictionaryError: Error {
    case nameError
}

final class Dictionary {
    
    private let students: [String]
    private let mark: [Int]
    
    init(students: [String], mark: [Int]) {
        self.students = students
        self.mark = mark
    }
}

extension Dictionary {
    
    func whatTheMark (_ name: String) throws -> String {
        
        let index = students.firstIndex(of: name)
        guard index != nil else { throw DictionaryError.nameError }
        let result = mark [index!]
        return ("Оценка \(name) - \(result)")
        
    }
}

let children = ["Ivan", "Anatoly", "Petr", "Vanya", "Lenya", "Egor", "Vadim", "Nikolay", "Alexey", "Vova", "Roma", "Vanya", "Sasha"]
let mark = [5, 2, 4, 2, 4, 5, 3, 2, 5, 3, 5, 3, 5]

let classOneA = Dictionary(students: children, mark: mark)

do {
    let result = try classOneA.whatTheMark("Egor")
    print(result)
} catch let error {
    print(error.localizedDescription)
}

