//
//  ContentView.swift
//  LEsson 8
//
//  Created by Marcello Lima on 02/10/21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedViewIndex: Int?
    @State var action: Int?
    private var views: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    //@State var view: String = "View"
    var body: some View {
        
        NavigationView {
            VStack {
            
                Picker("", selection: $selectedViewIndex) {
                    Text("<Selecione a visão>").tag(nil as Int?)
                    ForEach(views, id: \.self) { view in
                        Text(String(view)).tag(view as Int?)
                    }
                }.pickerStyle(WheelPickerStyle())
                .padding(20)
                
                Button {
                    self.action = selectedViewIndex
                } label: {
                    selectedViewIndex != nil ? Text("Go to View \(selectedViewIndex!)!") : Text("Select a View...")
                    
                    NavigationLink(
                        destination: ViewN(selectedViewIndex: $selectedViewIndex)
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true),
                        tag: selectedViewIndex ?? 0,
                        selection: $action,
                        label: {
                            Text("")
                        }
                    )
                
                }.accentColor(.blue)
                
            }
            .navigationBarHidden(true)
            
            
        }
          
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
