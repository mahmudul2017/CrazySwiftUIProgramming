//
//  CustomProtocol.swift
//  CrazySwiftUIProgramming
//
//  Created by Mahmudul on 18/10/21.
//

import SwiftUI

struct CustomProtocol: View {
    // for JSON Array
    @State private var toDoData: [ToDoData]?
    
    // for JSON Object
    // @State private var toDoData: ToDoData?
    
    var body: some View {
        Text(toDoData?[0].title ?? "No Value")
            .foregroundColor(.blue)
            .onAppear(perform: getToDoData)
    }
    
    private func getToDoData() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) {data, response, error in
            guard let data = data else {
                return
            }
            
            // for JSON Object
//            if let decodeData = try? JSONDecoder().decode(ToDoData.self, from: data) {
//                DispatchQueue.main.async {
//                    self.toDoData = decodeData
//                }
//            }
            
            // for JSON Array
            if let decodeData = try? JSONDecoder().decode([ToDoData].self, from: data) {
                DispatchQueue.main.async {
                    self.toDoData = decodeData
                }
            }
        }.resume()
    }
}

struct ToDoResponse : Codable {
    var todo : [ToDoData]
}

struct ToDoData : Codable {
    var id: Int
    var userId: Int
    var title: String?
    var completed: Bool
}

//protocol CarColor {
    //var color : String { get set }
    
    //func drive()
//}

struct CustomProtocol_Previews: PreviewProvider {
    static var previews: some View {
        CustomProtocol()
    }
}
