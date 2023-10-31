//
//  ToDoListView.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 30/10/23.
//

import SwiftUI

class ToDoList : ObservableObject {
   @Published var items  : [ToDoListItem] = []
}
struct ToDoListItem : Identifiable {
    var id = UUID()
    var action : String
}
struct ToDoListView: View {

    @ObservedObject var viewModel : ToDoList = ToDoList()
    var body: some View {
        NavigationView {
            VStack{
                
                List(viewModel.items) {item in
                    Text(item.action);
                }.refreshable {
                }
            }.navigationTitle("To Do List")
                .navigationBarItems(trailing: Button(action: {

                    self.viewModel.items = [
                        ToDoListItem(action: "Prepare for interview"),
                    ToDoListItem(action: "Learn SwiftUI"),
                    ToDoListItem(action: "Eat Food")]
                }, label: {
                    Text("Refresh")
                }))
        }
    }
}

#Preview {
    ToDoListView()
}
