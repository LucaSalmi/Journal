//
//  ContentView.swift
//  Journal
//
//  Created by Luca Salmi on 2022-02-25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var journal = Journal()
    
    var body: some View {
        
        NavigationView{
            
            List(){
                
                ForEach(journal.entries){entry in
                    NavigationLink(destination: JournalEntryView(entry: entry)) {
                        Text(entry.content)
                    }
                }
            }
            
            .navigationTitle("Journal")
            .navigationBarItems(trailing: NavigationLink(destination: JournalEntryView(), label: {Image(systemName: "plus.circle")}))
            
        }.environmentObject(journal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
