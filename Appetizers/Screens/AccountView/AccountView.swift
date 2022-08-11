//
//  AccountView.swift
//  Appetizers
//
//  Created by Jack Cardinal on 3/15/22.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    @FocusState var focusedTextField: FormTextField?
    
    enum FormTextField {
        case firstName, lastName, email
    }

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    
                    TextField("First Name", text: $viewModel.user.firstName)
                        .focused($focusedTextField, equals: .firstName)
                        .onSubmit { focusedTextField = .lastName }
                        .submitLabel(.next)
                    
                    TextField("First Name", text: $viewModel.user.lastName)
                        .focused($focusedTextField, equals: .lastName)
                        .onSubmit { focusedTextField = .email }
                        .submitLabel(.next)

                    TextField("Email", text: $viewModel.user.email)
                        .focused($focusedTextField, equals: .email)
                        .onSubmit { focusedTextField = nil }
                        .submitLabel(.continue)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.user.birthday, in: Date().oneHundredTenYearsAgo...Date().eighteenYearsAgo,
                        displayedComponents: .date)
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save")
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(.white)
                    .background(Color.red)
                }
                
                Section("Requests") {
                    Toggle("Extra Napkins", isOn: $viewModel.user.napkins)
                    Toggle("Refills", isOn: $viewModel.user.refills)
                }
                .toggleStyle(SwitchToggleStyle(tint: Color.brandPrimary))
            }
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Dismiss") { focusedTextField = nil }
                }
            }
            .navigationTitle("👤 Account")

        }
        .onAppear {
            viewModel.retrieveData()
        }
        
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }

        
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
