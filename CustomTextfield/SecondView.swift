//
//  SecondView.swift
//  CustomTextfield
//
//  Created by Sanjeev Bharti on 11/5/23.
//

import SwiftUI

struct SecondView: View {
    
    @State private var employeeName = ""
    @State private var employeeID = ""
    @State private var employeeDept = ""
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20.0) {
            Text("Custom Textfield with `body` font").font(.title)
            BorderedTextFieldView(text: $employeeID, placeHolder: "Enter Id")
            BorderedTextFieldView(text: $employeeID, placeHolder: "Enter Password", font: .body, isSecure: true)
        }
        .padding()
    }
}

#Preview {
    SecondView()
}
