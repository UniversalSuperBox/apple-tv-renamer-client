//
//  TextForm.swift
//  Apple TV Renamer Client
//
//  Created by Dalton Durst on 8/4/22.
//

import SwiftUI

struct TextForm: View {
    @State private var enteredText: String = ""
    var body: some View {
        ZStack {
            
            HStack {
                VStack {
                    Text("Title Text")
                        .font(.headline)
                        .padding(.top, 50.0)
                        .accessibilityIdentifier("FormPageTitle")
                    Image(systemName: "building.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all, 200.0)
                }
                VStack {
                    Spacer()
                    
                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $enteredText)
                    Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.buttonStyle(CardButtonStyle())
                    Spacer()
                }.focusable()
            }
        }
    }
}

struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        TextForm()
    }
}
