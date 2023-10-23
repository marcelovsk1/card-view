//
//  PersonCardView.swift
//  CardView
//
//  Created by Marcelo Amaral Alves on 2023-10-22.
//

import SwiftUI

struct PersonCardView: View {
    let person: Person
    
    var body: some View {
        VStack{
            Image(person.headerImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 80)
                .clipped()
            
            Image(person.profileImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 80)
                .clipShape(Circle())
                .offset(y: 40)
                .padding(.horizontal)
            
            Text("test")
        }
        .overlay(alignment: .topTrailing) {
            Button {
                // ?
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.yellow)
                    .padding(6)
            }
        }
        
        VStack {
            Button {
                // ?
            } label: {
                Text("Follow")
                padding(.horizontal)
            }
        }
    }
}

#Preview {
    PersonCardView(person: person1)
        .previewLayout(.sizeThatFits)
}
