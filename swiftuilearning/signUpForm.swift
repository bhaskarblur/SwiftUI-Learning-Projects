//
//  signUpForm.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 03/11/23.
//

import SwiftUI

class FormViewModel : ObservableObject {
    @Published var firstName = ""
    @Published var secondName = ""
    @Published var password = ""
    @Published var passwordAgain = ""
    @Published var email = ""
    @Published var validated = false
 
}
struct signUpForm: View {
    var body: some View {
        @ObservedObject var formData : FormViewModel = FormViewModel()
        
        NavigationView(content: {
            VStack {
            
                Form {
                    Section {
                        TextField("Enter first name", text: $formData.firstName)
                            .padding(.vertical, 8)
                        TextField("Enter second name", text: $formData.secondName)
                            .padding(.vertical, 8)
                    }
  
                    Section(footer: Text("Your password must be 8 characters long.")) {
                        
                        SecureField("Enter password", text: $formData.password)
                            .padding(.vertical, 8)
                        SecureField("Confirm password", text: $formData.passwordAgain)
                            .padding(.vertical, 8)
                        
                    }
             
                    Section(header: Text("Email Address")) {
                        TextField("Email address", text: $formData.email)
                            .padding(.vertical, 8)
                    }
                    
                }
                
                Divider()
                Button(action: {
                    formData.validated = true
                    
                }, label: {
                    Text("Continue").frame(width: 280, height: 54, alignment: .center)
                        .foregroundStyle(.white)
                }).background(.blue).cornerRadius(8).padding()
                    . alert("Account created", isPresented: $formData.validated , actions: {
                        
                    }, message: {
                        
                    })
                
                
            }.navigationTitle("Create an account")
        })
    }
}

#Preview {
    signUpForm()
}
