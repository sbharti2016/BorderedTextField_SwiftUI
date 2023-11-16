//
//  ThirdView.swift
//  CustomTextfield
//
//  Created by Sanjeev Bharti on 11/5/23.
//

import SwiftUI

struct ThirdView: View {
    
    @State private var employeeName = ""
    @State private var employeeID = ""
    @State private var employeeDept = ""
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20.0) {
            Text("Custom Textfield with `footnote` font").font(.title)
            BorderedTextFieldView(text: $employeeDept, placeHolder: "Enter Name", font: .footnote)
            BorderedTextFieldView(text: $employeeDept, placeHolder: "Enter Password", font: .footnote, isSecure: true)
            
        }
        .padding()
    }
}

#Preview {
    ThirdView()
}
