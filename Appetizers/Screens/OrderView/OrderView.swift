//
//  OrderView.swift
//  Appetizers
//
//  Created by Jack Cardinal on 3/15/22.
//

import SwiftUI


struct OrderView: View {
    
   // @StateObject var viewModel = OrderViewModel()
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                        
                    }
                    .listStyle(.plain)
                    
                    Button {
                        
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 30)
                    
                }
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You don't have any orders yet.")
                }
            }
            .navigationTitle("🧾 Orders")
        }
        
//
//        .alert(item: $viewModel.alertItem) { alertItem in
//            Alert(title: alertItem.title,
//                  message: alertItem.message,
//                  dismissButton: alertItem.dismissButton)
//        }
        
        
    }
    
}

struct OrderView_Previews: PreviewProvider {
        
    static var previews: some View {
        OrderView().environmentObject(Order())
    }
}
