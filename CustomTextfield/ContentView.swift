//
//  ContentView.swift
//  CustomTextfield
//
//  Created by Sanjeev Bharti on 11/5/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var employeeName = ""
    @State private var employeeID = ""
    @State private var employeeDept = ""
    
    var body: some View {
        
        NavigationView(content: {
            VStack(alignment: .leading, spacing: 20.0) {
               
                Text("`title` font").font(.title)
                BorderedTextFieldView(text: $employeeName, placeHolder: "Enter name", font: .title)
                
                    Divider()
                
                Text("`body` font")
                BorderedTextFieldView(text: $employeeID, placeHolder: "Enter Id")
                
                Divider()
                
                Text("`footnote` font").font(.footnote)
                BorderedTextFieldView(text: $employeeDept, placeHolder: "Enter Department", font: .footnote)
                Spacer()
                
                Button(action: {}, label: {
                    Text("Submit")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 8.0))
                })
            }
            .padding()
            .navigationTitle("Textfield with")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.visible, for: .navigationBar)
        })
        
    }
}

#Preview {
    ContentView()
}
