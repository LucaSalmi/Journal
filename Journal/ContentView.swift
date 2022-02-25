//
//  ContentView.swift
//  Journal
//
//  Created by Luca Salmi on 2022-02-25.
//

import SwiftUI

struct ContentView: View {
    
    @State var entries = [JournalEntry]()
    
    var body: some View {
        
        NavigationView{
                
        List(){
            
            ForEach(entries){entry in
                Text(entry.content)
            }
        }.onAppear(perform: checkIfEmpty)
            
                .navigationTitle("Journal")
                .navigationBarItems(trailing: NavigationLink(destination: EmptyView(), label: {Image(systemName: "plus.circle")}))
    }
        
}
    
    func checkIfEmpty(){
        
        if entries.count < 1{
            addMOckData()
        }else {
            return
        }
        
    }
    
    func addMOckData(){
        
        entries.append(JournalEntry(content: "Dag 1"))
        entries.append(JournalEntry(content: "Dag 2"))
        entries.append(JournalEntry(content: "Dag 3"))
        entries.append(JournalEntry(content: "Dag 4"))
        entries.append(JournalEntry(content: "Dag 5"))
        entries.append(JournalEntry(content: "Dag 6"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
