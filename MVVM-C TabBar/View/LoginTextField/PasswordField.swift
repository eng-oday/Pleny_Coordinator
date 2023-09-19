//
//  PasswordField.swift
//  MVVM-C TabBar
//
//  Created by user on 19/09/2023.
//

import SwiftUI

struct PasswordField: View {
    @Binding var password:String
    @State var isSecure:Bool = true
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            
            Text("Password")
                .font(.system(size: 15, weight: .bold))
            
            HStack {
                Group {
                    if isSecure {
                        SecureField("Enter your password.", text: $password)
                    } else {
                        TextField("Enter your password.", text: $password)
                    }
                }
                .font(.system(size: 17, weight: .regular))
                .padding(.horizontal , 14)
                .padding(.vertical ,10)
                .cornerRadius(8)
                
                Button {
                    isSecure.toggle()
                } label: {
                    Image("eye")
                }
                .padding(.trailing , 14)
                .frame(width: 16,height: 16)
            }
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                    .foregroundColor(Color(red: 0.81, green: 0.83, blue: 0.89))
            } // : BORDER
            
            
        } // :VSTACK
        .padding(.horizontal , 16)
    }
}
