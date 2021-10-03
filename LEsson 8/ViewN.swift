//
//  View.swift
//  LEsson 8
//
//  Created by Marcello Lima on 02/10/21.
//

import SwiftUI

struct ViewN: View {
    @Binding var selectedViewIndex: Int?
    
    var body: some View {
        Text("I am view \(selectedViewIndex ?? 0)")
        Button {
            selectedViewIndex = nil
        } label: {
            Text("Navigate back!")
        }

        
    }
}
