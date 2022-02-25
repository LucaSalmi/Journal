//
//  JournalEntryView.swift
//  Journal
//
//  Created by Luca Salmi on 2022-02-25.
//

import SwiftUI

struct JournalEntryView: View {
    
    var entry: JournalEntry? = nil
    let defaultText = "Today I...."
    
    @EnvironmentObject var journal: Journal
    @State var content: String = ""
    
    var body: some View {
        
        VStack{
            
            TextEditor(text: $content)
            
            //  if let entry = entry{
            //
            //  Text(entry.content)
            //  }else {
            //
            //  Text("Write something....")
            //  }
            
        }.navigationBarItems(trailing: Button(action: { saveEntry() }, label: { Text("Save") }))
            .onAppear(perform: setContent)
    }
    
    
    func setContent(){
        
        // guard let entry = entry else {return}
        // content = entry.content
        
        if let entry = entry{
            
            content = entry.content
        }else {
            content = defaultText
        }
    }
    
    func saveEntry(){
        
        let newEntry = JournalEntry(content: content)
        journal.entries.append(newEntry)
        print("saved")
    }
}

//struct JournalEntryView_Previews: PreviewProvider {
//  static var previews: some View {
//          JournalEntryView()
//      }
//  }
