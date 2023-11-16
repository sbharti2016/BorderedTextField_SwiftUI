//
//  FirstView.swift
//  CustomTextfield
//
//  Created by Sanjeev Bharti on 11/5/23.
//

import SwiftUI

struct FirstView: View {
    
    @State private var employeeName = ""
    @State private var employeeID = ""
    @State private var employeeDept = ""
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20.0) {
            Text("Custom Textfield with `title` font").font(.title)
            BorderedTextFieldView(text: $employeeName, placeHolder: "Enter Name", font: .title)
            BorderedTextFieldView(text: $employeeName, placeHolder: "Enter Password", font: .title, isSecure: true)
        }
        .padding()
    }
}

#Preview {
    FirstView()
}
