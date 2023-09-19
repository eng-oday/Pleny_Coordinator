//
//  UserNameField.swift
//  MVVM-C TabBar
//
//  Created by user on 19/09/2023.
//

import SwiftUI

struct UserNameField: View {
    @Binding var userName:String
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            
            Text("Username")
                .font(.system(size: 15, weight: .bold))
            
            TextField("Enter your username", text: $userName)
                .font(.system(size: 17, weight: .regular))
                .padding(.horizontal , 14)
                .padding(.vertical ,10)
                .cornerRadius(8)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1)
                        .foregroundColor(Color(red: 0.81, green: 0.83, blue: 0.89))
                } // : BORDER
            
        } // :VSTACK
        .padding(.horizontal , 16)
    }
}
