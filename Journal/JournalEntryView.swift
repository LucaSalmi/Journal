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
    @Environment(\.presentationMode) var presentationMode
    @State var content: String = ""
    
    var body: some View {
        
        VStack{
            
            TextEditor(text: $content)
                .onTapGesture {
                    clearText()
                }
            
            //  if let entry = entry{
            //
            //  Text(entry.content)
            //  }else {
            //
            //  Text("Write something....")
            //  }
            
        }.navigationBarItems(trailing: Button(action: {
            saveEntry()
            presentationMode.wrappedValue.dismiss()
        }, label: { Text("Save") }))
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
    
    func clearText(){
        
        if entry == nil{
            content = ""
        }
        
    }
    
    func saveEntry(){
        
        if let entry = entry{
            
            journal.update(entry: entry, with: content)
            
            
        }else{
            
            let newEntry = JournalEntry(content: content)
            journal.entries.append(newEntry)
        }
    }
}

//struct JournalEntryView_Previews: PreviewProvider {
//  static var previews: some View {
//          JournalEntryView()
//      }
//  }
