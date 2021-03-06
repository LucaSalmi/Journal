//
//  Journal.swift
//  Journal
//
//  Created by Luca Salmi on 2022-02-25.
//

import Foundation

class Journal : ObservableObject{
    
    @Published var entries = [JournalEntry]()
    
    
    init() {
        
        if entries.count < 1{
            addMOckData()
        }else {
            return
        }
    }
    
    func update(entry: JournalEntry, with content: String?){
        
        if let index = entries.firstIndex(of: entry), let newContent = content{
            
            entries[index].content = newContent
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
