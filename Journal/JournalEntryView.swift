//
//  JournalEntryView.swift
//  Journal
//
//  Created by Luca Salmi on 2022-02-25.
//

import SwiftUI

struct JournalEntryView: View {
    
    var entry: JournalEntry? = nil
    
    
    var body: some View {
        
        if let entry = entry{
            
            Text(entry.content)
            
        }else {
            
            Text("Write something....")
            
        }
    }
}

struct JournalEntryView_Previews: PreviewProvider {
    static var previews: some View {
        JournalEntryView()
    }
}
