//
//  RootView.swift
//  SideMenu-SwiftUI
//
//  Created by Arvind on 23/11/20.
//

import SwiftUI

struct RootView: View {
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                VStack(spacing: 10){
                    Image("nike-shoes-one")
                        .resizable()
                        .frame(height: 200)
                    
                    Text("Nike Air Zoom Tempo Next FlyEase")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("Price - ₹17,595")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.getBGColor())
                .cornerRadius(15)
                .padding()
                
                Button(action: {
                    print("Arvind")
                }) {
                    Image("bag-icon")
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.getBagBGColor())
                        .cornerRadius(15)
                }.padding(.trailing)
            }

            List(getProductList()) { productObj in
                ProductRow(product: productObj)
            }
        }
    }
}