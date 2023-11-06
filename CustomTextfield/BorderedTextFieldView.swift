//
//  BorderedTextFieldView.swift
//  CustomTextfield
//
//  Created by Sanjeev Bharti on 11/6/23.
//

import SwiftUI

struct BorderedTextFieldView: View {
    @Binding var text: String
    let placeHolder: String
    let font: Font
    
    @FocusState private var isFocused: Bool
    
    
    init(text: Binding<String>, placeHolder: String = "", font: Font = .body) {
        _text = text
        self.placeHolder = placeHolder
        self.font = font
    }
    
    var body: some View {
        textFieldView
            .animation(.smooth, value: isFocused)
    }
    
    private var textFieldView: some View {
        VStack(alignment: .leading) {
            TextField(placeHolder, text: $text)
                .font(font)
                .focused($isFocused)
        }
        .padding()
        .overlay(content: {
            oulineView
        })
    }
    
    private var oulineView: some View {
        ZStack(alignment: .leading, content: {
            RoundedRectangle(cornerRadius: 8.0)
                .stroke((isFocused || text.count > 0) ? .black : .gray, lineWidth: (isFocused || text.count > 0) ? 1.5 : 0.5)
            tagView
        })
    }
    
    private var tagView: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(placeHolder)
                    .font(.footnote)
                    .fontWeight(.medium)
                    .padding(.horizontal, 3.0)
                    .background(.white)
                    .offset(y: text.count > 0 ? -8.0 : 0.0)
                    .opacity(text.count > 0 ? 1.0 : 0.0)
                    .animation(.bouncy, value: text.count > 0)
            }
            .padding(.horizontal, 10.0)
            Spacer()
        }
    }
}

#Preview {
    BorderedTextFieldView(text: .constant(""))
        .padding()
}
